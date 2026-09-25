use {mollusk_svm::Mollusk, solana_instruction::Instruction, solana_pubkey::Pubkey};

const PROGRAM_ID: Pubkey = Pubkey::new_from_array([42; 32]);

#[test]
fn program_result_abi_regression() {
    let program_path = std::env::var("PROGRAM_PATH")
        .unwrap_or_else(|_| "target/deploy/program_result_abi_minimal".to_owned());
    let mollusk = Mollusk::new(&PROGRAM_ID, &program_path);
    let instruction = Instruction::new_with_bytes(PROGRAM_ID, &[0, 1, 0, 1, 1, 1, 0], vec![]);
    let result = mollusk.process_instruction(&instruction, &[]);

    assert!(result.program_result.is_ok(), "{:?}", result.program_result);
    println!(
        "program_result_abi_regression={}",
        result.compute_units_consumed
    );
}

// Check the minimal program against every dispatcher value and validation error.
#[test]
fn program_result_semantics() {
    use solana_instruction::error::InstructionError;

    let path = std::env::var("PROGRAM_PATH")
        .unwrap_or_else(|_| "target/deploy/program_result_abi_minimal".to_owned());
    let mollusk = Mollusk::new(&PROGRAM_ID, &path);
    let check = |data: &[u8], expected: Result<(), InstructionError>| {
        let instruction = Instruction::new_with_bytes(PROGRAM_ID, data, vec![]);
        let result = mollusk.process_instruction(&instruction, &[]);
        assert_eq!(result.raw_result, expected, "input: {data:?}");
    };

    check(&[], Err(InstructionError::Custom(12)));
    for discriminator in 1..=255 {
        let code = if discriminator <= 25 {
            discriminator as u32
        } else {
            12
        };
        check(&[discriminator], Err(InstructionError::Custom(code)));
    }
    let success = [0, 1, 0, 1, 1, 1, 0];
    for len in 1..success.len() {
        check(&success[..len], Err(InstructionError::Custom(12)));
    }
    check(&success, Ok(()));
    check(&[0, 0, 0, 1, 1, 1, 0], Ok(()));
    for (offset, value, expected) in [
        (1, 2, InstructionError::Custom(12)),
        (2, 1, InstructionError::Custom(6)),
        (3, 0, InstructionError::Custom(0)),
        (4, 0, InstructionError::IncorrectProgramId),
        (5, 0, InstructionError::InvalidAccountData),
        (6, 1, InstructionError::MissingRequiredSignature),
    ] {
        let mut data = success;
        data[offset] = value;
        check(&data, Err(expected));
    }
    println!("program_result_semantics: 270 inputs passed");
}

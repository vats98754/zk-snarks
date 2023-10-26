
# zk-SNARK Circuits

A compilation of projects showcasing the power and versatility of zk-SNARKs in various applications.

## Table of Contents
- [Private Transactions](#private-transactions)
- [Private Voting System](#private-voting-system)
- [Zero-Knowledge File Storage](#zero-knowledge-file-storage)
- [Identity Verification](#identity-verification)
- [Elliptic Curve Scalar Multiplication](#elliptic-curve-scalar-multiplication)
- [Contributing](#contributing)
- [License](#license)

## Private Transactions

Enables users to conduct transactions on a public ledger while keeping the sender, receiver, and transaction amount private.

- `private_transaction.circom`: Circuit definition for private transactions.
- `test_private_transaction.circom`: Test file for private transactions.

## Private Voting System

Allows users to cast their votes without revealing their choices, ensuring a secret ballot and preventing voter fraud.

- `zk_voting.circom`: Circuit definition for private voting.
- `test_zk_voting.circom`: Test file for private voting.

## Zero-Knowledge File Storage

Prove possession of a particular file or part of a file without revealing its content or name.

- `zk_file_storage.circom`: Circuit definition for zero-knowledge file storage.
- `test_zk_file_storage.circom`: Test file for zero-knowledge file storage.

## Identity Verification

Users can prove certain attributes about themselves without revealing exact details.

- `zk_identity_verification.circom`: Circuit definition for identity verification.
- `test_zk_identity_verification.circom`: Test file for identity verification.

## Elliptic Curve Scalar Multiplication

Verify scalar multiplication operations on elliptic curves without revealing the scalar.

- `ec_scalar_mul.circom`: Circuit definition for elliptic curve scalar multiplication.
- `test_ec_scalar_mul.circom`: Test file for elliptic curve scalar multiplication.

## Contributing

Contributions are welcome! Please read the [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines.

## License

This project is licensed under the MIT License. See [LICENSE.md](LICENSE.md) for more details.

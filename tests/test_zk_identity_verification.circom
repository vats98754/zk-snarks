include "zk_identity_verification.circom";

component main = ZkIdentityVerification();

// Dummy test for valid attribute hashes
main.ageHash <== 0xabcdef123456;  // Some hashed value for age
main.nationalityHash <== 0x7890abcd1234;  // Some hashed value for nationality
main.validAgeHash <== 0xabcdef123456;  // Matching hash for age
main.validNationalityHash <== 0x7890abcd1234;  // Matching hash for nationality

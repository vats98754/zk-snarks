
include "../circuits/zk_identity_verification.circom";

component main = ZkIdentityVerification();

main.ageHash <== 0xabcdef123456;
main.nationalityHash <== 0x7890abcd1234;
main.validAgeHash <== 0xabcdef123456;
main.validNationalityHash <== 0x7890abcd1234;

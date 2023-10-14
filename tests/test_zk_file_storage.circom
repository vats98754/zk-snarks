include "zk_file_storage.circom";

component main = ZkFileStorage();

// Dummy test for a valid file hash
main.fileHash <== 0x12345678abcdef;  // Some hashed value
main.validHash <== 0x12345678abcdef;  // Matching hash

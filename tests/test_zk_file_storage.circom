
include "../circuits/zk_file_storage.circom";

component main = ZkFileStorage();

main.fileHash <== 0x12345678abcdef;
main.validHash <== 0x12345678abcdef;

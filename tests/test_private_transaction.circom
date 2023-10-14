include "private_transaction.circom";

component main = PrivateTransaction();

// Test the circuit with specific values
main.senderBefore <== 100;
main.receiverBefore <== 50;
main.amount <== 20;
main.senderAfter === 80;  // This should hold true, as 100 - 20 = 80
main.receiverAfter === 70;  // This should hold true, as 50 + 20 = 70

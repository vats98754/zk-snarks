template PrivateTransaction() {
    signal private input senderBefore;
    signal private input receiverBefore;
    signal private input amount;
    signal private input senderAfter;
    signal private input receiverAfter;

    // Constraints for the transaction
    // senderBefore - amount = senderAfter
    // receiverBefore + amount = receiverAfter

    signal temp1;
    signal temp2;

    temp1 <== senderBefore - amount;
    temp2 <== receiverBefore + amount;

    temp1 === senderAfter;
    temp2 === receiverAfter;
}

component main = PrivateTransaction();

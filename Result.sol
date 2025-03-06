// License 
// SPDX-License-Identifier: LGPL-3.0-only

// Solidity version
pragma solidity 0.8.24;

//Contract 
contract Result {
    uint256 public result;
    address public admin;
    uint256 public fee;

    constructor(address admin_) {
        admin = admin_;
        fee = 5;
    }

    function setResult(uint256 num_) external {
        result = num_;
    }

    function setFee(uint256 newFee_) external {
        if(tx.origin != admin) revert();
        fee = newFee_;
    }
}
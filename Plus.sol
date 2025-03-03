// License 
// SPDX-License-Identifier: LGPL-3.0-only

// Solidity version
pragma solidity 0.8.24;

import "./Interfaces/Iresult.sol";

//Contract 
contract Plus {
        address result; //Ox7D40eF83c9dEfCb
        address admin;
        uint256 public fee;
        
        //Object: Interface + address 
        constructor (address result_, address admin_){
            result= result_;
            admin = admin_;
            fee = 5;
        }

    function addition(uint256 num1_, uint256 num2_) external {

       uint256 result_ = num1_ + num2_;
       Iresult(result).setResult(result_);
    }

    function setFee(uint256 newFee_) external {
        if(msg.sender != admin) revert();
        fee = newFee_;
    }

}
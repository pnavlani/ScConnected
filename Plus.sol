// License 
// SPDX-License-Identifier: LGPL-3.0-only

// Solidity version
pragma solidity 0.8.24;

import "./Interfaces/Iresult.sol";

//Contract 
contract Plus {
        address result; //Ox7D40eF83c9dEfCb
        
        //Object: Interface + address 
        constructor (address result_){
            result= result_;
        }

    function addition(uint256 num1_, uint256 num2_) external {
       uint256 result_ = num1_ + num2_;
       Iresult(result).setResult(result_);
}
}
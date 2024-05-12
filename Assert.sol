// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Module1assessment {
    uint256 public Totalamount;

    function setAmount(uint256 _Newbalance) external {
        
        require(_Newbalance != 0, "Input value must be non-zero");

       
        assert(_Newbalance != Totalamount);

        
        Totalamount = _Newbalance;

        if (_Newbalance > 100) {
            revert("Value exceeds limit");
        }
    }
}

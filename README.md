# Function and Errors
Module 1 assessment covers require, assert, and revert of solidity in Metacrafter's avalanche module.

# Description
require - When creating solidity contracts that are trustworthy and secure, the must function is essential. You may improve the overall logic integrity of your contract and validate inputs and enforce conditions by using the require function effectively. This post will provide you important tips on how to make the most of the require function in your Solidity contracts to maintain stability and reduce any potential vulnerabilities.

assert - The contract code is examined for internal flaws using the assert function. It accepts a boolean expression as a parameter, and if the expression evaluates to false, it throws an exception and reverses the transaction. The assert method should only be used, in contrast to the require function, to look for internal faults in the contract code that shouldn't happen.

revert - Similar to the require function, the revert function is used to reverse a transaction in the event that a condition is not satisfied. But the revert function gives you more control over how errors are handled and lets you give a reason string for the transaction's reversal.

# Getting Started 
To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., Assert.sol). Copy and paste the following code into the file:

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
# Author
Dexter Ivan A. Pangilinan 3.1 BSIT

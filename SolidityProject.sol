// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

//MARK VINCENT PAGALA

contract FirstToken {

    string public tokenNme = "SKANGKY";
    string public tokenAbbr = "SKNGKY";
    uint public tokenttlsply = 0;

    mapping(address => uint) public balance;


    function minting (address _add, uint _val) public{
        tokenttlsply += _val;
        balance[_add]+= _val;
    }


     function burning (address _add, uint _val) public{
        if(balance[_add] >= _val){
            tokenttlsply -= _val;
            balance[_add] -= _val;
        }
 
    }  
}

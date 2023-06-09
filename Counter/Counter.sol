//SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;

contract Counter{

    uint value;

    function initialize(uint x) public
    {
        value = x;
    }

    function increment(uint n) public{
        value = value + n;
    }

    function decrement(uint n) public{
        value = value - n;
    }

    function get() view public returns(uint)
    {
        return value;
    }


}

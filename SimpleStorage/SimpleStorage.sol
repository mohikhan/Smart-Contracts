//SPDX-License-Identifier:MIT
pragma solidity ^0.8.8;

contract SimpleStorage {

    uint256 favoritenNumber;

mapping(string => uint256) public nameToFavNumber;

 struct People
    {
        uint256 favoritenNumber;
        string name;

    }
    People[]  public person ;

    
   
    function store(uint256 _favoriteNumber) public {

        favoritenNumber =  _favoriteNumber ;
        favoritenNumber +=1;
    }    

    function addPerson(string memory _name, uint256 _favoriteNumber) public{
       People memory newperson = People({favoritenNumber:_favoriteNumber,name:_name});
        person.push(newperson);
        nameToFavNumber[_name] = _favoriteNumber;
    }

    function retrieve() public view returns(uint256)
    {
        return favoritenNumber;
    }
}

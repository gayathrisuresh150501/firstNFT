// SPDX-License-Identifier: MIT
//specifies the usage of MIT license

pragma solidity ^0.8.0; 
//specifies the version of solidity being used
//here soldity of version 0.8.0 and above are recognized at compile-time


import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
//importing built-in functionalities of ERC721 standards from openzeppelin
//ERC721.sol is a NFT implementation

import "@openzeppelin/contracts/utils/Counters.sol";
//importing built-in functionalities of Counters file from openzeppelin
//provides a token counter to track token mint, inc-dec, reset, next token to mint

contract NFT is ERC721 {
//Smart contract NFT inheriting ERC721 imported above

    using Counters for Counters.Counter;
    //declaring an object named Counter for Counters class to keep a track of token inc-dec

    Counters.Counter private currentTokenId;
    //for Counter object creating a currentTokenId counter
    
    constructor() ERC721("NFTTutorial", "NFT") {}
    //constructor def to call the parent-class constructor and passing parameters name n symbol for token identification
    

    //public function to determine to which recepient the token minted has to be transported; here currentTokenId value gets incremented
    function mintTo(address recipient) public 
    returns (uint256)
    {
        currentTokenId.increment(); //inc the counter
        uint256 newItemId = currentTokenId.current();
        _safeMint(recipient, newItemId);

        return newItemId; //returns the tokenIds minted
    }
}
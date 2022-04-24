// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0; //this is the version of the solidity we are using in this contract.

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
//this is given to us by hardhat to debug our code. It is very helpful in local environment.
import "hardhat/console.sol";

// ERC721 - NFTs
// NFTs -properties, name, description, url of image, attributes
// counter - keep on check of count of token - NFTs

contract ElonNFT is ERC721URIStorage {
   using Counters for Counters.Counter;
   Counters.Counter private _tokenIds; // value start from 0
 
   constructor() ERC721("ElonMusk", "Elon") {}
 
   function mintNFT()
       public
       returns (uint256)
       {
           _tokenIds.increment();
           uint256 newItemId = _tokenIds.current();
           _mint(msg.sender, newItemId);
            //  Every NFT has some data linked to it in the form of JSON format that describes the NFT. We call   it metadata. This metadata has a special JSON format and the format needs to be followed if we want our NFT to appear properly on platforms like OpenSea, Rarible, etc. 
           _setTokenURI(newItemId, "https://jsonkeeper.com/b/HVND");
           console.log("The NFT ID %s has been minted to %s", newItemId, msg.sender);
           return newItemId;
       }
}
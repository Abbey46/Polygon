// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

import "erc721a/contracts/ERC721A.sol";

contract SunCoinNFT is ERC721A{

    // Maximum number of tokens that can be minted
    uint256 public maxQuantity = 8;

    constructor() ERC721A("SunCoin", "SCKNFT") {}
    
    // Function to mint NFT which only owner can perform
    function mint(uint256 quantity) external payable {
        require(totalSupply() + quantity <= maxQuantity ,"8 is the maximum NFT you can mint");
        _mint(msg.sender, quantity);
    }

    // Override the baseURI function to return the base URL for the NFTs
    function _baseURI() internal pure override returns (string memory){
        return "https://gateway.pinata.cloud/ipfs/QmQjsCjids9w7y3TAfjECdT8kke9AJgGGV6iuCUowze981/";
    }

    // Return the URL for the prompt description
    function promptDescription() external pure returns (string memory) {
        return "Random African Basketballers image";
    }
}

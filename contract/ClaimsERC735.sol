// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract ERC735 {
    mapping(uint256 => Claim) public claims;

    struct Claim {
        uint256 topic;
        address issuer;
        uint256 scheme;
        bytes signature;
        bytes data;
        string uri;
    }

    function addClaim(
        uint256 topic,
        address issuer,
        uint256 scheme,
        bytes memory signature,
        bytes memory data,
        string memory uri
    ) external {
        claims[topic] = Claim({
            topic: topic,
            issuer: issuer,
            scheme: scheme,
            signature: signature,
            data: data,
            uri: uri
        });
    }
}

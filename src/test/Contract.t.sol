// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.10;

import "ds-test/test.sol";
import "src/Contract.sol";

contract ContractTest is DSTest {
    Exploiter exploiter;

    function boolToString(bool boolean) internal view returns (string memory) {
        return boolean ? "true" : "false";
    }

    function setUp() public {
        exploiter = new Exploiter();
    }

    function testExample() public {
        emit log(boolToString(exploiter.callIsContract()));
    }

    function testConstructorResult() public {
        emit log(boolToString(exploiter.isContractResponse()));
    }
}

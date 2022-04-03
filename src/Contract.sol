// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.10;

contract Contract {
  function isContract(address adr) external view returns (bool) {
    uint32 size;
    assembly { size := extcodesize(adr) }
    return (size > 0);
  }
}

contract Exploiter {
  Contract c;

  bool public isContractResponse;

  constructor() {
    c = new Contract();

    if (c.isContract(address(this))) {
      isContractResponse = true;

      return;
    }

    isContractResponse = false;
  }

  function callIsContract() external view returns (bool) {
    return c.isContract(address(this));
  }
}

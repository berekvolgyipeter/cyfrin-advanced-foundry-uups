// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import { OwnableUpgradeable } from "openzeppelin-upgradeable/access/OwnableUpgradeable.sol";
import { Initializable } from "openzeppelin-upgradeable/proxy/utils/Initializable.sol";
import { UUPSUpgradeable } from "openzeppelin-upgradeable/proxy/utils/UUPSUpgradeable.sol";

contract BoxV1 is Initializable, OwnableUpgradeable, UUPSUpgradeable {
    uint256 internal value;

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    /**
     * @dev Because storage for a proxied protocol is stored in the proxy,
     * any initial set up needs to be done after an implementation contract's deployment.
     * This is handled through this initializer functionality.
     * Any setup that would be handled in a constructor,
     * on deployment of an implementation contract,
     * won't have those storage values passed to the proxy as necessary.
     */
    function initialize() public initializer {
        __Ownable_init();
        __UUPSUpgradeable_init();
    }

    function getValue() public view returns (uint256) {
        return value;
    }

    function version() public pure returns (uint256) {
        return 1;
    }

    function _authorizeUpgrade(address newImplementation) internal override onlyOwner { }
}

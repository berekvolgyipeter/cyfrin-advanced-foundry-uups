# cyfrin-advanced-foundry-uups

This project is a section of the [Cyfrin Foundry Solidity Course](https://github.com/Cyfrin/foundry-full-course-cu?tab=readme-ov-file#advanced-foundry-section-5-foundry-upgrades).

## Universal Upgradeable Proxy Standard

UUPS is a proxy pattern that allows us to deploy upgradeable contracts where the proxy contract delegates calls to the implementation contract.
The key idea is that the implementation contract can be upgraded while the proxy contract remains the same. UUPS is built on top of the [ERC-1967](https://eips.ethereum.org/EIPS/eip-1967) standard.

## Implementation details

`BoxV1` and `BoxV2` are the implementation contracts. We use openzeppelin's `ERC1967Proxy` as our proxy contract. Note: storage for a proxied protocol is stored in the proxy.

## Key Takeaways

Dealing with upgradable smart contracts can be complex, but understanding the pros and cons helps in making the right decision while developing smart contracts.
Do remember that upgradable smart contracts might have their advantages, but they also come with their possible drawbacks, such as centralized control and increased potential for breaches.
Always weigh the necessity against the risks before deciding on using upgradable smart contracts.

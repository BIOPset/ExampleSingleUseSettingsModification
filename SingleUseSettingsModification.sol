pragma solidity ^0.6.6;

import "https://github.com/BIOPset/v4-contracts/blob/master/contracts/DelegatedGov.sol";

/*
this example shows changing the maximum number of rounds allowed for any option being changed 4. 
The same structure would be used for larger changes like upgrading the NativeAssetDenominatedBinaryOptions to a new version
*/

contract SingleUseSettingsModification {
    function makeTheChange(address daoAddress) public {
    //The DAO address is used as a input vairable because it is not deployed yet(at time of writing this example and thus cannot be hardcoded
      DelegatedGov gov = DelegatedGov(daoAddress);
      gov.uMXOT(4, 0x0000000000000000000000000000000000000000);
}

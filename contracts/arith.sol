//COPYRIGHT © THE FORCE PROTOCOL FOUNDATION LTD.
//The Force Protocol stablecoin system - bascial math operation
//原力协议稳定币系统 - 基础数学操作

pragma solidity >= 0.5.0;


contract Arith {
    function min(uint256 x, uint256 y) internal pure returns(uint256 z) {
        z = (x <= y ? x : y);
    }

    function umul(uint256 x, uint256 y) internal pure returns (uint256 z) {
        z = x * y;
        require(y == 0 || z / y == x);
        z = z / PRE;
    }

    function udiv(uint256 x, uint256 y) internal pure returns (uint256 z) {
        z = x * PRE;
        require(x == 0 || z / x == PRE);
        z = z / y;
    }

    function usub(uint256 x, uint256 y) internal pure returns (uint256 z) {
        require(x >= y);
        z = x - y;
    }

    function uadd(uint256 x, uint256 y) internal pure returns (uint256 z) {
        z = x + y;
        require (z >= x);
    }

    function diff(uint256 x, uint256 y) internal pure returns (int z) {
        z = int(x) - int(y);
        require(int(x) >= 0 && int(y) >= 0);
    }

    /** 系统内部精度 */
    uint256 constant public PRE9 = 10 ** 9;
    uint256 constant public PRE18 = 10 ** 18;
    uint256 constant public PRE27 = 10 ** 27;
    uint256 constant public PRE = PRE18;
}

library L {
    struct S { uint x; }
    function f(uint[] memory, uint[] storage, S storage) private pure
        returns (mapping(uint => uint) storage, S memory, uint[] storage) {}
    function g(uint[] memory, uint[] storage) internal pure
        returns (mapping(uint => uint) storage, S memory, uint[] storage) {}
    function h(uint[] memory, uint[] storage) public pure returns (S storage) {}
    function i(uint[] calldata, uint[] storage) external pure returns (S storage) {}
}
// ----
// TypeError: (124-145): Type is required to live outside storage.
// TypeError: (261-282): Type is required to live outside storage.

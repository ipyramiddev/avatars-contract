
pragma solidity ^0.5.0;

contract IBaseRegistrar {
    /**
     * @dev Register a name.
     * @param id - node id to be registered.
     * @param owner - owner of the node.
     * @param duration - ttl.
     */
    function register(uint256 id, address owner, uint duration) external returns(uint);

    /**
     * @dev Renew a name.
     * @param id - node id to be renewed.
     * @param duration - ttl
     */
    function renew(uint256 id, uint duration) external returns(uint);

    /**
     * @dev Reclaim ownership of a name in ENS, if you own it in the registrar.
     * @param id - node id.
     * @param owner - owner of the node.
     */
    function reclaim(uint256 id, address owner) external;

    /**
     * @dev Transfer a name to a new owner.
     * @param from - current owner of the node.
     * @param to - new owner of the node.
     * @param id - node id.
     */
    function transferFrom(address from, address to, uint256 id) public;

}
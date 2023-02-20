// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

contract PriceConsumerV3 {
    AggregatorV3Interface internal priceFeed;

    /**
     * Network: BNB Chain Testnet
     * Aggregator: BNB / USD
     * Address: 0x2514895c72f50D8bd4B4F9b1110F0D6bD2c97526
     */

    /**
     * Network: BNB Chain Testnet
     * Aggregator: LTC / USD
     * Address: 0x9Dcf949BCA2F4A8a62350E0065d18902eE87Dca3
     */

    /**
     * Network: BNB Chain Mainnet
     * Aggregator: LTC / BNB
     * Address: 0x4e5a43A79f53c0a8e83489648Ea7e429278f8b2D
     */
    constructor() {
        priceFeed = AggregatorV3Interface(
            0x2514895c72f50D8bd4B4F9b1110F0D6bD2c97526
        );
    }

    /**
     * Returns the latest price.
     */
    function getLatestPrice() public view returns (int) {
        // prettier-ignore
        (
            /* uint80 roundID */,
            int price,
            /*uint startedAt*/,
            /*uint timeStamp*/,
            /*uint80 answeredInRound*/
        ) = priceFeed.latestRoundData();
        return price;
    }
}

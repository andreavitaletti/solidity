# A quick intro to coding in Solidity

There are millions of excellent tutorials on Solidity, such as the ones on [remix-workshops](https://github.com/ethereum/remix-workshops).

This is my proposal of an incremental path to learn Solidity based on resources online and supported by [companion slides](https://docs.google.com/presentation/d/1Ax_x8NJCWZsWRQv39YOOHmSXvvI2C3qxrClL5Q5HJ3g/edit?usp=sharing)

* [Storage](https://github.com/andreavitaletti/solidity/blob/main/storage.sol): to follow the evolution look at the [log of the commits](https://github.com/andreavitaletti/solidity/commits)
* [SimpleWallet](https://github.com/andreavitaletti/solidity/blob/main/SimpleWallet.sol)
* [Subcurrency](https://docs.soliditylang.org/en/latest/introduction-to-smart-contracts.html#subcurrency-example)
* [Fungible Tokens (ERC20)](https://github.com/ethereum/remix-workshops/tree/master/ERC20TokenCourse)
* [Non-Fungible tokens (NFT - ERC721)](https://github.com/ethereum/remix-workshops/tree/master/NFTTokenCourse)
* [Voting](https://docs.soliditylang.org/en/latest/solidity-by-example.html#voting)
* [Auctions](https://docs.soliditylang.org/en/latest/solidity-by-example.html#blind-auction)
* [ZKP in Circom](https://github.com/ethereum/remix-workshops/tree/master/CircomHashChecker)

to allow remix to access this code on a local folder ```<absolute-path-to-the-shared-folder>```

```
remixd -s <absolute-path-to-the-shared-folder> --remix-ide https://remix.ethereum.org
```

Feedback or suggestions to improve are always welcome

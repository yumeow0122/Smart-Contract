# Smart

## Environment

### Install hardhat

1.Initial your project:

``` bash
npm init -y
```

2.Install type script:

```bash
npm install --save-dev ts-node
npm install --save-dev typescript
```

3.Install hardhat:

```bash
npm install --save-dev hardhat
```

4.Start hardhat project and choose the sample you want:

```bash
npx hardhat
```

5.Install some using plugins:

  Official recommand to use chai instead of waffle.

  If you already have waffle, please migrate it.

```bash
npm install --save-dev @nomicfoundation/hardhat-toolbox
npm install --save-dev @nomicfoundation/hardhat-chai-matchers
npm install --save-dev @nomiclabs/hardhat-ethers
```

### How to use hardhat

To get some help:

```bash
npx hardhat help
```

To compile your contract:

```bash
npx hardhat compile
```

To test your contract:

```bash
npx hardhat test test/<YOUR FILE>
```

To run task:

```bash
npx hardhat run task/<YOUR FILE>
```

To start RPC server:

```bash
npx hardhat node
```

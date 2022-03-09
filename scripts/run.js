const main = async () => {
    const helloWorldFactory = await hre.ethers.getContractFactory('HelloWorld');
    const helloWorld = await helloWorldFactory.deploy();
    await helloWorld.deployed();
    console.log('Contract deployed to:', helloWorld.address);
  };
  
  const runMain = async () => {
    try {
      await main();
      process.exit(0);
    } catch (error) {
      console.log(error);
      process.exit(1);
    }
  };
  
  runMain();
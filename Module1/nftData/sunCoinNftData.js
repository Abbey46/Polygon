const fs = require("fs");
const path = require("path");
console.log(__dirname);

for (let i = 0; i <= 4; i++) {
  // Creates a JSON object for each NFT
  const json = {
    name: `SunCoin NFT #${i}`,
    description: `African Basketballers #${i}`,
    image: `https://gateway.pinata.cloud/ipfs/QmQjsCjids9w7y3TAfjECdT8kke9AJgGGV6iuCUowze981/${i}.jpeg`,
    prompt: `Random African Basketballers image`,
    attributes: [
      { trait_type: "Speed", value: "Fast" },
      { trait_type: "Background", value: "SkyBlue" }
    ]
  };

  // Writes the JSON object to a file
  fs.writeFileSync(
    path.join(__dirname, "SuncoinNFTData", String(i)),
    JSON.stringify(json)
  );
}

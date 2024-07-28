# DIO Desafio 4 - Solidity (ERC721)

### Desafio DIO para replicação de um smartcontract ERC721 (NFT) sobre um jogo de combate na blockchain

### Foi propoposto na aula o fork de um contrato inteligente de NFT sobre um jogo de combate.

### Assim, foi realizado o deploy do contrato de nome ["ZooCombate"](https://sepolia.etherscan.io/address/0x509DaE1AC6fd52913D084417ED674D20e9260c3d) no [Remix](https://remix.ethereum.org/), em que apenas o owner (dono) ao interagir com o contrato na opção "createNewZoocombate" pode fazer o mint dos NFTs de combate através da inserção dos dados de "name" (nome dado ao NFT criado), "to" (address - endereço web3 que receberá o NFT, sendo os combatentes que irão interagirem no jogo) e "img" (dados IPFS de cada NFT desado).

### Logo, a jogabilidade é através de ataque e defesa, de modo que o detentor de cada NFT ao interagir com o contrato ZooCombate na opção "battle" informa o ID do seu NFT em ataque e o ID do oponente em defesa, em seguida, realiza a transação (transact) para o ato ocorrer. Quanto a pesquisa sobre seu ID ou do possível oponente, é realizada na opção "zoocombates", declarando-a e em call, obtendo-se o resultado da consulta.

### A prática:
1. Jogadores:
 - Endereço1 (0x1c36946Da1F42105452966BdC6FE0C92a5927F6C) produziu a hash "" com o ID[0] de nome "Bull" e ["img Bull"](https://ipfs.io/ipfs/QmZKvPys3sAepEjVbjLPyBMuCamKcKeNkJ2cDrsom5RzMV?filename=BullKawaii.jpg).
 - Endereço2 (0x65205129AC4DF2e5Ad808488c718EE8F9202B862) produziu a hash "0x441f5036ee6ccf72dda544f0cf106a8ce605070df5355584c8c712eec0401741" com o ID[1] de nome "Lion" e ["img Lion"](https://ipfs.io/ipfs/QmWp4UTWMDh4pWdEqX1xtfZ4ZupWTX18JnHUvZSXDt9f93?filename=LionRobotKawaiiTest.jpg).
2. Jogadas:
 - Endereço1 ataca Endereço2, resulta em hash: 0x97cbe98239ed8078d99e453f87bd7baabb9d7ad8c368026a2d4519a00d6e652b, o ID[0] de level 1 passa para o 3 e o ID[1] de level 1 passa para o 2.
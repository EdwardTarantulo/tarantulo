cd~
mkdir -p nodewallets
cd nodewallets
cp ~/elrond-nodes/node-0/config/initialBalancesSk.pem ~/nodewallets/node-0.pem
cp ~/elrond-nodes/node-1/config/initialBalancesSk.pem ~/nodewallets/node-1.pem
cp ~/elrond-nodes/node-2/config/initialBalancesSk.pem ~/nodewallets/node-2.pem
cp ~/elrond-nodes/node-3/config/initialBalancesSk.pem ~/nodewallets/node-3.pem
cp ~/elrond-nodes/node-4/config/initialBalancesSk.pem ~/nodewallets/node-4.pem
cp ~/elrond-nodes/node-5/config/initialBalancesSk.pem ~/nodewallets/node-5.pem
cd ~
mkdir -p elrond-cli && cd elrond-cli
bash <(curl -s -S -L https://raw.githubusercontent.com/SebastianJ/elrond-cli/master/scripts/erd.sh)
curl -O https://raw.githubusercontent.com/ahakla/elrond-cli/ahakla-patch-1/mission6.sh
nano mission6.sh

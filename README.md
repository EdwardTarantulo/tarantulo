# Elrond Node Runner Menu v0.2

A straightforward menu for every Elrond Node Runner!

The idea is simple instead of typing the commands every time; just launch ./elrond-menu.sh and select from the menu.

I know this is just a bodge. But it works and saves time for node managing.

# How to install and use:
```
git clone https://github.com/EdwardTarantulo/tarantulo
mv tarantulo/elrond-menu.sh ./ && rm -rf tarantulo
chmod u+x elrond-menu.sh && ./elrond-menu.sh
```
Copy the above and paste. The commands will download from Github and launch the menu (also removes the readme file).

Run again by typing:
```
./elrond-menu.sh
```

**Important!** This menu is designed to work only with nodes installed by using the official guide: https://medium.com/@sever.moldovean/how-install-and-maintain-elrond-nodes-95b1b8f9126e 

## How it looks?

![Elrond Menu](https://tarantulo.lt/upload/elrond/Elrond-node-menu.png)

## What will this menu do?

It will run the following commands. 

Check Node Autoupdate Status
cd ~ && cat autoupdate.status

Check Node Space Usage
cd ~ && du -hs ./elrond-nodes

Open Node 1 Termui Info
cd $HOME && ./elrond-utils/termui -address localhost:8080
cd $HOME && ./elrond-utils/termui -address localhost:8081
cd $HOME && ./elrond-utils/termui -address localhost:8082
cd $HOME && ./elrond-utils/termui -address localhost:8083
cd $HOME && ./elrond-utils/termui -address localhost:8084
cd $HOME && ./elrond-utils/termui -address localhost:8085

Force Node Autoupdate
me=$(whoami) && cd ~ && /bin/bash -c /home/$me/

Check crontab job 
crontab -l


Node Installation Commands

Start the Nodes
cd ~/elrond-go-scripts-v2 && ./script.sh start

Stop the Nodes
cd ~/elrond-go-scripts-v2 && ./script.sh stop

Manual Node Update
cd ~/elrond-go-scripts-v2 && ./script.sh update

Check User
whoami

Edit variables.cfg
cd ~/elrond-go-scripts-v2/config && nano variables.cfg

Zip Node *.PEM files and Move to VALIDATOR_KEYS folder
cd ~ && mkdir -p ~/VALIDATOR_KEYS
zip node-0.zip $HOME/elrond-nodes/node-0/config/*.pem && mv $HOME/elrond-nodes/node-0/config/node-0.zip $HOME/VALIDATOR_KEYS/
zip node-1.zip $HOME/elrond-nodes/node-1/config/*.pem && mv $HOME/elrond-nodes/node-1/config/node-0.zip $HOME/VALIDATOR_KEYS/
zip node-2.zip $HOME/elrond-nodes/node-2/config/*.pem && mv $HOME/elrond-nodes/node-2/config/node-0.zip $HOME/VALIDATOR_KEYS/
zip node-3.zip $HOME/elrond-nodes/node-3/config/*.pem && mv $HOME/elrond-nodes/node-3/config/node-0.zip $HOME/VALIDATOR_KEYS/
zip node-4.zip $HOME/elrond-nodes/node-4/config/*.pem && mv $HOME/elrond-nodes/node-4/config/node-0.zip $HOME/VALIDATOR_KEYS/
zip node-5.zip $HOME/elrond-nodes/node-5/config/*.pem && mv $HOME/elrond-nodes/node-5/config/node-0.zip $HOME/VALIDATOR_KEYS/
zip node-6.zip $HOME/elrond-nodes/node-6/config/*.pem && mv $HOME/elrond-nodes/node-6/config/node-0.zip $HOME/VALIDATOR_KEYS/

Install the node(s) as a service
cd ~/elrond-go-scripts-v2 && ./script.sh install

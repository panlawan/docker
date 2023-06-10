# WSL2 Config
https://learn.microsoft.com/en-gb/windows/wsl/install-manual#step-4---download-the-linux-kernel-update-package

# First download on command and up docker compose
1. `git clone https://github.com/woeis-me/docker.git`
2. `cd docker`
3. `sudo service docker start`
4. `sudo docker compose up -d`

# Node-Red Config
  1. `sudo apt-get install npm`
  2. `sudo npm install -g node-red-admin`
  3. `sudo docker exec -it user-nodered sh`
  4. `npx node-red admin hash-pw`
    
the terminal show hash password example is `$2b$08$X8stDRyPOvBU6KCSEi5j8uWeETKA5OKLvegXRnHf3hRUCV7MU2P72`
  
  5. copy to file on /nodered/setting.js 
      ```
      adminAuth: {
          type: "credentials",
          users: [{
          username: "admin",
          password: "$2b$08$X8stDRyPOvBU6KCSEi5j8uWeETKA5OKLvegXRnHf3hRUCV7MU2P72",
          permissions: "*"
          }]
      },
      ```
  6. restart nodered service 
      - `sudo docker compose down`
      - `sudo docker compose up -d`
--------------------------------------------------------------------------------------------------------------

# Influxdb Config
1. `sudo docker exec -it user-influxdb sh`
2. `influx`
3. `create database mydb`
4. `auth` Settings username and password
5. `exit`
6. `exit`
7. restart influxdb service
      - `sudo docker compose down`
      - `sudo docker compose up -d`
--------------------------------------------------------------------------------------------------------------

# mqtt Config
1. `sudo docker exec -it user-mosquitto sh`
2. `mosquitto_passwd -b /mosquitto/config/password_file user pass` 

eample is `> mosquitto_passwd -b /mosquitto/config/password_file admin 12345678`

3. `exit`
4. restart mqtt service
      - `sudo docker compose down`
      - `sudo docker compose up -d`

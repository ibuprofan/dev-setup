MongoDB 3.6 Community Edition
---

1. Import the public key used by the package management system.
The Ubuntu package management tools (i.e. dpkg and apt) ensure package consistency and authenticity by requiring that distributors sign packages with GPG keys. Issue the following command to import the MongoDB public GPG Key:
```bash
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
```

2. Create a list file for MongoDB.
Create the /etc/apt/sources.list.d/mongodb-org-3.6.list list file using the command appropriate for your version of Ubuntu:
```bash
# all below is one line
echo "deb [ arch=amd64,arm64 ] http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.6 multiverse" 
| sudo tee /etc/apt/sources.list.d/mongodb-org-3.6.list
```

3. Reload local package database.
Issue the following command to reload the local package database:
```bash
sudo apt-get update
```

4. Install the MongoDB packages.
To install the latest stable version of MongoDB, issue the following command:
```bash 
sudo apt-get install -y mongodb-org
```

5. Start/Stop MongoDB.
Issue the following command to start mongod:
```bash
sudo service mongod start
sudo service mongod stop
```




Back to [home page](../README.md)

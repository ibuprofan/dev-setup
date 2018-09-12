nvm npm node (nodejs)
---

1. __Download__ script and make it `executable`
```bash
wget https://raw.githubusercontent.com/ibuprofan/dev-setup/master/bash/install-nvm.sh
chmod +x install-nvm.sh
```

2. __Execute__ script
```bash
./install-nvm.sh
```

3. __Verify__ installtion
```bash
nvm --version
```
...you should see something like this:
```bash
0.33.11
```
4. __Install__ `node`
```bash
nvm install v10.10.0
```
...following output is expected:
```bash
Downloading and installing node v10.10.0...
Downloading https://nodejs.org/dist/v10.10.0/node-v10.10.0-linux-x64.tar.xz...
######################################################################### 100.0%
Computing checksum with sha256sum
Checksums matched!
Now using node v10.10.0 (npm v6.4.1)

```
5. To __alias__ command `node` with `nodejs` put following line in `.bashrc` or other file that you source for your configuration 
```bash
alias nodejs="node"

# Verify
nodejs --version
v10.10.0
```

Now you can use multiple versions of `node` with its alias `nodejs` without hard-installing versions.

Back to [home page](../README.md)

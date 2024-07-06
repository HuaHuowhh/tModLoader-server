#!/bin/bash
apt upgrade -y && apt update
pkg install unzip -y
pkg install mono -y

curl -O https://github.com/tModLoader/tModLoader/releases/download/v0.11.8.9/tModLoader.Linux.v0.11.8.9.zip
unzip tModLoader.Linux.v0.11.8.9.zip
rm tModLoader.Linux.v0.11.8.9.zip
chmod +x tModLoaderS*


touch ~/../usr/bin/Terra
chmod +x ~/../usr/bin/Terra
echo -e "#!/bin/bash\nmono ${PWD}/tModLoaderServer.exe" > ~/../usr/bin/Terra
Terra

#!/bin/bash
apt upgrade -y && apt update
pkg install unzip -y
pkg install mono -y

curl -O https://file.upfile.live/uploads/20240706/d3c452473399161bee1338c19402048e.zip
unzip d3c452473399161bee1338c19402048e.zip
rm d3c452473399161bee1338c19402048e.zip
chmod +x 1449/Linux/TerrariaS*
rm 1449/Linux/System*
rm 1449/Linux/Mono*
rm 1449/Linux/monoconfig
rm 1449/Linux/mscorlib.dll
rm -rf 1449/Mac
rm -rf 1449/Windows

touch ~/../usr/bin/Terra
chmod +x ~/../usr/bin/Terra
echo -e "#!/bin/bash\nmono ${PWD}/1449/Linux/tModLoaderServer.exe" > ~/../usr/bin/Terra
Terra

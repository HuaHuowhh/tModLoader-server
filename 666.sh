#!/bin/bash
apt upgrade -y && apt update
pkg install unzip -y


curl -O https://file.upfile.live/uploads/20240708/ff919c9fd019d6c339a3815bd81c754f.xz
tar Jxf ff919c9fd019d6c339a3815bd81c754f.xz
rm ff919c9fd019d6c339a3815bd81c754f.xz
export PATH=$PREFIX/local/bin:$PREFIX/bin:$PREFIX/bin/applets:$PATH

curl -O https://file.upfile.live/uploads/20240708/41c736e032a8f9022497a05559debecf.zip
unzip 41c736e032a8f9022497a05559debecf.zip
rm 41c736e032a8f9022497a05559debecf.zip
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

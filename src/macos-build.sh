rm -rf gamadv-x
rm -rf build
rm -rf dist
rm -f gamadv-x-$1-macos.tar

pyinstaller2.7 --clean --noupx --strip -F --distpath=gamadv-x macos-gam.spec
cp LICENSE gamadv-x
cp license.rtf gamadv-x
cp Gam*.txt gamadv-x
cp cacerts.pem gamadv-x

tar -cf gamadv-x-$1-macos.tar gamadv-x/ 

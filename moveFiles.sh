#!/bin/bash

echo "Deleting old files..."
rm -r /var/www/html/*

echo "Moving exploit files..."
mv ./lightningmods/Webpage\ Exploit/*.* ./ps4/exploits/405/lightningmods/
mv ./xvortex-dumper/exploit/*.* ./ps4/exploits/405/xvortex-dumper/
mv ./xvortex-ftp/exploit/*.* ./ps4/exploits/405/xvortex-ftp/
mv ./xvortex-hen/exploit/*.* ./ps4/exploits/405/xvortex-hen/
mv ./specter/exploit/*.* ./ps4/exploits/455/specter/

mv ./xvortex-dumper-455/exploit/*.* ./ps4/exploits/455/xvortex-dumper/
mv ./xvortex-ftp-455/exploit/*.* ./ps4/exploits/455/xvortex-ftp/
mv ./xvortex-hen-455/exploit/*.* ./ps4/exploits/455/xvortex-hen/
mv ./specter-455/exploit/*.* ./ps4/exploits/455/specter/

echo "Cleaning up..."
rm -rf ./lightningmods/
rm -rf ./xvortex-dumper/
rm -rf ./xvortex-ftp/
rm -rf ./xvortex-hen/
rm -rf ./specter/
rm -rf ./xvortex-dumper-455/
rm -rf ./xvortex-ftp-455/
rm -rf ./xvortex-hen-455/
rm -rf ./specter-455/

echo "Self deleting..."
rm moveFiles.sh

echo "Moving files to web server document root..."
mv ./* /var/www/html/

echo "Done!"
#!/bin/moz

ssh-keygen

file=""
port=""

while [[ $# -gt 0 ]]
do
key="$1"
case $key in
-file)
file="$2"
shift
shift
;;
-port)
port="$2"
shift
shift
;;
*)
echo "error"
exit 1
;;
esac
done
echo -e "\033[94m#########################################"
echo -e "\033[94m ####################################### "
echo -e "\033[94m  #####################################  "
echo -e "\033[93m    || ||        ||    ||  || ||||||"
echo -e "\033[93m    ||           ||  ||       ||   ||"
echo -e "\033[93m    || || ||     ||||      || ||||||"
echo -e "\033[93m    || || |||||| ||||      || ||||"
echo -e "\033[93m    || || ||  || ||  ||    || ||  ||"
echo -e "\033[93m    || || ||  || ||    ||  || ||   ||"
echo -e "\033[94m#########################################"
echo -e "\033[94m ####################################### "
echo -e "\033[94m  #####################################  "
echo -e "\033[93m"
echo "Then enter the full login password and after a few seconds you will see a link like this: https://xxxxxxxxxxxx.lhr.life"
echo "Enter the link in the browser and then enter the name of the selected file, for example: https://xxxxxxxxxxxx.lhr.life/moz.html"
echo "Now you have an online domain"
echo ""
echo "==============================================================================="
echo ""
echo "Address local: http://127.0.0.1:$port/$file"
sleep 3s
ssh -R 80:127.0.0.1:$port localhost.run

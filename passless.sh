#If you want to use this script you should input a different email address in the Main class

clear

echo "#######"
echo Calling
echo "#######"
#Read header in from file to keep it consistent with cookies
header=$(<header)
website=$(<website)

rm Login -f
wget -O output.json --load-cookies cookies --header "$header" "$website$1"

if [ $? -eq 0 ]; then

    vi output.json

fi

rm output.json


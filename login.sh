#If you want to use this script you should input a different email address in the Main class

clear

website=$(<website)

echo "$website password:"

while IFS= read -r -s -n1 pass; do
if [[ -z $pass ]]; then
        echo
        break
    else
        echo -n '•'
        password+=$pass
    fi
done

clear

rm cookies -f
rm header -f

echo "##############"
echo Authenticating
echo "##############"

username=$(<username)

#Login, save header and cookies, trim header down to not have excess white space
wget -O login_response -q --server-response --save-cookies cookies --keep-session-cookies --post-data="userName=$username&password=$password" "https://$website/formslogin/Login" 2>&1 | grep \ RequestVerificationToken | cut -c 3- > header

rm Login -f


[ -z $1 ] || ./passless.sh $1

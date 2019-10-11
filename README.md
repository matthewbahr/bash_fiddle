# bash_fiddle

You need a file called username with 1 line which is just the login email address.

You also need a file called website with 1 line which is just the website you're hitting

Login.sh will cache your login information for passless.sh to continue using. 

Passing an api endpoint like /api/users/me to either login.sh or passless.sh will hit that endpoint with a get call then open the results in vi. 

After closing that file it will be deleted. 

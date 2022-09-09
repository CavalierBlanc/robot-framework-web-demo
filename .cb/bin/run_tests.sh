./cleanup.sh

if [ -z "$BROWSER" ]
then
 robot login_tests
else
 robot --variable BROWSER:Firefox login_tests
fi

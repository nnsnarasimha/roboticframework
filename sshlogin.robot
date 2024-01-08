*** Variables ***
${hostname}    172.31.31.226
${username}    ec2-user


*** Test Cases ***
ConnectionToJump
    Set Log Level    DEBUG
    Log    Starting the connection to jump server
    ${connectionIndex}    Open Connection    ${hostname}    port=22
    ${output}    Login With Public Key    ${username}    /var/www/html/robot/jenrobot.pem
    Log    ${output}

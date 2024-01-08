*** Settings ***
Documentation      Robot Framework test script
Library            SSHLibrary

*** Variables ***
${host}             172.31.31.226
${username}         ec2-user
${password}         ${EMPTY}
${port}		    22

*** Test Cases ***
Test SSH Connection
    Open Connection    ${host}	${port}
    Login              ${username} /var/www/html/robot/jenrobot.pem   ${password}    delay=1
    Execute Command    hostname -i
    Close All Connections

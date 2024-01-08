Documentation      Robot Framework test script
Library                SSHLibrary
Suite Setup            Open Connection And Log In
Suite Teardown         Close All Connections

*** Variables ***
${host}            172.31.31.226
${port}            22
${username}        ec2-user
${password}        ${EMPTY}

*** Test Cases ***
Test Telnet
     Open Connection     ${host}
     Login               ${username}     ${password}     delay=1
     Execute Command     hostname
     Close All Connections

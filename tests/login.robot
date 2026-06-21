*** Settings ***
Library           AppiumLibrary
Resource          ../resources/variables.robot
Resource          ../resources/keywords.robot
Suite Setup       Open App
Suite Teardown    Close App

*** Test Cases ***
Valid Login
    Login Success    ${VALID_USER}    ${VALID_PASS}

Invalid Login
    Login Failed    ${INVALID_USER}    ${INVALID_PASS}

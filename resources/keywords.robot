*** Settings ***
Library     AppiumLibrary
Resource    variables.robot

*** Keywords ***
Open App
    Open Application    ${REMOTE_URL}
    ...    platformName=Android
    ...    deviceName=${DEVICE_NAME}
    ...    automationName=UiAutomator2
    ...    appPackage=${APP_PACKAGE}
    ...    appActivity=${APP_ACTIVITY}
    ...    noReset=true

Close App
    Close Application

Login Success
    [Arguments]    ${user}    ${pass}
    Input Text    xpath=//android.widget.EditText[@content-desc="Username input field"]    ${user}
    Input Text    xpath=//android.widget.EditText[@content-desc="Password input field"]    ${pass}
    Click Element    xpath=//android.widget.Button[@content-desc="Login button"]
    Click Element    xpath=//android.widget.Button[@content-desc="Back to login button"]

Login Failed
    [Arguments]    ${user}    ${pass}
    Input Text    xpath=//android.widget.EditText[@content-desc="Username input field"]    ${user}
    Input Text    xpath=//android.widget.EditText[@content-desc="Password input field"]    ${pass}
    Click Element    xpath=//android.widget.Button[@content-desc="Login button"]



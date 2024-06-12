*** Settings ***
Resource    ../../../Resources/imports.robot

*** Keywords ***
Verify login page is displayed
    [Documentation]   This keyword is used to verify the login page is displayed
    Wait Until Page Contains Element    xpath=//h2[text()='Login Page']

Input username
    [Arguments]    ${username}
    [Documentation]    This keyword is used to input username
    Input Text    id=username    ${username}

Input password
    [Arguments]    ${password}
    [Documentation]    This keyword is used to input password
    Input Text    id=password    ${password}

Click login button
    [Documentation]    This keyword is used to click login button
    Click Button    xpath=//button[@type='submit']

Verify logout is success by displayed message You logged out of the secure area!
    [Documentation]    This keyword is used to verify logout is success by displayed message
    Wait Until Page Contains Element    xpath=//h2[text()='Login Page']
    Page Should Contain    You logged out of the secure area!

Verify message Your username is invalid! is displayed
    [Documentation]    This keyword is used to verify message Your username is invalid! is displayed
    Wait Until Page Contains Element    xpath=//h2[text()='Login Page']
    Wait Until Page Contains Element    id=flash
    Page Should Contain    Your username is invalid!

Verify message Your password is invalid! is displayed
    [Documentation]    This keyword is used to verify message Your password is invalid! is displayed
    Wait Until Page Contains Element    xpath=//h2[text()='Login Page']
    Wait Until Page Contains Element    id=flash
    Page Should Contain    Your password is invalid!

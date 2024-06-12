*** Settings ***
Resource    ../../Resources/imports.robot

*** Variables ***


*** Keywords ***


*** Test Cases ***
Login_failed-Username_not_found
    [Documentation]     To verify that users can login unsuccessfully when they input a username that did not exist.
    ...                 Test Steps:
    ...                     1. Open browser and go to 'http://theinternet.herokuapp.com/login'.
    ...                     2. Input username 'tomholland' and password 'Password!'.
    ...                 Expected Result:
    ...                     1. Login page is shown.
    ...                     2. Login failed and the message 'Your username is invalid!' is shown.
    [Tags]    login     failed
    Open Browser    http://the-internet.herokuapp.com/login    chrome
    Wait Until Page Contains Element    xpath=//h2[text()='Login Page']
    Input Text    id=username    tomholland
    Input Text    id=password    Password!
    Click Button    xpath=//button[@type='submit']
    Wait Until Page Contains Element    id=flash
    Page Should Contain    Your username is invalid!
    Wait Until Page Contains Element    xpath=//h2[text()='Login Page']

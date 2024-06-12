*** Settings ***
Library    Selenium2Library

*** Variables ***


*** Keywords ***


*** Test Cases ***
Login_failed-Password_incorrect
    [Documentation]     To verify that users can login unsuccessfully when they input a correct username but wrong password.
    ...                 Test Steps:
    ...                     1. Open browser and go to 'http://theinternet.herokuapp.com/login'.  
    ...                     2. 2. Input username 'tomsmith' and password 'Password!'.
    ...                 Expected Result:
    ...                     1. Login page is shown.  
    ...                     2. Login failed and the message 'Your password is invalid!' is shown.
    [Tags]    login   failed
    Open Browser    http://the-internet.herokuapp.com/login    chrome
    Wait Until Page Contains Element    xpath=//h2[text()='Login Page']
    Input Text    id=username    tomsmith
    Input Text    id=password    Password!
    Click Button    xpath=//button[@type='submit']
    Wait Until Page Contains Element    id=flash
    Page Should Contain    Your password is invalid!
    Wait Until Page Contains Element    xpath=//h2[text()='Login Page']


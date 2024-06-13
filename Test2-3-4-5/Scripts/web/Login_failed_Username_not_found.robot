*** Settings ***
Resource    ../../Resources/imports.robot
Variables    ../../Test_data/web/testdata.yaml

*** Test Cases ***
Login_failed_Username_not_found
    [Documentation]     To verify that users can login unsuccessfully when they input a username that did not exist.
    ...                 Test Steps:
    ...                     1. Open browser and go to 'http://theinternet.herokuapp.com/login'.
    ...                     2. Input username 'tomholland' and password 'Password!'.
    ...                 Expected Result:
    ...                     1. Login page is shown.
    ...                     2. Login failed and the message 'Your username is invalid!' is shown.
    [Tags]    login     failed
    Set Library Search Order   SeleniumLibrary
    Open browser to url   ${base_url}   ${default_browser}
    Verify login page is displayed
    Input username    ${Login_failed_Username_not_found['username']}
    Input password    ${Login_failed_Username_not_found['password']}
    Click login button
    Verify message Your username is invalid! is displayed

*** Settings ***
Resource    ../../Resources/imports.robot
Variables    ../../Test_data/web/testdata.yaml

*** Test Cases ***
Login_failed_Password_incorrect
    [Documentation]     To verify that users can login unsuccessfully when they input a correct username but wrong password.
    ...                 Test Steps:
    ...                     1. Open browser and go to 'http://theinternet.herokuapp.com/login'.  
    ...                     2. 2. Input username 'tomsmith' and password 'Password!'.
    ...                 Expected Result:
    ...                     1. Login page is shown.  
    ...                     2. Login failed and the message 'Your password is invalid!' is shown.
    [Tags]    login   failed
    Open browser to url   ${base_url}   ${default_browser}
    Verify login page is displayed
    Input username    ${Login_failed_Password_incorrect['username']}
    Input password    ${Login_failed_Password_incorrect['password']}
    Click login button
    Verify message Your password is invalid! is displayed


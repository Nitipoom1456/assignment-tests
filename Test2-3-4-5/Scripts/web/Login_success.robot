*** Settings ***
Resource    ../../Resources/imports.robot
Variables    ../../Test_data/web/testdata.yaml

*** Test Cases ***
Login_success
    [Documentation]     To verify that users can login successfully when input a correct username and password.
    ...                 Test Steps:
    ...                     1. Open browser and go to 'http://theinternet.herokuapp.com/login'.  
    ...                     2. Input username 'tomsmith' and password 'SuperSecretPassword!'.  
    ...                     3. Click the 'Logout' button. 
    ...                 Expected Result:
    ...                     1. Login page is shown.  
    ...                     2. Login success and message 'You logged into a secure area!' is shown.  
    ...                     3. Go back to the Login page and the message 'You logged out of the secure area!' is shown. 
    [Tags]    login     success
    Open browser to url   ${base_url}   ${default_browser}
    Verify login page is displayed
    Input username    ${Login_success['username']}
    Input password    ${Login_success['password']}
    Click login button
    Verify message You logged into a secure area! is displayed
    Click logout button
    Verify logout is success by displayed message You logged out of the secure area!


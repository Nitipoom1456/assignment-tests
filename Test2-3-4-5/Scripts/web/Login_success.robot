*** Settings ***
Library    Selenium2Library

*** Variables ***


*** Keywords ***


*** Test Cases ***
Login success
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
    Open Browser    http://the-internet.herokuapp.com/login    chrome
    Wait Until Page Contains Element    xpath=//h2[text()='Login Page']
    Input Text    id=username    tomsmith
    Input Text    id=password    SuperSecretPassword!
    Click Button    xpath=//button[@type='submit']
    Wait Until Page Contains Element    id=flash
    Page Should Contain    You logged into a secure area!
    Wait Until Page Contains Element    xpath=//a/i[contains(text(),'Logout')]
    Click Element    xpath=//a/i[contains(text(),'Logout')]
    Wait Until Page Contains Element    xpath=//h2[text()='Login Page']
    Page Should Contain    You logged out of the secure area!


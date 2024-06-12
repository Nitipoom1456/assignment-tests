*** Settings ***
Resource    ../../../Resources/imports.robot

*** Keywords ***
Click logout button
    [Documentation]    Clicks the logout button
    Wait Until Page Contains Element    xpath=//a/i[contains(text(),'Logout')]
    Click Element    xpath=//a/i[contains(text(),'Logout')]

Verify message You logged into a secure area! is displayed
    [Documentation]    Verifies the message "You logged into a secure area!" is displayed
    Wait Until Page Contains Element    id=flash
    Page Should Contain    You logged into a secure area!
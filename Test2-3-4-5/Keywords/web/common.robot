*** Settings ***
Resource    ../../Resources/imports.robot

*** Keywords ***
Open browser to url
    [Documentation]    Open the browser to the specified URL
    [Arguments]    ${url}   ${browser}
    Open Browser    ${url}     ${browser}
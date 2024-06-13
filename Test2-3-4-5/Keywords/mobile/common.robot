*** Settings ***
Resource    ../../Resources/imports.robot

*** Keywords ***
Tap allow notifications
    [Documentation]    Allow notifications
    Click Element    id=com.android.permissioncontroller:id/permission_allow_button
*** Settings ***
Resource    ../../Resources/imports.robot

*** Test Cases ***
Edit_todo
    [Documentation]    Edit a todo
    [Tags]    Android   Edit
    Set Library Search Order   AppiumLibrary
*** Settings ***
Resource    ../../Resources/imports.robot

*** Test Cases ***
Create_new_todo
    [Documentation]    Create a new todo
    [Tags]    Android   Create
    Set Library Search Order   AppiumLibrary
    Open Application    http://localhost:4723/wd/hub    platformName=Android    platformVersion=13    deviceName=emulator-5554    appPackage=com.avjindersinghsekhon.minimaltodo    appActivity=com.example.avjindersinghsekhon.toodle.MainActivity
    ${Result}=  BuiltIn.Run Keyword And Return Status   Page Should Contain Element   xpath=//android.widget.TextView[text(),"Allow Minimal to send you notifications?"]
    Run Keyword If   '${RESULT}'=='True'  Tap allow notifications
    Element Should Be Visible  xpath=//android.widget.TextView[@text="Minimal"]
    Tap  id=com.avjindersinghsekhon.minimaltodo:id/addToDoItemFAB
    Page Should Contain Element  xpath=//*[@resource-id="com.avjindersinghsekhon.minimaltodo:id/toDoCustomTextInput" and @text="Title"]
    Input Text  xpath=//android.widget.EditText[@resource-id="com.avjindersinghsekhon.minimaltodo:id/userToDoEditText"]   New todo
    Tap  xpath=//android.widget.Switch[@resource-id="com.avjindersinghsekhon.minimaltodo:id/toDoHasDateSwitchCompat"]
    Tap  id=com.avjindersinghsekhon.minimaltodo:id/newTodoDateEditText[1]
    Element Should Be Visible  id=android:id/contentd
    Tap  xpath=//android.view.View[@content-desc="27 June 2024"]
    Tap  id=com.avjindersinghsekhon.minimaltodo:id/ok
    Input Text  id=com.avjindersinghsekhon.minimaltodo:id/newTodoDateEditText[2]   4:10 PM
    Page Should Contain Element   xpath=//android.widget.TextView[@resource-id="com.avjindersinghsekhon.minimaltodo:id/newToDoDateTimeReminderTextView" and @text="Reminder set for 27 Jun, 2024, 4:10 PM"]
    Tap  id=com.avjindersinghsekhon.minimaltodo:id/makeToDoFloatingActionButton
    Page Should Contain Element  xpath=//android.widget.TextView[@text="New todo"]/following-sibling::android.widget.TextView[@text="Jun 27, 2024  4:10 PM"]
    Close All Applications

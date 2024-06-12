*** Settings ***
Resource    ../../Resources/imports.robot
Variables    ../../Test_data/api/testdata.yaml


*** Test Cases ***
Get_user_profile_but_user_not_found
    [Documentation]     To verify get user profile api will return 404 not found when trying to get exist profile of not existing user 
    ...                 Test Steps:
    ...                     1. Send Get request to url https://reqres.in/api/users/1234
    ...                 Expected Result:
    ...                     1. Verify response status code should be ‘404’. 
    ...                     2. Response body should be '{}' 
    [Tags]    Get   Success
    ${response}=    GET    ${Get_user_profile_but_user_not_found['url']}  expected_status=${Get_user_profile_but_user_not_found['expected_status']}
    ${response_body}=    Set Variable    ${response.json()}
    Should Be Equal As Strings    ${response_body}    ${Get_user_profile_but_user_not_found['response']}



*** Settings ***
Resource    ../../Resources/imports.robot
Variables    ../../Test_data/api/testdata.yaml

*** Test Cases ***
Get_user_profile_success
    [Documentation]     To verify get user profile api will return correct data when trying to get profile of existing user 
    ...                 Test Steps:
    ...                     1. Send Get request to url https://reqres.in/api/users/12
    ...                 Expected Result:
    ...                     1. Verify response status code should be ‘200’ 
    ...                     2. Compare the response body with expected below. ‘ID’ == 12 ‘Email’ == rachel.howell@reqres.in ‘First Name’ == Rachel ‘Last Name’ == Howell ‘Avatar’ == https://reqres.in/img/faces/12image.jpg
    [Tags]    api   Get   Success
    ${response}=    GET    ${Get_user_profile_success['url']}
    HTTP Response Status Code Should Be 200 OK  ${response}
    ${response_body}=    Set Variable    ${response.json()}
    Verify Response Body Contains Expected Value    ${response_body}    ${Get_user_profile_success['userId']}     ${Get_user_profile_success['email']}   ${Get_user_profile_success['first_name']}    ${Get_user_profile_success['last_name']}    ${Get_user_profile_success['avatar']}
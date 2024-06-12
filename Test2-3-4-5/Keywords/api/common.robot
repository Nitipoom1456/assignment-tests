*** Settings ***
Resource    ../../Resources/imports.robot

*** Keywords ***
HTTP Response Status Code Should Be 200 OK
    [Documentation]    Check whether response status code is 200 OK
    [Arguments]    ${response}
    Should Be Equal As Strings    ${response.status_code}    200

Verify Response Body Contains Expected Value
    [Arguments]    ${response_body}    ${expected_id}   ${expected_email}   ${expected_first_name}   ${expected_last_name}  ${expected_avatar}
    [Documentation]    Check whether response body contains expected value
    Should Be Equal As Strings    ${response_body['data']['id']}    ${expected_id}
    Should Be Equal As Strings    ${response_body['data']['email']}  ${expected_email}
    Should Be Equal As Strings    ${response_body['data']['first_name']}    ${expected_first_name}
    Should Be Equal As Strings    ${response_body['data']['last_name']}    ${expected_last_name}
    Should Be Equal As Strings    ${response_body['data']['avatar']}    ${expected_avatar}

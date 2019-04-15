*** Settings ***
Documentation  A resource file containing the application specific keywords
...
...            This test has a workflow that is created using keywords in
...            the imported resource file.

Library		Selenium2Library
Library    BaseEntity

#Resource            ../CommonResource.robot
Force Tags          MainPage

Suite Setup     Login ${baseurl} ${username} ${password}
Suite Teardown  Logout

*** Variables ***
${robotVar} =            watchCo.com
${family} =              Fuji
${LOGIN URL}      http://${SERVER}/

*** Test Cases ***
Foo Test Case
    [tags]              FooTag
    [Documentation]     Created by John Doe
#    Do An Action        Argument
     Get Chrome          chrome

*** Keywords ***
Get Chrome
    [Documentation]    Получение абонента из БД
    [Arguments]    ${msisdn}

    [Return]       CHROME

Valid Login
    Open Browser To Login Page
    Input Username demo
    Input Password mode
    Submit Credentials
    Welcome Page Should Be Open
    [Teardown]  Close Browser

Open Application
    [Arguments]     ${application}
    Run Keyword If  '${family}' == 'Fuji'
    Select Navigator
    Run Keyword If  '${family}' == 'Eureka'
    Select Navigator
    Run Keyword If  '${family}' == 'Dublin' Unselect
    Frame

    Input Text filter   ${application}


Select Navigator
    Unselect Frame
    Wait Until Element Is Visible   gsft_nav
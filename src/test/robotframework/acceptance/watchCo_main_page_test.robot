*** Settings ***
 Force Tags          WatchCoMain
 Documentation       WatchCo Main Page test

 Resource            resources.robot


 Suite Setup         Set System Property         key=${webdriver_chrome}   value=${webdriver_path}
 Suite Teardown      Close All Browsers
 Test Setup          Open Browser                url=${url}          browserName=${browser}
 Test Teardown       Close Browser


*** Test Cases ***
 Template of checking Main Bar Items
    [Template]       Check Main Menu Bar Items are Clicable
        item=SALE    locator=//*[text()='Sale ']
        item=MEN     locator=//*[text()='Men']
        item=WOMEN   locator=//*[text()='Women']

 Check Location
    [tags]                 MainPage
    [Documentation]        Checking Location is '${url}'

	Location Should Be     url=${url}


*** Keywords ***
 Check Main Menu Bar Items are Clicable
    [Arguments]                     ${item}      ${locator}
    [Documentation]                 Checking Main Menu Item '${item}' - '${locator}' is clickable

    Element Should Be Clickable     ${locator}  ${item}
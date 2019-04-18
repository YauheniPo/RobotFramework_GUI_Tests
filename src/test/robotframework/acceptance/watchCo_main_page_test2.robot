*** Settings ***
 Force Tags          WatchCoMain
 Documentation       WatchCo Main Page test

 Resource            resources.robot


 Suite Setup         Set System Property         key=${webdriver_chrome}   value=${webdriver_path}
 Suite Teardown      Close All Browsers
 Test Setup          Open Browser                url=${url}          browserName=${browser}
 Test Teardown       Close Browser
 Test Template       Check Main Menu Bar Items are Visible


*** Test Cases ***
 SALE    locator=//*[text()='Sale ']
 MEN     locator=//*[text()='Men']
 WOMEN   locator=//*[text()='Women']


*** Keywords ***
 Check Main Menu Bar Items are Visible
    [Documentation]                 Checking Main Menu Item is Visible - '${locator}'
    [Arguments]                     ${locator}

    Element Should Be Visible       ${locator}
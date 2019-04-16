*** Settings ***
 Force Tags             WatchCoMain
 Documentation          WatchCo Main Page test

 Resource               resources.robot
 Resource               locators.robot


 Suite Setup            Before Suite
 Test Setup             Before Test
 Test Teardown          Close Browser
 Suite Teardown         Close All Browsers


*** Test Cases ***
 Template of checking Main Bar Items
    [Template]          Check Main Menu Bar Items are Clicable
        item=SALE       locator=${menu_bar_sale_locator}
        item=MEN        locator=${menu_bar_men_locator}
        item=WOMEN      locator=${menu_bar_women_locator}

 Check Location
    [tags]                          MainPage
    [Documentation]                 Checking Location is '${url}'

    Maximize Browser Window
	Location Should Be              url=${url}


*** Keywords ***
 Check Main Menu Bar Items are Clicable
    [Arguments]                     ${item}      ${locator}
    [Documentation]                 Checking Main Menu Item '${item}' - '${locator}' is clickable

    Maximize Browser Window
    Element Should Be Clickable     ${locator}  ${item}
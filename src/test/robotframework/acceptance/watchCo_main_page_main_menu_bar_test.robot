*** Settings ***
 Force Tags             MainPage
 Documentation          WatchCo Main Page test

 Resource               resources.robot
 Resource               locators.robot


 Suite Setup            Before Suite
 Test Setup             Before Test
 Test Template          Check Main Menu Bar Items are Visible
 Test Teardown          Close Browser
 Suite Teardown         Close All Browsers


*** Test Cases ***
 SALE                   locator=${menu_bar_sale_locator}
 MEN                    locator=${menu_bar_men_locator}
 WOMEN                  locator=${menu_bar_women_locator}


*** Keywords ***
 Check Main Menu Bar Items are Visible
    [Arguments]                     ${locator}
    [Documentation]                 Checking Main Menu Item is visible

    Element Should Be Visible       ${locator}
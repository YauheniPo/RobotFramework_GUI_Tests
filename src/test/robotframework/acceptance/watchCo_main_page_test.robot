*** Settings ***
 Force Tags             MainPage
 Documentation          WatchCo Main Page test

 Resource               resources.robot
 Resource               locators.robot


 Suite Setup            Before Suite
 Test Setup             Before Test
 Test Teardown          Close Browser
 Suite Teardown         Close All Browsers


*** Test Cases ***
 Template of checking Brands Manu Items are clickable
    [tags]                          MainPage    Smoke
    [Documentation]                 Checking Brands Menu Items are clickable

    [Template]                      Check Brands Menu Items are Clickable
                                        item=Casio Watches
                                        item=Citizen Watches
                                        item=Diesel Watches
                                        item=Fossil Watches
                                        item=Luminox Watches
                                        item=Seiko Watches
                                        item=Skagen Watches

 Template of checking Main Bar Items are clickable
     [tags]                         MainPage    Smoke
     [Documentation]                Checking Main Bar Items are clickable

     [Template]                     Element Should Be Clickable
                                        locator=${menu_bar_sale_locator}
                                        locator=${menu_bar_men_locator}
                                        locator=${menu_bar_women_locator}

 Check Location
    [tags]                          MainPage    Smoke
    [Documentation]                 Checking Location is ${url}

	Location Should Be              url=${url}


*** Keywords ***
 Check Brands Menu Items are Clickable
    [Documentation]                 Checking Barnd Menu Item is clickable
    [Arguments]                     ${item}

    ${locator} =                    Get Brand Menu Locator ${item}
    Element Should Be Clickable     ${locator}     ${item}: locator - ${locator}

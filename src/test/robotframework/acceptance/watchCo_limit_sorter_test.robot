*** Settings ***
 Force Tags             Sorter
 Documentation          WatchCo Main Page test

 Resource               resources.robot
 Resource               locators.robot


 Suite Setup            Before Suite
 Test Setup             Before Test
 Test Template          Check Brand Products Show Limiter
 Test Teardown          Close Browser
 Suite Teardown         Close All Browsers


*** Test Cases ***
 Limit 12               limit=12     brand=Casio Watches
 Limit 24               limit=24     brand=Casio Watches
 Limit 36               limit=36     brand=Casio Watches
 Limit 48               limit=48     brand=Casio Watches


*** Keywords ***
 Check Brand Products Show Limiter
    [Documentation]                 Checking Brand Products Show Limiter
    [Arguments]                     ${limit}     ${brand}

    ${locator} =                    Get Brand Menu Locator ${brand}
    Click Element                   locator=${locator}
    Select From List By Label       ${brand_sorter_limiter}             ${limit}
    ${product_sorter_items} =       Get Matching Xpath Count            xpath=${brand_sorter_items}

    Should Be Equal as Numbers      first=${limit}                      second=${product_sorter_items}
    ...                             msg=Expected Result: ${limit}; Actual Result: ${product_sorter_items}
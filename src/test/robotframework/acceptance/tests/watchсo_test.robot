*** Settings ***

 Force Tags             Test

 Documentation          WatchCo Main Page tests

 Resource               ../framework/resources.robot
 Resource               ../pages/watchco_main_page.robot
 Resource               ../pages/watchco_brand_page.robot
 Resource               ../constants.robot


 Suite Setup            Before Suite
 Test Setup             Before Test
 Test Teardown          Close Browser
 Suite Teardown         Close All Browsers


*** Test Cases ***

 Click to Men Brand Item from Main Menu Bar and Check Title
    [tags]                                            Brand     Smoke
    [Documentation]                                   Click to Main Menu Bar Item and Check Title

    watchco_main_page.Click to Main Menu Bar Item     ${menu_bar_men_locator}       ${menu_bar_mens_casio}
    ${title} =                                        watchco_brand_page.Get Title
    Should Be Equal                                   ${title}                      ${brand_casio_mens_watches_title}

 Check Brand Products Show Limiter
    [tags]                                            Brand     Smoke
    [Documentation]                                   Checking Brand Products Show Limiter

    ${count} =                                        Set Variable                  24
    watchco_main_page.Click to Main Menu Bar Item     ${menu_bar_men_locator}       ${menu_bar_mens_casio}
    watchco_brand_page.Select products Limit          limit=${count}
    ${actual_count} =                                 watchco_brand_page.Get Product Count
    Should Be Equal as Numbers                        first=${count}                second=${actual_count}
    ...                                               msg=Expected Result: ${count}; Actual Result: ${actual_count}

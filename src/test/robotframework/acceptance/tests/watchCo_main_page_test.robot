*** Settings ***
 Force Tags             MainPage
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
 Click to Men Brand Item in Main Menu Bar and Check Title
    [tags]                                            MainPage    Smoke
    [Documentation]                                   Click to Main Menu Bar Item and Check Title

    watchco_main_page.Click to Main Menu Bar Item     ${menu_bar_men_locator}     ${menu_bar_mens_casio}
    ${title} =                                        watchco_brand_page.Get Title
    Should Be Equal                                   ${title}                    Casio Men's Watches

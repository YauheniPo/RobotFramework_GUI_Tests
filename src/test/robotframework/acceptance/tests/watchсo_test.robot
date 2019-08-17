*** Settings ***

 Force Tags             Test

 Documentation          WatchCo tests

 Resource               ../framework/resources.robot
 Resource               ../pages/watchco_main_page.robot
 Resource               ../pages/watchco_brand_page.robot
 Resource               ../pages/watchco_product_page.robot
 Resource               ../pages/watchco_checkout_page.robot
 Resource               ../constants.robot


 Suite Setup            Before Suite
 Test Setup             Before Test
 Test Teardown          Close Browser
 Suite Teardown         Close All Browsers


*** Test Cases ***

 Click to Men Brand Item from Main Menu Bar and Check Title
    [tags]                                            Brand     Smoke
    [Documentation]                                   Click to Main Menu Bar Item and Check Title

    watchco_main_page.Click to Main Menu Bar Item     ${loc_menu_bar_men}                       ${menu_bar_mens_casio}
    ${title} =                                        watchco_brand_page.Get Title
    Should Be Equal                                   ${title}                                  ${brand_casio_mens_watches_title}

 Check Brand Products Show Limiter
    [tags]                                            Brand     Smoke
    [Documentation]                                   Checking Brand Products Show Limiter

    ${count} =                                        Set Variable                              12
    watchco_main_page.Click to Main Menu Bar Item     ${loc_menu_bar_men}                       ${menu_bar_mens_casio}
    watchco_brand_page.Select products Limit          limit=${count}
    ${actual_count} =                                 watchco_brand_page.Get Product Count
    Should Be Equal as Numbers                        first=${count}                            second=${actual_count}
    ...                                               msg=Expected Result: ${count}; Actual Result: ${actual_count}

 Check Add to Cart Button is exist
    [tags]                                            Brand     Smoke
    [Documentation]                                   Check Add to Cart Button is exist

    watchco_main_page.Click to Main Menu Bar Item     ${loc_menu_bar_men}                       ${menu_bar_mens_casio}
    watchco_brand_page.Click Brand Item               index=0
    Element Should Be Visible                         locator=${loc_product_add_to_cart_btn}
    ...                                               message=Button 'Add to Cart' does not vasible

 Check Product Item was added to Cart Icon
    [tags]                                            Brand     Smoke
    [Documentation]                                   Check Product Item was added to Cart Icon

    watchco_main_page.Click to Main Menu Bar Item     ${loc_menu_bar_men}                       ${menu_bar_mens_casio}
    watchco_brand_page.Click Brand Item               index=0
    ${product_label} =                                watchco_product_page.Get Product Label
    watchco_product_page.Click 'Add to Cart' Button
    watchco_checkout_page.Click 'Continue Shopping' Button
    header.Hover to Cart Icon
    ${cart_product_label} =                           header.Get Product Label
    Should Be Equal                                   first=${product_label}                    second=${cart_product_label}
    ...                                               msg=Product Label: ${product_label}; is unequal with Product Label from Cart Icon: ${cart_product_label}

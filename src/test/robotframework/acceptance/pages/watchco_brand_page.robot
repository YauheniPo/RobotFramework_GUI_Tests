*** Settings ***

 Documentation          WatchCo Brand Page

 Resource               locators.robot


*** Variables ***



*** Keywords ***

 Get Title
    [Documentation]                     Get Title

    ${title} =                          Get Text           ${brand_title}
    [Return]                            ${title}

 Select products Limit
    [Documentation]                     Select products Limit
    [Arguments]                         ${limit}

    Select From List By Label           ${brand_sorter_limiter}             ${limit}

 Get Product Count
    [Documentation]                     Get Product Count

    ${product_sorter_items} =           Get Matching Xpath Count            xpath=${brand_sorter_items}
    [Return]                            ${product_sorter_items}

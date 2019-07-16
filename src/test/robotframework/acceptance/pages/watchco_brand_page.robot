*** Settings ***

 Documentation          WatchCo Brand Page

 Resource               header.robot

 Library                org.robotframework.javalib.library.AnnotationLibrary        popot/robot/**.class


*** Variables ***

 ${loc_brand_sorter_limiter} =          //*[@class='sorter']//*[@class='limiter']//select
 ${loc_brand_sorter_items} =            //*[contains(@class, 'products')]//li[contains(@class, 'item')]
 ${loc_brand_title} =                   //*[@class='main container']//h1
 ${loc_brand_products_panel} =          //ul[contains(@class, 'products')]


*** Keywords ***

 Get Title
    [Documentation]                     Get Title

    ${title} =                          Get Text                                    ${loc_brand_title}
    [Return]                            ${title}

 Select products Limit
    [Documentation]                     Select products Limit
    [Arguments]                         ${limit}

    Select From List By Label           ${loc_brand_sorter_limiter}                 ${limit}

 Get Product Count
    [Documentation]                     Get Product Count

    ${product_sorter_items} =           Get Matching Xpath Count                    xpath=${loc_brand_sorter_items}
    [Return]                            ${product_sorter_items}

 Click Brand Item
    [Documentation]                     Click Brand Item
    [Arguments]                         ${index}

    Click Element By Index              xpath=${loc_brand_products_panel}//li       index=${index}


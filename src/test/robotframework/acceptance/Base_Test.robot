*** Settings ***
Documentation     A resource file containing the application specific keywords
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.
Force Tags        Base
Resource          Base.robot
Library           String
Library           Collections

 Default Tags       tag


*** Test Cases ***
Check google
    [Setup]  Log     ${path}
    [Tags]   smoke
	Set Suite Variable     ${webdriver.chrome.driver}    ${path}
	Log     ${webdriver.chrome.driver}
    Set System Property     key=${driver}   value=${path}
#    Set Environment Variable       name=${driver}    value=${path}
    Open Browser     url=${url}          browserName=${browser}
	Set Browser Implicit Wait   5
	Run Keyword If   '${browser}' == 'chrome'     Input Text    locator=//*[@name='q']      text=EPAM
    ...       ELSE                                Input Text    locator=//*[@name='q']      text=EPAMM
    Press Key   locator=//*[@name='q']    key=\uE00C

    ${sys_target} =       Get Value    locator=//div[not(@jsname)]/center/*[@name='btnK']
    Set Test Variable   ${sys_target}
    Log     ${sys_target}

    Set Tags     tag2
    Remove Tags     tag2
    Click Button    locator=//div[not(@jsname)]/center/*[@name='btnK']
#    Sleep   2
	[Teardown]  Close Browser

For-Loop-In-Range
    :FOR    ${INDEX}    IN RANGE    1    3
    \    Log    ${INDEX}
    \    ${RANDOM_STRING}=    Generate Random String    ${INDEX}
    \    Log    ${RANDOM_STRING}

For-Loop-Elements
    @{ITEMS}    Create List    Star Trek    Star Wars    Perry Rhodan
    :FOR    ${ELEMENT}    IN    @{ITEMS}
    \    Log    ${ELEMENT}
    \    ${ELEMENT}    Replace String    ${ELEMENT}    ${SPACE}    ${EMPTY}
    \    Log    ${ELEMENT}

For-Loop-Exiting
    @{ITEMS}    Create List    Good Element 1    Break On Me    Good Element 2
    :FOR    ${ELEMENT}    IN    @{ITEMS}
    \    Log    ${ELEMENT}
    \    Run Keyword If    '${ELEMENT}' == 'Break On Me'    Exit For Loop
    \    Log    Do more actions here ...

StringsAndLists
    ${SOME_VALUE}=    Set Variable    "Test Value"
    Log    ${SOME_VALUE}
    @{WORDS}=    Split String    ${SOME_VALUE}    ${SPACE}
    ${FIRST}=    Get From List    ${WORDS}    0
    Log    ${FIRST}

Run-Keyword
    ${MY_KEYWORD}=    Set Variable    Log
    Run Keyword    ${MY_KEYWORD}    Test

Run-Keyword-If
    ${TYPE}=    Set Variable    V1
    Run Keyword If    '${TYPE}' == 'V1'    Log    Testing Variant 1
    Run Keyword If    '${TYPE}' == 'V2'    Log    Testing Variant 2
    Run Keyword If    '${TYPE}' == 'V3'    Log    Testing Variant 3

Run-Keyword-Ignore-Error
    @{CAPTAINS}    Create List    Picard    Kirk    Archer
    Run Keyword And Ignore Error    Should Be Empty    ${CAPTAINS}
    Log    Reached this point despite of error


 Stackoverflow
     ${options}=  Evaluate  sys.modules['selenium.webdriver'].ChromeOptions()  sys, selenium.webdriver
     Call Method    ${options}    add_argument      always-authorize-plugins
     Call Method    ${options}    add_argument      enable-npapi
     Create WebDriver  Chrome    chrome_options=${options}
     Go To    https://www.java.com/verify
     Close All Browsers

 Get WebDriver Path
    [Documentation]

    ${os} =                     Get System Property         key=os.name
    ${is_windows}               Is Contain String Ignore Case    value${os}   string=Windows
    ${webdriver_path} =         Run Keyword If      True==${is_windows}
    ...                                             Set Variable    ${webdriver_path}${chromedriver_win}
    ...                         ELSE                Set Variable    ${webdriver_path}${chromedriver_unix}
    [Return]                    ${webdriver_path}
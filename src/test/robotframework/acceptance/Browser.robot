*** Settings ***

#Library    ../robot_java_gui_testing/Setup.class
Library    Selenium2Library
Suite Setup     Setup
Suite Teardown  Selenium2Library.Close Browser


*** Variables ***
${browser}=    chrome
#${Driver_Path}=     C:${/}webdriver${/}chromedriver.exe
${Driver_Path}=     C:\Users\Xiaomi\Google Диск\popo\java\robot_java_gui_testing\src\test\resources\chromedriver.exe

*** Test Cases ***
Open Google
    [tags]              FooTag
    [Documentation]     Created by John Doe
    Run     
    Open Browser    https://www.google.com      browserName=${browser}
    Sleep   2
    Capture Page Screenshot

*** Keyword ***
Setup
#    Set Environment Variable    webdriver.chrome.driver   ${Driver_Path}
    Log     log

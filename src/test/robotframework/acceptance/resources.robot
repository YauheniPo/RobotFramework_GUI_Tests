*** Settings ***
 Documentation                  Resources

 Library		                Selenium2Library
 Library		                String

 Library                        org.robotframework.javalib.library.AnnotationLibrary     popot/robot/**.class


*** Variables ***
 ${webdriver_chrome} =          webdriver.chrome.driver
 ${chromedriver} =              chromedriver.exe
 ${webdriver_path} =            ${CURDIR}${/}..${/}..${/}resources${/}${chromedriver}
 ${browser} =                   chrome
 ${url} =                       https://www.watchco.com/
 ${implicit_wait} =             20


*** Keywords ***
 Before Suite
    [Documentation]             Set path to webdriver: '${webdriver_chrome}' - '${webdriver_path}'

    Set System Property         key=${webdriver_chrome}     value=${webdriver_path}

 Before Test
    [Documentation]             Open Browser '${browser}' for '${url}'

    Open Browser                url=${url}                  browserName=${browser}
    Maximize Browser Window
    Set Browser Implicit Wait   timestr=${implicit_wait}

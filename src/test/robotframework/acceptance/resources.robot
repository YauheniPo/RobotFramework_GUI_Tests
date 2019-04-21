*** Settings ***
 Documentation                  Resources

 Library		                Selenium2Library
 Library		                String

 Library                        org.robotframework.javalib.library.AnnotationLibrary     popot/robot/**.class


*** Variables ***
 ${resources_path} =            ${CURDIR}${/}..${/}..${/}resources${/}
 ${browser} =                   chrome
 ${url} =                       https://www.watchco.com/
 ${implicit_wait} =             20


*** Keywords ***
 Before Suite
    [Documentation]             Set path to webdriver for '${browser}' browser

    Set WebDriver Path          browser=${browser}

 Before Test
    [Documentation]             Open Browser '${browser}' for '${url}'

    Open Browser                url=${url}                  browserName=${browser}
    Maximize Browser Window
    Set Browser Implicit Wait   timestr=${implicit_wait}

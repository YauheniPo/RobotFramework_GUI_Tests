*** Settings ***
 Documentation      Base Settings and Data
 Force Tags         Base
 Suite Setup        Run Keywords
 ...                Login To System    AND
 ...                Add User           AND
 ...                Activate Alarms    AND
 ...                Check Balance

 Library	        Selenium2Library
 Library	        OperatingSystem
 Library            org.robotframework.javalib.library.ClassPathLibrary      popot/robot/**.class
 Library            org.robotframework.javalib.library.AnnotationLibrary     popot/robot/**.class


*** Variables ***
 ${driver} =              webdriver.chrome.driver
 ${chromedriver} =        chromedriver.exe
 ${path} =                ${CURDIR}${/}..${/}..${/}resources${/}${chromedriver}
 ${browser} =             chrome
 ${url} =                 https://www.google.com
 ${resources_path} =      ${CURDIR}${/}..${/}..${/}resources${/}

 @{list} =                item1  item2  item3
 #&{dict} =                k=v       &{dict}[k]

*** Keywords ***
 Valid Login
    Open Browser To Login Page      @{list}[0]
    Input Username demo
    Input Password mode
    Submit Credentials
    Welcome Page Should Be Open
    Log                             %{os}   %{username}
    [Teardown]  Close Browser
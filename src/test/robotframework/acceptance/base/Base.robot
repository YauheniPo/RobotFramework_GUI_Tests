*** Settings ***
 Documentation      Base Settings and Data
 Force Tags         Base

 Library	        SeleniumLibrary
 Library	        OperatingSystem
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

*** Test Cases ***

Base Test
    [Tags]   base
#    Log      message=@{list}
#    @{list2} =      Sort String List    list=@{list}    order=Ascending
#    Log     message=@{list2}
    ${str} =     Get String By Regexp Group   'aaa, bbb'    '([A-Za-z]+),\\s+([A-Za-z]+)(\\s+([A-Za-z]+))?'     2
    Log     ${str}
    ${bool} =    Is Text Match Pattern      111     regExpPattern=\\w
    Log     ${bool}
    ${match}	${group1}	${group2} =
    ...	        Should Match Regexp	        Bar: 43 	(Foo|Bar): (\\d+)
    Log     ${match}
    Log     ${group1}
    Log     ${group2}
*** Settings ***
Documentation  Base Settings and Data

Library		Selenium2Library
Library		OperatingSystem
#Library     org.robotframework.javalib.library.ClassPathLibrary      popot/robot/**.class
Library     org.robotframework.javalib.library.AnnotationLibrary     popot/robot/**.class

*** Variables ***
${driver} =      webdriver.chrome.driver
${chromedriver} =        chromedriver.exe
${path} =        ${CURDIR}${/}..${/}..${/}resources${/}${chromedriver}
${browser} =     chrome
${url} =         https://www.google.com

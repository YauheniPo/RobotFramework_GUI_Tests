*** Settings ***
Documentation  A resource file containing the application specific keywords
Library		Selenium2Library
Library     org.robotframework.javalib.library.ClassPathLibrary      popot/robot/**.class
Library     org.robotframework.javalib.library.AnnotationLibrary     popot/robot/**.class

*** Test Cases ***
Check out joe colantonio dot com
    Set Driver
	Open Browser   https://www.google.com   chrome
	Close Browser
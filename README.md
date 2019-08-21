[![Build Status](https://dev.azure.com/YauheniPo/WebTestFramework/_apis/build/status/YauheniPo.RobotFramework_GUI_Tests?branchName=develop)](https://dev.azure.com/YauheniPo/WebTestFramework/_build/latest?definitionId=6&branchName=develop)

# RobotFramework_GUI_Tests

mvn clean compile robotframework:run
mvn clean compile robotframework:run -Dincludes=tagg
mvn clean compile robotframework:run -Dincludes=MainPage,Sorter
mvn clean compile robotframework:run -Dexcludes=Base

mvn clean compile robotframework:run -Dsuites=acceptance.tests.watchCo_main_page_test
mvn clean compile robotframework:run -Dvariables=browser:ie -Dsuites=acceptance.Test_Case_1         - ${browser} =      chrome


https://robotframework.org/#libraries
http://robotframework.org/MavenPlugin/run-mojo.html#variables
http://robotframework.org/robotframework/#built-in-tools
http://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html
https://github.com/MarkusBernhardt/robotframework-selenium2library-java#readme
http://central.maven.org/maven2/com/github/hi-fi/robotframework-seleniumlibrary/3.141.59.2/robotframework-seleniumlibrary-3.141.59.2.html
https://github.com/Hi-Fi/robotframework-seleniumlibrary-java

# RobotFramework_GUI_Tests

mvn clean compile robotframework:run
mvn clean compile robotframework:run -Dincludes=tagg
mvn clean compile robotframework:run -Dincludes=MainPage,Sorter
mvn clean compile robotframework:run -Dexcludes=Base

mvn clean compile robotframework:run -Dsuites=acceptance.Test_Case_1
mvn clean compile robotframework:run -Dvariables=browser:ie -Dsuites=acceptance.Test_Case_1         - ${browser} =      chrome


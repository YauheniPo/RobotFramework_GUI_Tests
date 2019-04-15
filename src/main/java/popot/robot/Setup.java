package popot.robot;

import org.robotframework.javalib.annotation.ArgumentNames;
import org.robotframework.javalib.annotation.RobotKeyword;
import org.robotframework.javalib.annotation.RobotKeywords;

@RobotKeywords
public class Setup {

    @RobotKeyword
    @ArgumentNames({"driver", "path"})
    public void setSystemProperty(String driver, String path) {
        System.setProperty(driver, System.getProperty("user.dir") + path);
    }
}

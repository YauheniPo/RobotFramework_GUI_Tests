package popot.robot;

import org.robotframework.javalib.annotation.ArgumentNames;
import org.robotframework.javalib.annotation.RobotKeyword;
import org.robotframework.javalib.annotation.RobotKeywords;

@RobotKeywords
public class Setup {

    @RobotKeyword("Set System Property")
    @ArgumentNames({"key", "value"})
    public void setSystemProperty(String key, String value) {
        System.setProperty(key, value);
    }
}

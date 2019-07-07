package popot.robot.keyword;

import com.github.markusbernhardt.seleniumlibrary.SeleniumLibraryNonFatalException;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.robotframework.javalib.annotation.ArgumentNames;
import org.robotframework.javalib.annotation.RobotKeyword;
import org.robotframework.javalib.annotation.RobotKeywords;

import java.util.List;

@RobotKeywords
public class Element extends CustomRobotElement {

    public Element() throws NoSuchFieldException, IllegalAccessException {
    }

    @RobotKeyword("Click To Element from List Elements by Locator.")
    @ArgumentNames({"locator", "index=0", "message=NONE"})
    public void clickToElement(String locator, String... params) {
        String message = getRobot().getParamsValue(params, 0, "");
        int index = getRobot().getParamsValue(params, 1, 0);
        List<WebElement> elements = getCurrentBrowser().findElements(By.xpath(locator));
        if (elements.isEmpty()) {
            if (message.isEmpty()) {
                message = String.format("The Element was not found by locator '%s' with index '%d'", locator, index);
            }
            throw new SeleniumLibraryNonFatalException(message);
        }
        WebElement element = elements.get(index);
        element.click();
    }
}

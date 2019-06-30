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

    @RobotKeyword("Click to First Item from List Items by Locator.")
    @ArgumentNames({"locator", "childLocator=NONE", "message=NONE"})
    public void clickToFirstItem(String locator, String... params) {
        String childLocator = getRobot().getParamsValue(params, 0, "");
        String message = getRobot().getParamsValue(params, 1, "");
        List<WebElement> elements = getCurrentBrowser().findElements(By.xpath(locator));
        if (elements.isEmpty()) {
            if (message.isEmpty()) {
                message = String.format("The Element was not found by locator '%s' and child locator '%s'.",
                        locator, childLocator);
            }
            throw new SeleniumLibraryNonFatalException(message);
        }
        WebElement element = elements.get(0);
        if (!childLocator.isEmpty()) {
            element.findElements(By.xpath(childLocator)).get(0).click();
        } else {
            element.click();
        }
    }
}

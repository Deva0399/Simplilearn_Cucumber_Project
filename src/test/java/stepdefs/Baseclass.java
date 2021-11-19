package stepdefs;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

import io.cucumber.java.After;
import io.cucumber.java.Before;

public class Baseclass {
	
	public static WebDriver driver;
	
	@Before
	public void Setup() {
		driver = new ChromeDriver();
        driver.get("https://www.simplilearn.com/");
		
	}
	
	@After
	public void TearDown() {
		driver.quit();
		
	}

}

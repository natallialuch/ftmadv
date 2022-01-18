Description: Vividus - task 1

Scenario: Sign Up
Given I am on the main application page
When I click on element located `By.xpath(//a[text()="Sign up"])`
When I enter `<email>` in field located `By.xpath(//*[@id="email"])`
When I click on an element by the xpath '//*[@id="signup-submit"]'
When I wait until element located `By.xpath(//*[@id="displayName"])` appears
When I enter `<fullname>` in field located `By.xpath(//*[@id="displayName"])`
When I click on an element by the xpath '//*[@id="signup-submit"]'
Then an element by the xpath '/html/body/div[3]/div[2]/iframe' exists

Examples:
|email                   |fullname|
|natalieluch@gmail.com   |natalie |
|testusertrello@yandex.by|TestUser|





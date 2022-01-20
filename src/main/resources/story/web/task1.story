Description: Vividus - task 1

Scenario: Sign Up (examples table)
Given I am on the main application page
When I click on element located `By.xpath(//a[text()="Sign up"])`
When I enter `<email>` in field located `By.xpath(//*[@id="email"])`
When I click on an element by the xpath '//*[@id="signup-submit"]'
When I wait until element located `By.xpath(//*[@id="displayName"])` appears
When I enter `<fullname>` in field located `By.xpath(//*[@id="displayName"])`
When I click on an element by the xpath '//*[@id="signup-submit"]'
When I wait until element located `By.xpath(//*[@id="content"])` appears
Then the text 'Let�s set up your Workspace' exists

Examples:
|email                   |fullname|
|natalieluch@gmail.com   |natalie |
|testusertrello@yandex.by|TestUser|







Description: Vividus - task 2

Scenario: Sign in
Given I am on the main application page
When I click on element located `By.xpath(//a[text()="Log in"])`
When I enter `${UserEmail}` in field located `By.xpath(//*[@id="user"])`
When I click on element located `By.xpath(//*[@id="login"])`
When I wait until element located `By.xpath(//*[@id="password"])` appears
When I enter `${UserPass}` in field located `By.xpath(//*[@id="password"])`
When I click on element located `By.xpath(//*[@id="login-submit"])`
When I wait until element located `By.xpath(//*[@id="content"])` appears
Then the page with the URL containing '/boards' is loaded


Scenario: Verify user profile
When I click on element located `By.xpath(//*[@data-test-id="header-member-menu-button"])`
When I click on element located `By.xpath(//a[contains(@href,"profile")])`
Then the text 'Manage your personal information' exists


Scenario: Navigation to 5 pages and visual check
When I establish baseline with `profile`
When I click on element located `By.xpath(//a[@data-tab="activity"])`
Then the text 'Load more activity' exists
When I click on element located `By.xpath(//a[@data-tab="cards"])`
Then the text 'No visible cards. You must be added to a card for it to appear here' exists
When I click on element located `By.xpath(//a[@data-tab="settings"])`
When I click on element located `By.xpath(//a[@data-tab="profile"])`
When I compare against baseline with `profile`
When I click on element located `By.xpath(//*[@aria-label="Back to home"])`
When I create a board













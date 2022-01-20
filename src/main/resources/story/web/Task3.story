Description: Vividus - task 3

Scenario: UI controls validation
Given I am on the main application page
When I log in as a registered user
Then the page with the URL containing '/boards' is loaded
When the condition '#{eval("text"=="Recently viewed")}' is true I do
|step|
|When I click on element located `By.xpath(//[@title="Click to star this board. It will be added to your starred list."])`|
|Then the text 'Starred boards' exists                                                                                    |
When I establish baseline with `Header` ignoring:
|AREA                             |
|By.cssSelector(#popover-boundary)|
When I click on element located `By.xpath(//*[@data-test-id="header-member-menu-button"])`
When I click on element located `By.xpath(//a[contains(@href,"profile")])`
When I find >= `1` elements by `By.xpath(//*[@class="tabbed-pane-nav-item"])` and for each element do
|step|
|When I check inequality against baseline with `Header`|















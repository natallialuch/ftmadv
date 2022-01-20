Description: API test case

Scenario: Trello Board creation
When I send HTTP POST to the relative URL '/1/boards/?name=board&key=1578e9bd492e1fe45ffa8e585677845f&token=ad94d61ef794c28475a209c20a4955702ae200d4bed7eaf4491b589cc6b5d59e'
Then `${responseCode}` is equal to `200`



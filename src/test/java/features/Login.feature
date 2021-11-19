@LoginFeature
Feature: Login Feature

  Background: Open the Login Page
    Given User has navigated to the login page

  @Regression @Sanity
  Scenario: Positive Login Scenario
    When User enters correct username and password
    And User clicks on the login Button
    Then user should be navigated to the Home Page

  @Regression
  Scenario: Positive Login Scenario with Parameters
    When User enters correct username "abc@xyz" and password "abc@123"
    And User clicks on the login Button
    Then user should be navigated to the Home Page

  @Test1
  Scenario Outline: Positive Login Scenario with multiple users
    When User enters correct username "<UserName>" and password "<Password>"
    And User clicks on the login Button
    Then user should be navigated to the Home Page

    Examples: 
      | UserName      | Password |
      | abc@xyz.com   | Acb@1234 |
      | ddvs@abcz.com | Sdg@1235 |
      | sfdg@fdg.com  | Sfd@3456 |

  @Test2
  Scenario Outline: Negative Login Scenario with multiple users
    When User enters correct username "<UserName>" and password "<Password>"
    And User clicks on the login Button
    Then user should be getting the error message "<Error>"

    Examples: 
      | UserName      | Password | Error                                              |
      | abc@xyz.com   | Acb@1234 | The email or password you have entered is invalid. |
      | ddvs@abcz.com | Sdg@1235 | The email or password you have entered is invalid. |
      | sfdg@fdg.com  | Sfd@3456 | The email or password you have entered is invalid. |

  @DataTable
  Scenario: Positive Login Scenario with Cucumber DataTable
    When User enters correct credentials
      | Feild    | Value       |
      | UserName | Abc@xyz.com |
      | Password | Abc@1234    |
    And User clicks on the login Button
    Then user should be navigated to the Home Page

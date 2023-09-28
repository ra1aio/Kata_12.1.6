# language: en
@all
Feature: Working with login

  # ���. ���� �� ����������
  @positive
  Scenario: Authorization under an existing user
    Given The user opens the main page
    When The user accepts cookies
    Then The cookie-pop-up is no longer displayed
    When The user clicks on the account button
    And The user clicks the Sing In button
    When The user fills in the email field "srtdf@sda.re"
    And The user fills in the password field "Pa$$w0rd"
    And The user clicks the account login button
    Then The account's side bar opens with the text "Ivan's Account"

  @negative
  Scenario: Login without filling in email
    Given The user opens the main page
    When The user accepts cookies
    Then The cookie-pop-up is no longer displayed
    When The user clicks on the account button
    And The user clicks the Sing In button
    And The user fills in the password field "Pa$$w0rd"
    And The user clicks the account login button
    Then A message appears with a blank email error

  @negative
  Scenario: Login without filling in password
    Given The user opens the main page
    When The user accepts cookies
    Then The cookie-pop-up is no longer displayed
    When The user clicks on the account button
    And The user clicks the Sing In button
    When The user fills in the email field "srtdf@sda.re"
    And The user clicks the account login button
    Then A message appears with a blank password error
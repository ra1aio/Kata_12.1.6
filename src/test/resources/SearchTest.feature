# language: en
  @all
Feature: Working with search

    Scenario: Search by article 0436
      Given The user opens the main page
      When The user accepts cookies
      Then The cookie-pop-up is no longer displayed
      When The user clicks on the search button
      When The user enters text in the search field "0436"
      And Clicks on the search button
      Then A page opens with 23 elements
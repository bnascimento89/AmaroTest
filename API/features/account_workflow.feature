# language: en
# encoding: utf-8

Feature: Account Workflow

  Scenario: Login with success
    Given a customer try to login in Amaro's site
    And already have an account
    And send a correct password
    Then the costumer should log in Amaro's site

  Scenario: Register
    Given a customer try to login in Amaro's site
    And doesn't have an account
    And fill the register form
    Then the costumer should be register in Amaro's site

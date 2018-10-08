# language: en
# encoding: utf-8

Feature: Login

Background:
Given I am in Amaro's webpage

@loginEmailFailed
  Scenario: Login with no-existing email
    Given the customer wants to login
    And fill the form with an incorrect email
    Then the customer should see an error email message

@loginPasswordFailed
  Scenario: Login with no-existing email
    Given the customer wants to login
    And fill the form with an incorrect password
    Then the customer should see an error password message

  @loginSuccess
  Scenario: Login with success
    Given the customer wants to login
    And fill the form with his datas
    Then the customer should be logged

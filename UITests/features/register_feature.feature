# language: en
# encoding: utf-8

Feature: Register

Background:
Given I am in Amaro's webpage

@register
  Scenario: Register with sucess
  Given the costumer wants to create an account
  And fill the form with all requested datas
  Then the costumer should have an account created

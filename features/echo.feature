@nonnative
Feature: Echo Server and Client

  Allows us to start a echo server and use an echo client to get a response.

  Scenario: Successful Response
    When we send "test" with the echo client
    Then we should receive a "test" response

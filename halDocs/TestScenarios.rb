Example Scenario:
--------------------------------------------------------------------------------
Given I visit CafeWell with a 'test' user for 'welltok/adapt'
When on validate email, I skip the validation if it appears

When on the nav bar, I go to my profile
And on my profile, I add 'Integration - NPF' as a Health Interest
And on my profile, I add 'HAL - Automated Testing' as a Health Interest

When on the nav bar, I go to the homepage
When on the itinerary, I join the program 'Integration - NPF Rewards - 12/26/17 A'
When on the itinerary, I leave the current program
When on the itinerary, I join the program 'Integration - NPF Rewards - 12/26/17 A'
When on the itinerary, I leave the current program
When on the itinerary, I join the program 'Integration - NPF Rewards - 12/26/17 A'
When on the itinerary, I leave the current program

When on the itinerary, I join the program 'Integration - NPF Rewards - 12/26/17 A'
When on the itinerary, I complete the 1st activity for the current program
When on the itinerary, I close the program completed modal

When on the nav bar, I wait for a reward to be visible
Then on the nav bar, I see a reward of '10' granted for 'Hermes BRE'


Parameters
Any cucumber step can accept any number of parameters. The practice for HAL is to surround any parameters in a step with quotes.
This helps to identify, at a glance, exactly what can be changed in a step and what is driving it.


Another Example:
Scenario: User can sign up for scheduled event
# --> Naming the test scenario so that we can locate and identify the possible issues

    Given I visit CafeWell with a 'test' user for 'welltok/bdd'
    # -> Here we start the test by visiting CafeWell portal and registering new user. We provide arguments for a type of user - 'test' and a sponsor for this user - 'welltok/bdd'
    When on validate email, I skip the validation if it appears
    # -> This step is going to identify the email validation page in case if it appears and skip it, thus allowing the framework to proceed to the next page

    When on the navbar, I go to 'Event Scheduling/SES' using the menu
    # -> Here we identify the namespace as navbar and we state that we want to go to a menu item provided as an argument. We know that main menu is part of navbar so we have clearly expressed our intent to navigate to a particular menu item
    Then on the events results, I see the group 'HAL - Group 1'
    # -> Here we have a validation statement. We expect the available events to appear and we want to see a group (name of the group is provided as an argument)

    When on the events results, I view the events for 'HAL - Group 1'
    # -> This line states that we are 'on the events results' namespace and we want to view the available events of the group 'HAL - Group 1'
    Then on the event group page, I see the 'HAL - Event 1' event
    # -> Here we are referring to the group page, and we want to confirm that the event provided as an argument is presented on the page

    When on the event group page, I visit the 'HAL - Event 1' event page
    # -> Here we want to visit the 'Event 1' page available at the group page
    Then on the event page, I see the 'events date' 'Thursday, December 3rd 2020'
    # -> This line validates that on the event page we can see text field with the event's date and it should be equal to provided argument
    And on the event page, I see the 'events address' '100 Main st. Boston. MA'
    # -> This line is one more validation that the page contains the event's address

    When on the event page, I join the time slot for '1:00 am'
    # -> Here we want to join the particular time slot for the current event, time is provided as an argument
    Then on the event time slot modal, I see the reservation time '1:00 AM'
    # -> Here we switch the namespace to a popped up modal window and we confirm that the confirmation contains the right data

    When on the event time slot modal, I close the modal
    # -> Here we close the confirmation modal window
    Then on the event page, I see that I have signed up for '1:00 AM'
    # -> Here we are coming back to event page and confirm that we are signed up for the right time
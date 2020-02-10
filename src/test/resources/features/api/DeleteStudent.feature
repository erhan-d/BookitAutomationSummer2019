@api @delete_student
Feature: Delete student
  Scenario Outline: 1. Delete student as <role> and verify status code 403 (negative)
    Given authorization token is provided for "<role>"
    And user accepts content type as "application/json"
    When user sends DELETE request to "/api/students/1760" to exclude student
    And user verifies that response status code is 403
    And user verifies that status line contains "Forbidden"
    Examples: roles
      | role        |
      | team member |
      | team leader |

# pay attention, on student id that you specify.
#  you can delete only once
#  so id should change

  @ignore
  Scenario:  Delete student as a teacher and verify status code 204(positive)
    Given authorization token is provided for "teacher"
    And user accepts content type as "application/json"
    When user sends DELETE request to "/api/students/5954" to exclude student
    And user verifies that response status code is 204


  Scenario:Try to Delete a student with incorrect id  and verify status code 422(negetive)
    Given authorization token is provided for "teacher"
    And user accepts content type as "application/json"
    When user sends DELETE request to "/api/students/0" to exclude student
    And user verifies that response status code is 422
    And user verifies that payload contains "requested student-id resource was not found." message

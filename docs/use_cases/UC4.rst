Delete Quiz
===========

**Primary Actor:** Teacher

**Stakeholders and Interests:**

  - Teacher: Wants quick yet careful usage of deletion

**Preconditions:** Quiz is already created and teacher is within the course section of the quiz they wish to delete.

**Success Guarantee (Post-conditions):** The quiz is successfully deleted from the course.

**Main Success Scenario (or Basic Flow):**

1. Teacher navigates to the course page containing the quiz.
2. Teacher clicks the quiz they wish to delete.
3. A ``Delete`` button will be present in the top right corner of the page
4. When the button is pressed, teacher is presented with a prompt asking if they are sure they wish to delete.
5. Once the button is clicked, the quiz is deleted from the database.

**Extensions (or Alternative Flows):**

+---------------------------+----------------------------------------------------------------+
| Network connection is lost|Quiz is still preserved, page reloading will return to the quiz.|
+---------------------------+----------------------------------------------------------------+

**Special Requirements:** N/A

**Technology and Data Variations List:** N/A

**Frequency of Occurrence:** Little to no times during a semester provided careful creation of quiz.

**Open Issues:**

  - Quizzes that have been taken and are subsequently deleted should have separate grades associated, should the teacher wish to keep the grade but delete the quiz.

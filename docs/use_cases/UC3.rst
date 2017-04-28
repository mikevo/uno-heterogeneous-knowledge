Take Quiz
=========

**Primary Actor:** Student

**Stakeholders and Interests:**

  - Teacher: Wants detailed notifications of students taking and having finished quiz
  - Student: Wants ease of use, with minimal hassle in providing answer

**Preconditions:** Student is in the course section containing the quiz, and the teacher has allowed access to the quiz.

**Success Guarantee (Post-conditions):** The student is given a result set based off the answers they provided for the quiz.

**Main Success Scenario (or Basic Flow):**

1. Student navigates to the course containing the quiz.
2. Student clicks the quiz link they wish to take.
3. Student will then answer the presented questions, consisting of multiple choice answers.
4. Once they have finished answering the questions, they can then press the ``Finish`` button to finalize their attempt.

**Extensions (or Alternative Flows):**

+---------------------------+--------------------------------------------------------------------------------------------------+
| Network connection is lost| Answers are preserved, with the time limit reserved from last connection.                        |
+---------------------------+--------------------------------------------------------------------------------------------------+
| Navigate away from page   | Popup is presented, warning the user of potentially losing answers and losing their quiz attempt.|
+---------------------------+--------------------------------------------------------------------------------------------------+

**Special Requirements:** N/A

**Technology and Data Variations List:** N/A

**Frequency of Occurrence:** Potentially many times within a given semester.

**Open Issues:**

  - Should questions be persevered in a question bank or should just be directly related to the quiz along with answer?

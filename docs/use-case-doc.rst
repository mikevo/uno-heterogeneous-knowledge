**Use Case UC1:**** Create Course**

  **Primary Actor:** Admin

  **Stakeholders and Interests:**

- --Student: Wants ease of access with accurate listing of course and professor
- --Teacher: Wants quick access, with the ability of linking the student to a particular course

**Preconditions:** Admin is identified and authenticated.

**Success Guarantee (Post-conditions):** The course is saved in the database, ready for use by the teacher that is linked to the course.

**Main Success Scenario (or Basic Flow):**

1. Admin navigates to the Course section of the application
2. Admin clicks the &#39;Create Course&#39; button
3. Admin enters the information necessary, including course title and professor associated with the course.
4. Once finished, the admin clicks the &#39;Finish&#39; button and the course is added to the course database, with the teacher being notified of the course listing.

**Extensions (or Alternative Flows):**

1. Network connection is lost
  1. Information is preserved via cookies and placed back in when page is reloaded.
2. Navigate away from page
  1. Information is preserved and place back in when navigated back.

**Special Requirements:**

N/A

**Technology and Data Variations List:**

N/A

**Frequency of Occurrence:** Potentially each new semester.

**Open Issues:**

- --Do courses have multiple copies due to different teachers?





**Use Case UC2:**** Create Quiz**

  **Primary Actor:** Teacher

  **Stakeholders and Interests:**

- --Teacher: Wants quick creation with minimal effort

**Preconditions:** Teacher is within course linked to the quiz.

**Success Guarantee (Post-conditions):** The quiz is created with a template allowing for creation of questions.

**Main Success Scenario (or Basic Flow):**

1. Teacher navigates to the Course section of the application
2. Teacher clicks the corresponding course they wish to make a quiz for.
3. Teacher clicks the &#39;New Quiz&#39; button
4. A template is generated on the page allowing for adding questions and answers.
5. Once the teacher has entered their questions, they can finalize the creation.

**Extensions (or Alternative Flows):**

1. Network connection is lost
  1. Information is preserved via cookies and placed back in when page is reloaded.
2. Navigate away from page
  1. Information is preserved and place back in when navigated back.

**Special Requirements:**

N/A

**Technology and Data Variations List:**

N/A

**Frequency of Occurrence:** Potentially many times within a given semester.

**Open Issues:**

- --Insure the questions created have an answer linked only to that particular question.









**Use Case UC3:**** Take Quiz**

  **Primary Actor:** Student

  **Stakeholders and Interests:**

- --Teacher: Wants detailed notifications of students taking and having finished quiz
- --Student: Wants ease of use, with minimal hassle in providing answer

**Preconditions:** Student is in the course section containing the quiz, and the teacher has allowed access to the quiz.

**Success Guarantee (Post-conditions):** The student is given a result set based off the answers they provided for the quiz.

**Main Success Scenario (or Basic Flow):**

1. Student navigates to the course containing the quiz.
2. Student clicks the quiz link they wish to take.
3. Student will then answer the presented questions, consisting of multiple choice answers.
4. Once they have finished answering the questions, they can then press the &#39;Finish&#39; button to finalize their attempt.

**Extensions (or Alternative Flows):**

1. Network connection is lost
  1. Answers are preserved, with the time limit reserved from last connection.
2. Navigate away from page
  1. Popup is presented, warning the user of potentially losing answers and losing their quiz attempt.

**Special Requirements:**

N/A

**Technology and Data Variations List:**

N/A

**Frequency of Occurrence:** Potentially many times within a given semester.

**Open Issues:**

- --Should questions be persevered in a question bank or should just be directly related to the quiz along with answer?



**Use Case UC4:**** Delete Quiz**

  **Primary Actor:** Teacher

  **Stakeholders and Interests:**

- --Teacher: Wants quick yet careful usage of deletion

**Preconditions:** Quiz is already created and teacher is within the course section of the quiz they wish to delete.

**Success Guarantee (Post-conditions):** The quiz is successfully deleted from the course.

**Main Success Scenario (or Basic Flow):**

1. Teacher navigates to the course page containing the quiz.
2. Teacher clicks the quiz they wish to delete.
3. A &#39;Delete&#39; button will be present in the top right corner of the page
4. When the button is pressed, teacher is presented with a prompt asking if they are sure they wish to delete.
5. Once the button is clicked, the quiz is deleted from the database.

**Extensions (or Alternative Flows):**

1. Network connection is lost
  1. Quiz is still preserved, page reloading will return to the quiz.

**Special Requirements:**

N/A

**Technology and Data Variations List:**

N/A

**Frequency of Occurrence:** Little to no times during a semester provided careful creation of quiz.

**Open Issues:**

- --Quizzes that have been taken and are subsequently deleted should have separate grades associated, should the teacher wish to keep the grade but delete the quiz.







**Use Case UC5:**** Delete Course**

  **Primary Actor:** Admin

  **Stakeholders and Interests:**

- --Admin: Wants quick yet careful usage of deletion

**Preconditions:** Course is already created and admin is within the course selection screen.

**Success Guarantee (Post-conditions):** The course is successfully deleted from the system.

**Main Success Scenario (or Basic Flow):**

1. Admin navigates to the course selection page containing the course.
2. Admin clicks the course they wish to delete.
3. A &#39;Delete&#39; button will be present in the bottom right corner of the course box.
4. When the button is pressed, admin is presented with a prompt asking if they are sure they wish to delete.
5. Once the button is clicked, the course is deleted from the database.

**Extensions (or Alternative Flows):**

1. Network connection is lost
  1. Course is still preserved, page reloading will return to the course selection.

**Special Requirements:**

N/A

**Technology and Data Variations List:**

N/A

**Frequency of Occurrence:** Few times for each semester provided a teacher teaches the same course for new semesters.

**Open Issues:**

- --Courses should not be deleted amongst other similar courses, provided a teacher is not teaching two of the same course.







**Use Case UC6:**** Manage User**

  **Primary Actor:** Admin

  **Stakeholders and Interests:**

- --School: Wants cleanup of system to avoid duplicates
- --Teacher: Wants student removed/added from/into course

**Preconditions:** Existing user is already in the system.

**Success Guarantee (Post-conditions):** The user&#39;s credentials are updated in the system.

**Main Success Scenario (or Basic Flow):**

1. Admin logs into the system and navigates to teacher selection.
2. Once selected, admin is brought to the course selection screen.
3. Admin navigates to the course containing the user for deletion.
4. A button to the far right of the user&#39;s name labeled &#39;Edit&#39; will be present.
5. Admin clicks the button and is navigated to a page where they may adjust a user&#39;s credentials, including deletion of user.
6. Once the admin is finished, they may click the &#39;Finish&#39; button on the bottom of the page to finish.

**Extensions (or Alternative Flows):**

1. Network connection is lost
  1. User information remains in the system, no transaction occurs until refresh.

**Special Requirements:**

N/A

**Technology and Data Variations List:**

N/A

**Frequency of Occurrence:** Little to no times during a semester.

**Open Issues:**

- --User credentials should be checked for potential duplicate records.







**Use Case UC7:**** Manage Profile**

  **Primary Actor:** All users

  **Stakeholders and Interests:**

- --Teacher: Wants easy identification of student, with only necessary info.
- --Student: Wants ease of use, with minimal hassle in navigation and form filling.
- --Admin: Wants ease of use, along with inclusion of visual indicators for admin account.

**Preconditions:** User already exists in the system.

**Success Guarantee (Post-conditions):** The user provides new information in the pertaining fields.

**Main Success Scenario (or Basic Flow):**

1. User logs into the system and navigates to the dropdown in the top right corner of the page.
2. Once open, user selects &#39;View profile&#39; to navigate to their profile page.
3. A button in the top right corner of the profile page labeled &#39;Edit Profile&#39; will be enabled.
4. Once clicked, the page navigates to a separate profile page for editing, allowing the user to change fields such as e-mail, address, etc.
5. When the user is finished, they click the &#39;Finish&#39; button to finalize their edits and are navigated back to their profile page.

**Extensions (or Alternative Flows):**

1. Network connection is lost
  1. Information in the edit page is retained via cookies and is not committed.  User must regain connection before finalizing data.
2. Navigate away from the page
  1. Information is lost, while previously committed information is retained.

**Special Requirements:**

N/A

**Technology and Data Variations List:**

N/A

**Frequency of Occurrence:** Very few times during a semester, potentially throughout school career.

**Open Issues:**

 None

**Use Case UC8:**** Edit Quiz**

  **Primary Actor:** Teacher

  **Stakeholders and Interests:**

- --Teacher: Wants quick changes to be made while retaining original format.

**Preconditions:** Teacher is within quiz page to be edited.

**Success Guarantee (Post-conditions):** The quiz is finalized after edits have been made.

**Main Success Scenario (or Basic Flow):**

1. Teacher navigates to the quiz they wish to edit.
2. In the top left corner, under the quiz title, a button labeled &#39;Edit quiz&#39; will be enabled.
3. Once clicked, the page refreshes with the fields unlocked for editing.
4. When the teacher is satisfied with the changes made, they can then press the button labeled &#39;Finalize&#39; on the bottom of the page.

**Extensions (or Alternative Flows):**

1. Network connection is lost
  1. Information is preserved via cookies and is not committed until the user regains network connection.
2. Navigate away from page
  1. Information is lost, while previously committed information is retained.

**Special Requirements:**

N/A

**Technology and Data Variations List:**

N/A

**Frequency of Occurrence:** Very few times within a given semester, provided careful quiz creation.

**Open Issues:**

- --Insure questions still have all required information before committing without error.







**Use Case UC9:**** Edit Course**

  **Primary Actor:** Teacher

  **Stakeholders and Interests:**

- --Teacher: Wants quick changes to be made while retaining original format.

**Preconditions:** Teacher is within course page to be edited.

**Success Guarantee (Post-conditions):** The course is finalized after edits have been made.

**Main Success Scenario (or Basic Flow):**

1. Teacher navigates to the course they wish to edit.
2. In the top left corner, under the course title, a button labeled &#39;Edit quiz&#39; will be enabled.
3. Once clicked, the page refreshes with the fields unlocked for editing.
4. When the teacher is satisfied with the changes made, they can then press the button labeled &#39;Finalize&#39; on the bottom of the page.

**Extensions (or Alternative Flows):**

1. Network connection is lost
  1. Information is preserved via cookies and is not committed until the user regains network connection.
2. Navigate away from page
  1. Information is lost, while previously committed information is retained.

**Special Requirements:**

N/A

**Technology and Data Variations List:**

N/A

**Frequency of Occurrence:** Little to no times within a given semester provided careful course creation.

**Open Issues:**

- --Insure required course fields are still filled before committing.
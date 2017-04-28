Delete Course
=============

**Primary Actor:** Admin

**Stakeholders and Interests:**

  - Admin: Wants quick yet careful usage of deletion

**Preconditions:** Course is already created and admin is within the course selection screen.

**Success Guarantee (Post-conditions):** The course is successfully deleted from the system.

**Main Success Scenario (or Basic Flow):**

1. Admin navigates to the course selection page containing the course.
2. Admin clicks the course they wish to delete.
3. A ``Delete`` button will be present in the bottom right corner of the course box.
4. When the button is pressed, admin is presented with a prompt asking if they are sure they wish to delete.
5. Once the button is clicked, the course is deleted from the database.

**Extensions (or Alternative Flows):**

+---------------------------+------------------------------------------------------------------------------+
| Network connection is lost|Course is still preserved, page reloading will return to the course selection.|
+---------------------------+------------------------------------------------------------------------------+

**Special Requirements:** N/A

**Technology and Data Variations List:** N/A

**Frequency of Occurrence:** Few times for each semester provided a teacher teaches the same course for new semesters.

**Open Issues:**

  - Courses should not be deleted amongst other similar courses, provided a teacher is not teaching two of the same course.

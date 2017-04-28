Create Course
=============

**Primary Actor:** Admin

**Stakeholders and Interests:**

  - Student: Wants ease of access with accurate listing of course and professor
  - Teacher: Wants quick access, with the ability of linking the student to a particular course

**Preconditions:** Admin is identified and authenticated.

**Success Guarantee (Post-conditions):** The course is saved in the database, ready for use by the teacher that is linked to the course.

**Main Success Scenario (or Basic Flow):**

1. Admin navigates to the Course section of the application
2. Admin clicks the ``Create Course`` button
3. Admin enters the information necessary, including course title and professor associated with the course.
4. Once finished, the admin clicks the ``Finish button`` and the course is added to the course database, with the teacher being notified of the course listing.

**Extensions (or Alternative Flows):**

+---------------------------+------------------------------------------------------------------------------+
| Network connection is lost|Information is preserved via cookies and placed back in when page is reloaded.|
+---------------------------+------------------------------------------------------------------------------+
| Navigate away from page   | Information is preserved and place back in when navigated back.              |
+---------------------------+------------------------------------------------------------------------------+

**Special Requirements:** N/A

**Technology and Data Variations List:** N/A

**Frequency of Occurrence:** Potentially each new semester.

**Open Issues:**

  - Do courses have multiple copies due to different teachers?

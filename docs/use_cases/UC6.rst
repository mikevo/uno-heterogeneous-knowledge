Manage User
===========

**Primary Actor:** Admin

**Stakeholders and Interests:**

  - School: Wants cleanup of system to avoid duplicates
  - Teacher: Wants student removed/added from/into course

**Preconditions:** Existing user is already in the system.

**Success Guarantee (Post-conditions):** The user``s credentials are updated in the system.

**Main Success Scenario (or Basic Flow):**

1. Admin logs into the system and navigates to teacher selection.
2. Once selected, admin is brought to the course selection screen.
3. Admin navigates to the course containing the user for deletion.
4. A button to the far right of the user's name labeled ``Edit`` will be present.
5. Admin clicks the button and is navigated to a page where they may adjust a users credentials, including deletion of user.
6. Once the admin is finished, they may click the ``Finish`` button on the bottom of the page to finish.

**Extensions (or Alternative Flows):**

+---------------------------+----------------------------------------------------------------------------+
| Network connection is lost|User information remains in the system, no transaction occurs until refresh.|
+---------------------------+----------------------------------------------------------------------------+

**Special Requirements:** N/A

**Technology and Data Variations List:** N/A

**Frequency of Occurrence:** Little to no times during a semester.

**Open Issues:**

  - User credentials should be checked for potential duplicate records.

Manage Profile
==============

**Primary Actor:** All users

**Stakeholders and Interests:**

  - Teacher: Wants easy identification of student, with only necessary info.
  - Student: Wants ease of use, with minimal hassle in navigation and form filling.
  - Admin: Wants ease of use, along with inclusion of visual indicators for admin account.

**Preconditions:** User already exists in the system.

**Success Guarantee (Post-conditions):** The user provides new information in the pertaining fields.

**Main Success Scenario (or Basic Flow):**

1. User logs into the system and navigates to the dropdown in the top right corner of the page.
2. Once open, user selects ``View profile`` to navigate to their profile page.
3. A button in the top right corner of the profile page labeled ``Edit Profile`` will be enabled.
4. Once clicked, the page navigates to a separate profile page for editing, allowing the user to change fields such as e-mail, address, etc.
5. When the user is finished, they click the ``Finish`` button to finalize their edits and are navigated back to their profile page.

**Extensions (or Alternative Flows):**

+---------------------------+--------------------------------------------------------------------------+
| Network connection is lost|Information in the edit page is retained via cookies and is not committed.|
|                           |User must regain connection before finalizing data.                       |
+---------------------------+--------------------------------------------------------------------------+
| Navigate away from page   |Information is lost, while previously committed information is retained.  |
+---------------------------+--------------------------------------------------------------------------+

**Special Requirements:** N/A

**Technology and Data Variations List:** N/A

**Frequency of Occurrence:** Very few times during a semester, potentially throughout school career.

**Open Issues:**

 - None

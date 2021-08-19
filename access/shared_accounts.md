# Shared Accounts

### Policy
Shared accounts will not be used on systems that have the capability for individual user accounts.

### Scope
This policy applies to all Lullabot employees and contractors.

### Compliance
- Individual accounts will be used for all services that support them.
- If a service does not support multiple accounts, access credentials will be stored in the [shared password manager](access/shared_passwords.html) with access only granted to the users who need it.
- Written confirmation from a client is required if the client requires use of a shared account in a service they manage.
- When comparing multiple services, services that support individual accounts will be preferred over those that do not.
- Invitations to services should be sent by email address, and not user name, to avoid [inviting wrong members to a team](https://www.theregister.com/2014/05/20/github_oversharing_snafu_nbc_private_keys/).

### Explanation and Implementation

While shared accounts offer simplicity compared to maintaining individual accounts, they make other security objectives difficult or impossible to meet. Shared accounts:

- Do not identify individual owners of work products.
- Do not provide an audit log that allows relating an action to a named individual.
- Do not allow for offboarding of a team member without rotating and redistributing credentials.
- Do not allow for proper notifications in communication tools, such as mentions in issues or tickets.

Most services aimed at teams offer per-user accounts, such as GitHub, Drupal.org, and Jira. However, "infrastructure" services such as domain registrars often only support a single account.

Some services, like GitHub, allow for a single identity to have multiple attached email addresses, such as a personal and a work email. Team members may use existing personal accounts for services like these, however they must attach a Lullabot email address to the account. All invites and other onboarding activity should be done by email address and not user name to ensure that invitations are not sent outside of the organization.

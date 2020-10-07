## Shared Passwords

### Policy
Shared passwords shall be managed in a central application, where access can be monitored and passwords can be easily changed.

### Scope
This policy applies to all Lullabot employees.

### Compliance
- Shared passwords will be managed using LastPass Enterprise shared folders.
- Separate shared folders will be created for groups of passwords that should allow access to the same group of people. Permission will then be set at the group level.
- Shared passwords will be changed whenever employees leave Lullabot, or if there is any reason to be concerned that shared passwords may have been compromised.

### Explanation and Implementation

LastPass Enterprise has many advantages for managing shared passwords:

- Provides easy access to a password manager that can be used for other passwords.
- Linking a free personal LastPass account gives it all the features of a premium account via the enterprise license.
- This does not change anything for non-LastPass users, just where they find the shared password.
- LastPass does not have access to our passwords.
- The LastPass plugin works in Safari.
- LastPass is decentralized. If LastPass goes offline, we can still access our vaults locally.
- LastPass has SAML options, that would allow auto-login to many services we already use, like Yammer, Slack, Google, Expensify, Dropbox, many more.
- LastPass has group-based sharing permissions.
- LastPass provides an analysis of password strength.
- LastPass has event logging, which will show who accessed/changed a password, when, and from where.
- Passwords are accessible with no software installation.
- LastPass supports a variety of 2FA options.

Users of other password managers probably want to make a few adjustments if they want to continue using their own password manager for their personal accounts:

- Consider using separate browsers for work and personal.
- Consider using web-access to LastPass instead of the extension.
- May be able to configure LastPass to not ask about saving passwords.

### Recommendations for users

Don’t put non-shared passwords in your Lullabot vault, create a personal account and link it to the shared account.

- This is even LastPass’s official recommendation.
- There is a policy where we can officially recommend/require this.
- Admins can reset/lock the Lullabot vault, and ultimately can get access to its contents.
- Termination from Lullabot will at least result in loss of access to your Lullabot vault, and at most will result in irrecoverable loss of the data in the vault.
- If you already have a LastPass account using your lullabot.com email address, change it to a personal email address before accepting the enterprise invite.
- If you use another password manager for personal accounts, you'll still want to create a personal LastPass account and link it so personal passwords don't accidentally get added to the shared accounts.

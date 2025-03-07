## Two-factor Authentication (2FA)

### Policy
Two-factor authentication (2FA) is required for any account or service that supports it, if that service provides access to Lullabot or client information. This includes, but is not limited to, Gmail, GitHub, Dropbox, and Slack. Lullabot employees and contractors will need to set up 2FA to log into these accounts.

### Scope
This policy applies to all Lullabot employees and contractors.

### Compliance
1. No less than once a year, all accounts and services that provide access to Lullabot or client information will be reviewed to determine if 2FA is available, and, if so, ensure the service has been configured to require 2FA.
2. When new accounts or services are added, they will be configured to require 2FA, if 2FA is available.


### Explanation and Implementation

Traditional authentication consists of a username and password. However, there is a more secure way to authenticate, called two-factor authentication. Two-factor authentication consists of something you know (a username and password) combined with a code available from something you have. The "something you have" is usually a single use PIN.

When logging into an account that has been set up with two factor authentication, you will be asked for your username and password as usual, but you will also be asked for the _current_ PIN. 

There are several ways to generate this PIN. We strongly recommend using 1Password's [built-in 2FA functionality](https://support.1password.com/one-time-passwords/). When an authentication app is linked to your account, the app will display a PIN, commonly 6 digits, that changes once every minute or so. This is preferred over using SMS for 2FA, which can by [bypassed](https://www.securityweek.com/6-ways-attackers-are-still-bypassing-sms-2-factor-authentication/).

Two-factor authentication is significantly more secure than single-factor (username and password only). If someone figures out your single-factor authentication credentials, they can access your account indefinitely without you knowing, or worse, log in and change your password to lock you out. With two-factor authentication, there is a time-based token that they would need to know, too, and it continuously changes. This keeps your account much more secure.

You should be sure you have some way to recover access to your account if your phone is lost or destroyed. Most Lullabot-run accounts can be reset by an admin, but it can be problematic for personal accounts or smaller services without group or company features. One way to think about it is to think about how you would recover from a (local) disaster like a fire or flood. If you lost every piece of technology you owned, could you recover your accounts? Some strategies include:

* Google lets you specify multiple recovery phone numbers. Set up SMS fallbacks to your own phone or to another trusted person. You can always get a new phone or SIM card for your own number. PINs sent to other numbers won't compromise your accounts unless they also know your logins and passwords.
* Print out 2FA recovery codes and store them securely outside of your house. 
* Store recovery codes in the notes field in 1Password if it's accessible from multiple devices. However, if you choose to optionally enable 2FA for 1Password itself, store a hard copy of the recovery codes securely.
* Determine if the service will let you recover an account with proper government ID. For example, Linode will do this, while GitHub will not.
* Determine if an account can be reset by an account admin - Google Apps accounts can do this, while GitHub and others can not.
* Do not store recovery codes in unencrypted services like Dropbox or iCloud.

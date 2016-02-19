## Two-factor Authentication (2FA)

### Policy
Any third party service that contains Lullabot or Lullabot client information should be configured to require two factor authentication, if two factor authentication is available for that service. This includes, but is not limited to, Gmail, Github, Dropbox, and Slack.

### Scope
This policy applies to all Lullabot employees and contractors.

### Compliance
All Lullabot-controlled accounts that allow two factor authentication will be configured to require it.

### Explanation and Implementation

Traditional authentication consists of a username and password. However, there is a more secure way to authenticate, called two-factor authentication. Two-factor authentication consists of something you know (a username and password) combined with a code available from something you have. The "something you have" is usually another device, like your phone.

When logging into an account that has been set up with two factor authentication, you will be asked for your username and password as usual, but you will also be asked for the _current_ PIN. 

There are several ways to generate this PIN. It could be sent to the phone as a text message or email. Or you could install an authentication app. Examples of authentication apps are Google Authenticator or [Authy](https://www.authy.com/).
When an authentication app is linked to your account, the app will display a six digit PIN that changes 
once every minute. Using an app is great for those moments where your laptop has internet access but your phone doesn't have a signal to get a text message.

Two-factor authentication is significantly more secure than single-factor (username and password only). If someone figures out your single-factor authentication credentials, they can access your account indefinitely without you knowing, or worse, log in and change your password to lock you out. With two-factor
authentication, there is a time-based token that they would need to know, too, and it continuously changes. This keeps your account much more secure.

You are required to enable two-factor authentication for any service that supports it, if that service contains Lullabot or client information.

If you use an authenticator app, you should be sure you have some way to recover access to your account if your phone is lost or destroyed. Most Lullabot-run accounts can be reset by an admin, but it can be problematic for personal accounts or smaller services without group or company features. An easy way to think about it is to think about how you would recover from a (local) disaster like a fire or flood. If you lost every piece of technology you owned, could you recover your accounts? Some strategies include:

* Set up SMS fallbacks to your own phone or to another trusted person. You can always get a new phone or SIM card for your own number. Google lets you specify multiple recovery phone numbers, and as long as that person doesn't know your passwords they can't get into your account.
* The Authy app provides an option to share codes across devices. This would allow you to retrieve your code from some other location.
* Print out 2FA recovery codes and store them outside of your house. If you use a password manager that is accessible from other devices, you could store the recovery codes in your password manager in secure notes.
* Determine if the service will let you recover an account with proper government ID. For example, Linode will do this, while Github will not.
* Determine if an account can be reset by an account admin - Google Apps accounts can do this, while Github and others can not.


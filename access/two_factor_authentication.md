## Two-factor Authentication (2FA)

Traditional authentication consists of a username and password, which we are all familiar with. However, there is a more secure way to authenticate with what is called two-factor authentication, which many services support, including our Lullabot Gmail accounts. Two-factor authentication consists of something you know (a username and password) combined with something you have.

In the case of Gmail, the "something you have" is an app that you install on your phone, like Google Authenticator, which works on both Android and iOS devices and can be found in the corresponding app stores. When Google Authenticator is linked to your account, the app will display a six digit PIN that changes 
once every minute. When you use this for authentication, you will be asked for your username and password like normal, but you will also be asked for the _current_ PIN. Using an app is great for those moments where your laptop has internet access but your phone doesn't have a signal to get a text message. Other there are other authenticator apps. One that is commonly used is [Authy](https://www.authy.com/).

Two-factor authentication is significantly more secure than single-factor (username and password only). If someone figures out your single-factor authentication credentials, they can access your account indefinitely without you knowing, or worse, log in and change your password to lock you out. With two-factor
authentication, there is a time-based token that they would need to know, too, and it continuously changes. This keeps your account much more secure.

In addition to Gmail, there are a number of other services that can leverage authenticators like Google Authenticator on your phone to provide two-factor authentication for their own service. Another option is a text message loop, where a code is sent to your phone that you then have to enter in order to log in. (In fact, you can do this with Gmail if you don't want to download an app.) Either way, it is highly recommended that you enable two-factor authentication for any service that supports it. In the event that you are comparing competing services, two-factor authentication should be at the top of the list, as it shows that the service cares about our account security.

If you use an app like Google Authenticator, you should be sure you have some way to recover access to your account if your phone is lost or destroyed. Most Lullabot-run accounts can be reset by an admin, but it can be problematic for personal accounts or smaller services without group or company features. An easy way to think about it is to think about how you would recover from a (local) disaster like a fire or flood. If you lost every piece of technology you owned, could you recover your accounts? Some strategies include:

* Setting up SMS fallbacks to your own phone or to another trusted person. You can always get a new phone or SIM card for your own number. Google lets you specify multiple recovery phone numbers, and as long as that person doesn't know your passwords they can't get into your account.
* Printing out 2FA recovery codes and storing them outside of your house.
* Verifying each service with 2FA will let you recover an account with proper government ID. For example, Linode will do this, while Github will not.
* Ensuring an account can be reset by an account admin - Google Apps accounts can do this, while Github and others can not.


## Lost or Stolen Devices

### Policy
Reasonable steps should be taken to ensure that devices that contain or provide access to Lullabot information won't be compromised if lost or stolen.

### Scope
This policy applies to all Lullabot employees and contractors.

### Compliance
Encryption and secure screen lock pins are the first line of defense against compromised security from lost or stolen devices. 'Find my [phone|computer]', and remote wipe features can also be enabled for additional protection.

### Explanation and Implementation

What happens if your device is lost or stolen? The best scenario is where you can recover it and ensure that no one else could have accessed data on it, since you have a screen lock and encrypted your disk. The next best is where you can recover your device, without knowing if anyone accessed or changed files on it. For example, if your disk isn't encrypted, someone could have easily installed a keylogger to siphon off passwords. The worst scenario is where you completely lose an unencrypted device. In that case, you should assume everything is compromised and start resetting and recovering accounts.

To prevent problems:

- Make sure all computers and phones have [ecryption](../physical/hard-drive-encryption.md) enabled.
- Create secure [pins and passwords](../physical/locking.md) for device screen locks.
- Enable Find My Phone|Computer features, where available. For Apple devices, at least, this includes options to remotely wipe a lost or stolen device.
- Consider adding contact information to your lock screen to make it easier for someone who finds your device to return it.
- Consider enabling the emergency contact to your phone. 

Also make sure that you have strong passwords for any accounts that can remotely wipe devices. [Individuals have been targeted by remote wiping their devices through weak iCloud passwords](http://www.wired.com/2012/08/apple-amazon-mat-honan-hacking/), making it very difficult to recover accounts.

### Android Devices

[Android Device Manager](https://www.google.ca/android/devicemanager) is the easiest way to find and manage Android devices. Your phone manufacturer (Samsung, Motorola, etc) may also have device recovery software you can use. ADM lets you locate, ring, and erase devices. You can also set up a new lockscreen code.

It's also a good idea to put contact information on your phone's lock screen. In Android 5, it's under Settings -> Security -> Owner info, and is available in older Android versions as well. Make sure your contact info isn't only accessible on your phone!

### iOS and Mac Devices

For an Apple device, there's a handy tracking utility that can help you either locate the lost device, or, in the event of a theft, wipe the device's memory so that your data is safe. Part of the iCloud services offered by Apple includes the "Find My iPhone" app available for iOS devices and on MacOS.

On iOS, visit Settings >> iCloud and make sure you turn on "Find My iPhone". Next, download the Find iPhone app that's free from the app store so you can view your devices on a map. This app will also allow you to remotely wipe a device that is no longer safely in your possession. If your device is stolen, you may also be able to see where the thief has taken it.

On the Mac, go to System Preferences >> iCloud and make sure you enable the "Find my Mac" option so that your desktop machine will also be protected in this manner.

The Apple support site has more information about how to use [Find My Phone and Find My Mac](https://support.apple.com/en-us/HT205362) features.

On both iOS and OS X you can put contact info on the lock screen. For OS X, it's under "Security & Privacy" in System Preferences. Make sure your phone number or email isn't only accessible on your phone!

On iOS you can [use an app to burn info into an image](http://www.cnet.com/how-to/how-to-add-emergency-contact-info-to-your-iphone-lock-screen/). If the phone is lost you can also display contact information on the lock screen of the lost device using the "Find My iPhone" screen in iCloud. 

### Add emergency contact info to your phone

Finally, you can add [emergency contact information](http://www.pcmag.com/article2/0,2817,2489237,00.asp) to your phone. Emergency information is accessible on a locked device, and will provide an additional way for someone to find the owner of a device.

### What to do when you've lost a device

Figuring out appropriate next steps for this can be pretty complicated. As well, being distributed makes us an easier target for impersonation attacks. We should assume we are not concerned about nation-state level attacks; if Chinese sponsored attackers try to get into a client (think Sony and North Korea) through us, we're probably subject to zero-days and the like.

Finding your lost device is the first step to figuring out how much you need to do to make sure everything remains secure.

#### Is there a realistic security issue, or just a lost device?

The first step is to figure out if it's reasonably possible for someone to get access to accounts and data from the lost device. Laptop drives are accessible if they aren't encrypted. Encrypted devices are accessible if they aren't locked. If a laptop is stolen and we can't know if it was locked, we should assume the contents are open to the world, as all it takes is a (cheap) USB device to keep it awake. If someone isn't sure, they should reach out to the hivemind for advice. A smart attacker will also keep LastPass or 1Password unlocked.

#### You lost a device that was encrypted and locked or off:

You probably don't need to do anything security-wise other than letting the team know you lost your device.

#### You lost a device that might have been unlocked, but you store passwords in a password manager that was known to be locked:

You don't need to reset passwords or credentials except for anything that might be in plain text. If you have apps that don't use the OS X keychain, you might need to reset those credentials. Windows and Linux apps commonly store passwords in cleartext (or mildly obfuscated) on disk. API tokens should be reset, like those used by Composer for GitHub access or those stored in settings.php in client sites.

If you get your device back, assume it's been compromised with a keylogger. Wipe it and restore it from a known-good backup. This includes ignoring any potential cloud backups made since you lost the device.

#### You lost a device without encryption (a Windows laptop, a Time Machine backup drive, an Android phone)

Post to Yammer to let the team know you lost a device. The team should take this as a note to be on guard for suspicious activity. If you lost *all* your devices, call 1-877-LULLABOT or your manager.

Get on a phone or video call with a member of the admin team to confirm the lost device. **Managers and the admin team should not accept text communication as proof that they are communicating with an employee**. Confirm with them what accounts you need them to reset. They should be able to reset passwords quickly for Lullabot-managed accounts like Google Apps and the Daily Report. If warranted, the admin team should send an email to team@lullabot.com alerting the company about the lost device.

After regaining access to your Lullabot email address, use it to reset passwords for accounts to log out all active sessions. Some services will let you log in, list, and kill active sessions, saving you from having to reset your password.

High-profile services to have an admin team member immediately reset or log out all sessions if you can't do it yourself:

* Google
* Daily Report / LDAP
* Bamboo HR
* Linode Manager
* Slack
* Yammer
* Freckle

Services individuals need to reset or log out on their own once the above is done:

* Github
* Client-specific services (like Jira, Hipchat, etc)
* Drupal.org
* Twitter, Facebook, etc

Commonly forgotten items:

* API keys for services in code
* Passwordless SSH Keys
* Backup services like CrashPlan, Carbonite, and so on

#### Data loss and client notifications

Talk with your manager to figure out what actions are appropriate for any client code or databases on your device. Remember to consider past clients who you might not be actively working for at the moment. If there were database dumps on your machine that weren't encrypted or sanitized, follow the same steps as if a production or development environment had been compromised. Deleted files can still be recovered from unencrypted drives.

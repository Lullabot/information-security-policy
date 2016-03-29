# Device Checklist

### Policy
All devices in the possession of Lullabot employees and contractors must be protected.

### Scope
This policy applies to all Lullabot employees and contractors.

### Compliance
This checklist provides a way for employees to self-evaluate their device security.

### Explanation and Implementation

Before starting, gather a list of all devices to audit:

* Computers
* Phones
* Tablets
* NAS devices and servers
* Removable media archives
* Any remote / VPS hosted servers you use in your work

With each device, validate:

* All computers have a complex password with a screen lock timeout.
* All computer hard drives are encrypted. Include backup Mac Minis, Time Machine backups, and so on. Note that TrueCrypt is no longer considered secure.
* New Windows computers should have Windows 7 or 8 professional for BitLocker support, or Windows 10. Home editions of Windows should be upgraded.
* All data that doesn't exist in a cloud service like Dropbox should exist on your computer and an off-site cloud backup. A local backup is really useful for quick restores or Time Machine, but might not be needed if you have a really fast uncapped internet connection.
* Backups support versioning.
* At least one backup destination should be "immutable", where existing backups can't be modified. This protects us from CryptoLocker style scams.
* All backups are encrypted. Cloud services use a private key that only you know.
* All mobile devices have a PIN and screen timeout set.
  * Only use Trusted Places for automatic unlocks for devices you don't share and at very trusted locations like home. Avoid using Trusted Devices like Bluetooth pairings since it's just as easy to steal a phone and a smartwatch or headset.
  * If your device supports biometrics like TouchID, consider setting a timeout to require a password. iOS doesn't support this for the lock screen, but 1Password does under Settings > Advanced > Security > Require Master Password (1 Hour).
  * If supported, set your device to wipe all data after a certain number of failed unlock attempts. On iOS, this is under "Touch ID & Passcode" in Settings.
* All remote accounts use 2FA where supported, including Dropbox, Google, Slack, and Github.
* New Android phones like the Nexus 6 should support encryption by default. Due to major performance and compatibility issues with older devices, we omit existing Android devices from required encryption. Check encryption support before buying a new phone.
* All computer and mobile systems should be patched and up to date.
* All devices should have "Find" and "Remote Wipe" capabilities.
* Rooted Android phones and Jailbroken iPhones should be treated with care.

After you've finished reading the above, run through these fun scenarios to make sure you're all set!

### Backups and Restores

* For my primary work computer, I put it in my microwave and cook popcorn on it. Once I purchase a new computer, I restore from a local backup without losing any data. This includes work data stored in my home directory (`/Users/myname`) that isn't already in the cloud like Dropbox or Google Docs.
* While myself, my family, and any pets and loved ones are on a wilderness no-technology retreat, a meteor incinerates my house (#rightnow), destroying every computer, phone, tablet, and hard drive I own. After purchasing new devices, I'm able to regain access to my off-site backups and cloud accounts like Google or Dropbox.
* At the Lullabot Retreat, I decide to take my laptop fishing. After running into town to replace it, I'm able to restore my data even though I'm not home.

### Security and Encryption

* I place catnip on my laptop keyboard because I love my cat. My screen lock prevents Kitty from viewing or changing sensitive information.
* A client puts very important credentials in a Word document I download. I'm not worried about securely erasing the file because my hard drive is encrypted.
* Sally has asked me to log in to Github on her laptop. I'm able to access my password vault using nothing but the internet and things I know in my head. After Sally is done, I manually log out of all accounts I logged in to.
* I need to move a copy of the Daily Report database at a Lullabot Retreat where the internet is totally broken. I can use my USB drive because I've encrypted the drive using FileVault or BitLocker.
* I switch from iOS to Windows Phone because it sounds like fun. I'm able to recreate all of my 2FA tokens by using pre-printed recovery codes or SMS messages.

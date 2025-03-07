# Device Checklist

Before starting, gather a list of all devices to audit that are used for Lullabot work:

* Computers
* Phones
* Tablets
* NAS devices and servers
* Any remote / VPS hosted servers you use in your work

With each device, validate:

- [ ] Confirm all mobile devices have a [screen timeout set to no more than 10 minutes](https://security.lullabot.com/physical/locking.html).
- [ ] Confirm "Find My" or equivalent is enabled.
- [ ] All operating systems should be up to date.
- [ ] All browsers should be up to date.
- [ ] Confirm [1Password](https://security.lullabot.com/access/password_managers.html) is installed, with browser extensions.
- [ ] Confirm an adblocker (uBlock origin lite, AdGuard) is installed in the default browser.

## Computers

- [ ] All computers have a [complex password](https://security.lullabot.com/access/passwords.html), at least 16 characters long. If you add your passwords to 1password, 1password will tell you the strenght of the password; try to get "excellent" strength. Do NOT use guessable patterns like: family names, birthdays, the word “lullabot”, etc.
- [ ] All computer [hard drives are encrypted](https://security.lullabot.com/physical/hard-drive-encryption.html) with FileVault, Bitlocker, or equivalent.
- [ ] Confirm firewall is enabled. Document work tasks that require disabling firewall; share with security@lullabot.com.
- [ ] Confirm no guest accounts are enabled.
- [ ] Confirm no remote access is enabled (SSH, file sharing). Document work tasks that require disabling firewall; share with security@lullabot.com.
- [ ] Confirm automatic updates are enabled.
- [ ] Confirm [VPN](https://lb.cm/vpn) app (Proton VPN) is setup.

## Backups

- [ ] If computers have a [backup system](https://security.lullabot.com/physical/backups.html) in place, backups should be encrypted.
- [ ] Optional, but nice to have: backups support versioning to protection against ransomware style scams.
- [ ] If using cloud services, use a private key that only you know. (Store it in 1password.)

## Mobile Devices

- [ ] Confirm all mobile devices have at least a [6 digit PIN and screen timeout set](https://security.lullabot.com/physical/locking.html).
  * Android devices should not use a pattern-style lock.
  * If supported, set your device to wipe all data after a certain number of failed unlock attempts. On iOS, this is under "Face (or Touch) ID &amp; Passcode" in Settings.
- [ ] If applicable, Rooted Android phones and jailbroken iPhones should be treated with care.

After you've finished reading the above, run through these fun scenarios to make sure you're all set!

## Example Scenarios

Try running through these scenarios to see how your security and backup setup stacks up!

### Backups and Restores

Make sure you'd be safe in the following circumstances:

- [ ] For my primary work computer, I put it in my microwave and cook popcorn on it. Once I purchase a new computer, I restore from a local backup without losing any data. This includes work data stored in my home directory (`/Users/myname`) that isn't already in the cloud like Dropbox or Google Docs.
- [ ] While myself, my family, and any pets and loved ones are on a wilderness no-technology retreat, a meteor incinerates my house (#rightnow), destroying every computer, phone, tablet, and hard drive I own. After purchasing new devices, I'm able to regain access to my off-site backups and cloud accounts like Google or Dropbox.
- [ ] At the Lullabot Retreat, I decide to take my laptop fishing. After running into town to replace it, I'm able to restore my data even though I'm not home.

### Security and Encryption

Make sure you'd be safe in the following circumstances:

- [ ] I place catnip on my laptop keyboard because I love my cat. My screen lock prevents Kitty from viewing or changing sensitive information.
- [ ] A client puts very important credentials in a Word document I download. I'm not worried about securely erasing the file because my hard drive is encrypted.
- [ ] I need to move a copy of the Daily Report at a Lullabot Retreat where the internet is totally broken. I can use my USB drive because I've encrypted the drive using FileVault or BitLocker.
- [ ] I switch from iOS to Android because it sounds like fun. I don't need to migrate my 2FA tokens because they are stored in 1Password.

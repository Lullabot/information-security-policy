# Device Checklist

Before starting, gather a list of all devices to audit that are used for Lullabot work:

* Computers
* Phones
* Tablets
* NAS devices and servers
* Any remote / VPS hosted servers you use in your work

With each device, validate:

- [ ] All computers have a complex password with a screen lock timeout set to no more than 10 minutes.
- [ ] All computer hard drives are encrypted with FileVault, Bitlocker, or equivalent.
- [ ] All operating systems and browsers should be patched and up to date.
- [ ] Confirm VPN app (Proton VPN) is setup and the team member is aware of the "split tunnel" option.
- [ ] Confirm 1Password is installed with browser extensions.
- [ ] Confirm an adblocker (uBlock origin, AdGuard) is installed in the default browser.

## Workstations

- [ ] Confirm "Find My" or equivalent is enabled.
- [ ] Confirm firewall is enabled.
- [ ] Confirm no guest accounts are enabled.
- [ ] Confirm that if remote access is enabled (SSH, file sharing) that the implications are understood.

## Backups

- [ ] Computers have a backup system in place for quick recovery after a hardware failure.
- [ ] Backups support versioning and have protections against ransomware style scams.
- [ ] All backups are encrypted. Cloud services use a private key that only you know.

## Mobile Devices

- [ ] All mobile devices have at least a 6 digit PIN and screen timeout set.
  * Android devices should not use a pattern-style lock.
  * If supported, set your device to wipe all data after a certain number of failed unlock attempts. On iOS, this is under "Face (or Touch) ID &amp; Passcode" in Settings.
- [ ] Confirm "Find My" or equivalent is enabled.
- [ ] Rooted Android phones and jailbroken iPhones should be treated with care.

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
- [ ] I need to move a copy of the Daily Report database at a Lullabot Retreat where the internet is totally broken. I can use my USB drive because I've encrypted the drive using FileVault or BitLocker.
- [ ] I switch from iOS to Android because it sounds like fun. I don't need to migrate my 2FA tokens because they are stored in 1Password.

PGP (Pretty Good Privacy) is a system that lets people communicate with each other securely online. PGP lets you **sign** emails and files so others can be sure they haven't been modified and are actually from you. You can also use **PGP** to encrypt emails and files so only the intended recipients can view them. Why would you want a PGP key?

* You can sign emails you send and receive encrypted email without needing to pay for a certificate. Great for passing around passwords and credentials.
* You can sign and encrypt files that can be decrypted on any computer (unlike encrypted disk images that are tied to OS X). You could use GPG to encrypt a PDF of a sensitive HR form, and then the filled-out version could have a real digital signature on the returned copy.
* If you're writing code, you can use git to sign commits and tags. That lets others verify not only that the code hasn't been modified, but that the commit by Sally Young is _actually_ from Sally Young and not James Sansbury.

What are the limitations of PGP?

* Many email programs don't support any encryption systems at all, and some that do only support the centrialized [S/MIME standard](https://en.wikipedia.org/wiki/S/MIME). Most desktop email clients have plugins to add GPG support, but mobile devices usually don't support plugins in their apps.
* Using any sort of encryption or signing is difficult in webmail. GMail can't search the contents of encrypted emails since GMail doesn't have your decryption keys. There are browser plugins to add PGP support to GMail on the web, but GMail on Android and iOS don't support those plugins.
* When signing (and not encrypting) emails, recipients can get confused by the signature attachment added to the message. In general, **don't sign emails to clients** unless you know they are aware of PGP.
* For someone to decrypt a file, they have to be set up with PGP. You can't just call them and give them a password. However, PGP is pretty much the only secure solution for file encryption that works on all operating systems.

PGP uses a _web of trust_ to help us validate keys and their owners. In the SSL certificate world, you pay Verisign or some other company to validate your identity. Often it's a basic email or phone call check. With PGP, Andrew can say "I validated that PGP key ASDFXYZ belongs to Matt, because I saw him in person and looked at his drivers license". If you then decide to trust Andrew's key, you'll automatically be able to trust Matt's key. This model works really well for companies like Lullabot, where we work mostly online but see each other in person a few times a year.

## Creating a PGP Key

These steps use [GPG Tools](https://gpgtools.org/) for OS X. GPG also has a [Windows version](http://www.gpg4win.org/), and is available for All The Linuxes. Every PGP key has two halves: a **public key** that you share, and a **private key** that you keep to yourself. If someone else gets your private key (or the key on your hard drive plus your passphrase), they can **pretend to be you and decrypt all your data**. Treat your private keys like you would treat your banking or Google passwords.

### Create a new key with GPG Keychain

Open GPG Keychain, and click the "New" button to create a key. ![New key button](https://dailyreport.lullabot.com/system/files/1_new_key_button_2015-05-04_16-36-06.jpg) Enter your full name, and the email address you'd like to use. You can add additional email addresses later to the same key. Change the **expiration date** to one year from today. This value can be changed later, so set a calendar reminder to extend the expiration date of your key before that expiry date. If you lose your key, then this date will eventually kick in telling others not to use this key anymore. Enter a **strong passphrase** for the key. This should be one of the complicated passwords you do remember and commit to memory. Your computer login password isn't a bad idea, given that your passphrase will probably be stored in the OS X keychain. You can change this password later. ![Key configuration](https://dailyreport.lullabot.com/system/files/2_key_configuration_2015-05-04_16-39-20.jpg) Click **Generate key**, have fun spamming your mouse or keyboard, and you will have a new PGP key!

### Add additional emails to your key

To add more email addresses to your key, click **Details**, and then **User IDs**. If you have a different legal name from your given name, you can add those in here as well. ![More emails](https://dailyreport.lullabot.com/system/files/3_adding_additional_emails_2015-05-04_16-56-02.jpg)

### Adding your picture to your key

Adding a picture to your key gives yet another way to help validate your identity. PGP keys are shared as small text files, so you don't want to attach a 10MB JPEG to your key. For 'bots, you can grab a pre-sized thumbnail from your user account edit form on lullabot.com. ![Photo thumbnail](https://dailyreport.lullabot.com/system/files/4_picture_thumbnail_2015-05-04_20-32-40.jpg) Save this file, and then drag it in to the "Photos" tab on your key.

### Uploading your public key

Now that your key has been created, upload it to the public key directory. **Any time you update your key's public data, remember to upload it again!** ![Key upload](https://dailyreport.lullabot.com/system/files/5_upload_to_key_server_2015-05-06_13-04-29.jpg)

### Generating a revocation certificate

Sometimes you might find yourself in a situation where you've lost control of your key. Perhaps you lost your laptop, or someone you don't trust was using it while you were logged in. A revocation certificate lets you tell the world that a key should no longer be used or trusted. **GPG Tools for OS X** will [automatically store a revocation key](http://support.gpgtools.org/kb/gpg-keychain-faq/how-to-revoke-a-key-or-userid-and-can-i-delete-a-key-from-the-key-servers) for you, so as long as your computer is backed up it should always be possible to revoke a lost key.

## Encrypting a file

On OS X, right click a file, and "OpenPGP: Encrypt" will show up under the Services menu. ![Encrypting a file](https://dailyreport.lullabot.com/system/files/8_encrypt_file_2015-05-06_16-47-45.jpg) Choose who you want to be able to decrypt the file. In general, you will want to sign the file as well so the recipient knows it was **you** that sent it. ![Encrypt dialog](https://dailyreport.lullabot.com/system/files/9_encrypt_dialog_2015-05-06_16-52-09.jpg) If you chose to sign the file or let yourself decrypt it, you will be asked for your passphrase and a ".gpg" file will be created. This file can be emailed, shared on Dropbox, and so on, and it will be secure. There's a new "Encrypt with password" checkbox as well. That is useful for anyone who hasn't set up a public key yet. **However**, it still leaves you having to communicate that passphrase somehow. **Try to use public keys instead** because they are much easier to use once they are set up.

## Decrypting a file

Double click the .gpg file, and enter your passphrase. You might not be asked for your passphrase if you recently provided it. If the file was signed, and you have their public key in your keyring, GPG will tell you if it could validate who sent the file as well.

## Key Party!

A gaggle of 'bots are getting together in the real world. It's a great chance to sign any new keys! Here's a condensed set of steps taken from [The Keysigning Party HOWTO](http://www.cryptnet.net/fdp/crypto/keysigning_party/en/keysigning_party.html).

1.  Each person should create a key using the above steps.
2.  After, they should give the organizer the email attached to the key and the fingerprint of their key.![Copy fingerprint](https://dailyreport.lullabot.com/system/files/6_copy_fingerprint_2015-05-06_13-03-51.jpg)
3.  The organizer should import the key from the public server.
  * For the organizer, it's useful to create a separate keyring for the party to simplify creating a key list. `gpg --keyring ~/Desktop/party.gpg --no-default-keyring --recv-keys [KEY-ID]`
4.  The organizer should then provide each person with a table of keys they can use to mark the ones they have validated.

### Signing a key

Once you have validated a key fingerprint belongs to a person, you can right-click on it and select "Sign". **Uncheck the Signature Expires** checkbox for anyone who's identify you are very confident in. For Lullabot's, meeting in person should be enough to select "I have done very careful checking" since HR will have validated identities for employment. For others, check their driver's license or passport. Once the key is signed, upload it to a key server to tell the world about your trust in the identity. ![Signing a key](https://dailyreport.lullabot.com/system/files/7_key_signing_2015-05-06_16-23-50.jpg) If your key is signed by someone else, you can update your key from the public key servers to add the signature to your local copy of the key.
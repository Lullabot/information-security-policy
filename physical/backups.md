## Backups

### Policy
All computers must be backed up regularly, and backups must be encrypted.

### Scope
This policy applies to all Lullabot employees and contractors.

### Compliance
All Lullabot employees and contractors are responsible for backing up any machines in their possession.

### Explanation and Implementation

Backups are by far the most overlooked or ignored, and arguably one of the most important parts of a computer system. They are overlooked because they are boring and provide no immediate benefit. But, when disaster hits it is too late. If you do not have backups then you are in trouble.

There are multiple levels of backups, each with their own merits and costs. These levels range from keeping a copy of a file in a different folder on your computer all the way up to fully automated, full disk backups to the Cloud. Which level is appropriate depends on the data in the backup, and ultimately how you answer the following question:

What would I do if my working copy of this data disappeared?

For many of us at Lullabot, much of our work lives on GitHub, Google Drive, Dropbox, or some other online service. In this case, our answer might be "I would download a new copy" or "I would revert to a previous revision" or "I would contact service X and ask them to restore the data" and that might be enough. Nevertheless, in the likely case that this is not enough, a backup strategy is in order.

Time Machine on macOS makes automated backups very easy with an external hard drive. This should really be considered the baseline backup level for your computer. Turn on Time Machine, and for the
most part just forget about it and let it run. Even if most of your work is online, having Time Machine backups makes replacing a machine a much easier task. Instead of spending hours reinstalling applications and setting up preferences, you can start the restore process and come back to a ready-to-use machine.

Remember, it’s important to enable encryption for your Time Machine backups, just as you do with your hard drive. This is enabled by default in recent macOS releases. If for some reason encryption is disabled, you can enable it with:

* Go to System Preferences >> Time Machine
* Select “Stop using <disk name> for backups”
* Then “re-add” and when you do, select “encrypt backups”

Now that you feel all warm and fuzzy about being protected from accidental data loss on your computer, think about what you would do if both your computer and your backup device were stolen or destroyed in a fire, flood, or worse? What would you do? Could you get a new computer and get back to work? Probably
to some degree, but would you be missing some important files? Most likely.

A second layer of backups to an off-site location is the only way to protect yourself from this type of data loss. There are different ways to approach this problem, too, such as shipping a copy of your Time Machine volume to your parents every so often, or finding a friend to host an FTP server that you can dump files to every so often. These strategies are not wrong, but there are more practical solutions involving cloud storage. The simplest solution would be to store all of your important items in a Dropbox folder, though Dropbox is not a real backup solution. You could subscribe to a cloud backup service, but note that most services like Backblaze and Carbonite don't have appropriate encryption support for Lullabot data. These services are relatively cheap and may prove an important form of insurance. For a cheaper but slightly more complicated option, consider setting up [Amazon Glacier storage with Arq](https://www.arqbackup.com/documentation/) for your encrypted backups. Reach out to the team in on Slack in `#apple`, `#linux`, or `#windows` to find out about current tools and best practices.

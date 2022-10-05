# Security in the Cloud
Lullabot permits the use of public cloud applications, tools and technologies, known as “cloud services”. However, the use of insecure cloud services can introduce unintended risk to you, your coworkers, and the company. We want to balance the security of our content, networks and applications with the ability to work in a flexible, productive environment. 

## What is a cloud service?

We consider a cloud service to be any software as a service application that is hosted by the software vendor. The Google Suite, Dropbox, and Noko are all cloud services. As a distributed company working with many clients, cloud services make our business possible in the first place.
Some applications may not seem like cloud services, but use the cloud for sync and storage. For example, Apple Music is a cloud service, even though it’s only accessed through iTunes and not a web browser.

## What needs to be done to introduce a new cloud service at Lullabot?

Read the following, and then fill out [the service request form](https://forms.gle/aPZnrCoEhfhB67ck8).

If a new cloud service is purchased individually on PEX, and it does not require integration or access to Lullabot data stored in other services, no specific approval is required. Examples of services like this include:

- Evernote
- Arq Cloud Backup
- Microsoft Office 365

Be wary of applications that use your Lullabot account to access key personal data like email, especially if they are free or are low cost.

Apps that integrate with services used by the Lullabot team or interact with Lullabot customers should be discussed with the relevant directors and also need review by the security committee. Since these services are used by multiple team members, and not individuals, they typically are charged to a Lullabot expense card or are invoiced. Examples of services like this include:

- Geekbot, as it requires integration with our Slack instance.
- Drift, as it interacts with Lullabot customers and gathers their personal information.
- CircleCI, as it has access to customer owned source code.

Where possible, clients should be the account owner of cloud services in client engagements. While the security committee can provide feedback, the client should be primarily responsible for how they want to handle security reviews, if any.

## When do I use my Lullabot email and when do I use my personal email when signing up for Cloud services?
- If you are signing up for a service paid for by Lullabot, or a Lullabot client, use the Lullabot email address.
- If you are signing up for a service at the request of Lullabot, or a Lullabot client, use the Lullabot email address.
- If you are signing up for a service that will contain or provide access to Lullabot data, or Lullabot client data, use the Lullabot email address.
- If you are signing up for a service that you would continue to use even if you were no longer employed at Lullabot, use your personal email address.
- If you are signing up for a service that will not contain or provide access to Lullabot data, nor be used by others at Lullabot or Lullabot clients, use your personal email address.

If a service supports multiple email addresses per account, it’s OK (and even recommended) to use one “account” with multiple “identities”. GitHub is the most notable example of this, though services that are built on top of GitHub likely use the same model. For example, instead of creating a new account, add your Lullabot email address to your existing account. Use the built-in tools to associate work and personal email addresses with the right organizations and projects.

Some clients will create email addresses for you. Where possible, use your Lullabot email address instead of a client email address. This is especially important for VPN recovery, where client email may not be accessible outside of the VPN. Consider redirecting your client email to your Lullabot email if it’s supported by the client.

There are times when the answers might conflict, and you could make a case for using either email address. When in doubt communicate with your manager or the security team for instructions.

## How should I invite users to a Cloud service?

Many services can identify accounts with either a user name or an email address. If a service offers both (like GitHub), add accounts with person's email address rather than their username. That way, a typo in the invite is less likely to add someone completely unknown, and is more likely to be scoped to just accounts at the company you are working with.

## What if there are both personal and business versions of a cloud service?

Many cloud services used by Lullabot include provisions to store both business and personal information. For instance, there is a Lullabot Dropbox account, but you can also establish a personal Dropbox account and link them together. Our 1Password Business membership includes a free 1Password Families membership for each employee.

Any time there is an option to separate personal and business data in the cloud, we require employees to respect that separation. Don’t put Lullabot data, or Lullabot client data, into your personal account, nor add personal information into the Lullabot account. Lullabot won’t ever have access to your personal account, so nothing that belongs to the company or its clients should go into it. The test for whether you have separated your personal data properly is to confirm that if you were to unexpectedly lose access to the Lullabot account, you would still retain all your own personal data.

Some services, like iCloud, provide no easy way to separate business and personal data. Since company data is involved, we require that you use best security practices to protect all the data stored in these systems. These best practices include storing the data in encrypted format, and using encryption when transferring data by using HTTPS and the VPN as appropriate.

## How do I know it’s safe to use a cloud service?

The security team follows these guidelines when evaluating a new service. For example, when we investigated using Bamboo HR for Lullabot, we reviewed their Terms of Service, Privacy Policy, and any Security Policies. Examples of what was checked include:


- Their site HTTPs configuration with [SSL Labs](https://www.ssllabs.com)
- Their policies for data encryption and backup
- Their policies for who at BambooHR had access to our HR data
- Their password and password recovery policies (such as, do they limit passwords to 12 characters, or only allow letters and numbers)
- Their account and data deletion policies
- Their security reporting and notification practices

A search for “breach” or “leak” is also a good test to see if a service has a record of poor security. Instead of just investigating if a given service was breached, investigate how they handled the breach and how their systems were designed. For example, Yahoo has been shown to have a poor security track record, storing personal data and passwords in a way that made it easy for attackers to exploit.

Consider the type of data you are using the cloud service for. If all they have is your name and email address, the risk is pretty low. Don’t use client data when trying out a new service, so if it does turn out to be insecure, the breach is limited. This also applies to service access tokens and API keys (e.g. a Pantheon Terminus token or a GitHub API key). These should not be used with cloud services such as hosted development environments like GitPod. Tokens can be added to CI services, but they should be as tightly scoped as possible and not allow cross-client access. For example, don't generate a Pantheon access token from your personal user account which has access to multiple clients. Instead, create a bot user for that specific project and tie all tokens to the bot.

In general, the security team aims to provide feedback on possible issues to the relevant stakeholders, rather than acting as a blocker to new services. We may ask those requesting new services to help with the investigation. The fastest way to get a new service reviewed and approved is to create a document detailing the above areas of investigation.

Finally, if at all in doubt (or you just want help doing the above), ask in #security in Slack, or email security@lullabot.com.


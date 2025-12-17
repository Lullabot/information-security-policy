# Data Classification

When evaluating the security of processes and services, we often ask ourselves about the type of data the process or service will have access to. For example, individual salary information is clearly more sensitive than articles on lullabot.com. Use these definitions to classify data and documents consistently and clearly.

## Types of Data

* **Personal Information**: Privacy laws typically protect personal information, and include Protected Health Information (PHI) Persionally Identifiable Information (PII).
* **Confidential Information**: Information that if disclosed, could cause financial loss, damage our reputation, or violate legal obligations.
* **Non-Public Information**: Information that is limited to Lullabot and our clients, but where disclosure is unlikely to lead to direct harm.
* **Public Information**: Includes our website, content we make public, and information we obtain from public sources.

## Examples

When sharing information, ask yourself which bucket the information falls into. For example, we should not share team salary and compensation information with tools that are not validated by the security team to securely store such information.

* **Google Workspace**: Workspace can be used to store all types of data, being sure that access controls are set up for each file or folder as appropriate.
* **Slack**: Personal Information should be limited to private channels and direct messages. Information confidental to Lullabot should be kept in Lullabot-only channels and not channels shared with clients or vendors.
* **AI Tools with Training Enabled**: Tools that persistently store our information and may share it with other users should only be used with Public Information, or Non-Public Information where there is no harm if the information became public.

If in doubt about how to classify a given document or set of data, or if data can be safely used with a given tool, ask your manager or the security team.

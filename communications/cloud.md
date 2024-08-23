# Security in the Cloud and SaaS Evaluation Guidelines

## Introduction

As a distributed company working with many clients, cloud services and Software as a Service (SaaS) applications make our business possible. However, the use of insecure services can introduce unintended risks to you, your coworkers, and the company. This document outlines our policies and guidelines for evaluating and using SaaS and cloud services, balancing security with productivity.

## What is a Cloud Service or SaaS?

We consider a cloud service or SaaS to be any software application hosted by the vendor and accessed over the internet. Examples include Google Suite, Dropbox, Noko, and even applications like Apple Music that use cloud sync and storage.

## Key Terms to Understand

1. **Data Handling Policies**: Documented practices for collecting, storing, processing, and disposing of user data.
2. **Data Usage**: How the service utilizes collected data, including AI model training and third-party sharing.
3. **Acceptable Permissions**: Access rights a service reasonably needs to function effectively without compromising privacy or security.
4. **Sensitive Content**: Information that could potentially harm individuals or organizations if mishandled, including PII, financial data, unpublished content, and intellectual property.

## Evaluation Process for New Cloud/SaaS Services

### Key Questions to Ask

1. **Company Location**:
   - Is the company based in the US or an allied country?
   - Be cautious of companies based in countries like China, Syria, Saudi Arabia, or Russia.

2. **Data Handling**:
   - Can data be deleted if needed?
   - Is data being shared with others?
   - Are they using your data to train AI models?
   - How do they handle accidental input of sensitive information?

3. **Permissions**:
   - What integrations does the service require (e.g., calendars, email, file storage)?
   - If it requires more than basic login information, involve the security team for review.

4. **Security History**:
   - Has the company had any notable security breaches?
   - Check sources like Hacker News and Google News for reported incidents.

### Decision Tree for Evaluation

To help guide your evaluation process, we've created a decision tree. You can find the visual representation [here](https://www.mermaidchart.com/raw/9bce760b-17c1-4154-b09f-09b9b955f7ff?theme=light\&version=v0.1\&format=png). 

1. Determine if the company's location is known and acceptable.
2. Assess the company's data handling policies and usage practices.
3. Review the required permissions.
4. Investigate any major security breaches.
5. Determine if the service is suitable for use with your work account.
6. Check if the service will handle sensitive content.

If you've made it through all these steps with positive outcomes, you can approve the service for use. When in doubt, consult with the Security Team.

## Guidelines for Using Cloud/SaaS Services

### Email Address Usage

- Use your Lullabot email for services paid by Lullabot or clients, or that contain Lullabot/client data.
- Use your personal email for services you'd continue using if you left Lullabot, or that don't contain Lullabot data.
- For services supporting multiple email addresses (e.g., GitHub), add both work and personal emails to manage different projects.

### Inviting Users

When possible, invite users using their email address rather than username to reduce the risk of accidentally adding unknown individuals.

### Separating Personal and Business Data

- Always separate personal and business data when the service allows it.
- Don't put Lullabot or client data into personal accounts, or personal information into Lullabot accounts.
- For services without easy separation (e.g., iCloud), use best security practices to protect all stored data.

### Client Engagements

Where possible, clients should be the account owners of cloud services in client engagements. The security committee can provide feedback, but the client should be primarily responsible for security reviews.

## Approved Services Examples

- NotebookLM (part of Lullabot.com account)
- ChatGPT (avoid divulging sensitive information)
- Claude.ai (same guidelines as ChatGPT)

## Introducing New Services at Lullabot

1. For individual purchases on PEX without integration or access to Lullabot data, no specific approval is required.
2. Apps integrating with Lullabot team services or interacting with customers need review by the security committee and relevant directors.
3. Fill out [the service request form](https://forms.gle/aPZnrCoEhfhB67ck8) for new service requests.

## Conclusion

By following these guidelines, we can make informed decisions about adopting cloud and SaaS services, leveraging their benefits while minimizing potential risks. Always prioritize security, privacy, and data protection in your decision-making process.

Finally, if at all in doubt (or you just want help doing the above), ask in #security in Slack, or email security@lullabot.com.

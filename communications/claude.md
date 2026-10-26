# Claude at Lullabot

This policy explains how we decide which connectors and tools may be enabled for Claude across the organization, and how they are exposed in Cowork, Chat, and Claude Code.

See the Lullabot Software List in Google Workspace for the current list of connectors, and our general AI policy for how to use AI at Lullabot beyond just these security guidelines.

## Claude Connectors

### 1\. Lullabot-administered or local software only

Connectors are only enabled for software services that are owned and administered at the organization level. Tools purchased by individuals through their monthly technology stipend are not eligible. For tech stipend software, Lullabot does not control the account, the data terms, or offboarding. This matches our existing process for Google Workspace and Slack.

Software that runs entirely locally on a device may be connected to Claude on a case-by-case basis.

If a tool is broadly used by a department or many team members, or only supports centralized billing, we may switch those to be Lullabot managed. Talk to your manager or department lead if you have suggestions or ideas.

### 2\. Read vs. write operations

- Read operations may be configured as letting users decide between "**ask" and "always approve"**, depending on the connector and the sensitivity of the data it touches.
- Write operations **always require approval** unless they have a separate review and approval system for canonical or production data. This typically means a draft state of some kind where changes are reviewed by a person before being applied.
- "Default restriction for unconfigured tools" in approved connectors is set to **Blocked**, so we can review new capabilities similar to what we do with Slack, Google, and GitHub.

### 3\. Data sensitivity tiers

Connectors are classified by the sensitivity of the data they touch, not merely by the fact that they are approved. Higher-sensitivity connectors such as HR or finance receive tighter controls than lower-sensitivity tools like Figma.

No HR or finance connectors (beyond Google Sheets) are in use today. When one is introduced, it must be reviewed for the data it exposes before it is enabled.

### 4\. Least-privilege scopes

Connectors are granted the narrowest access that still works, rather than blanket read access. This matters most for broad-reach connectors like Google Workspace, where a connector can otherwise read nearly everything a user can.

### 5\. Connectors must authorize as the user working with them

Connectors should not use shared or system accounts, except for connectors accessing public data that is read-only. Make sure the connector has an OAuth or similar workflow for authentication, and that the scopes requested match what the connector tools are expected to do. Team members should always log in with `@lullabot.com` accounts in the connected service.

### 6\. Agentic loop exposure

Agentic loops in Claude Code and Cowork can chain actions faster than a human can review them. For that reason, write-heavy connectors are kept out of Claude Code.

#### Enabling agentic loops with human review

We will enable agents broader prompt-less write capabilities wherever there is an equivalent review gate with a human in the loop in the destination system. This is the same standard we already apply in engineering: the only place developers may write is targeting a protected GitHub branch where every change is reviewed.

Connector write access in an agentic loop with no review gate does not meet that standard. Anyone requesting broader, prompt-less write access should bring a workflow with a human checkpoint, and we will review it.

### 7\. MCP Development and Open-Source MCPs

Team members developing their own MCPs can ask for access to a localhost or DDEV URL to use with Claude Code. Team members wishing to *use* open-source MCPs should reach out to the security team for review and the DevOps team for centralized hosting on our own infrastructure.

### 8\. Offboarding

When a person's account is disabled, their connector access is removed with it, so no separate offboarding step is required.

## Chrome in Claude

This section explains how we use Chrome-driving features inside Claude, including the browser extension and the desktop app's built-in browser. These features bypass the policies defined in our connector policy, so they are detailed separately here.

See the Lullabot Software List in Google Workspace for the current list of allowed sites.

### 1\. Background

Chrome-driving features bypass how we manage data access through connectors. When Claude drives a real, logged-in browser, the approval gates and least-privilege scoping defined in the connector policy no longer apply, because the agent is acting as the signed-in user directly rather than through a scoped connector.

There are two specific risks:

- The browser extension gives the agent access to all of your active logins in that browser or browser profile.  
- On first run, the desktop app's built-in browser asks to copy your Chrome login sessions and keep them synced, extending that access into Claude's own browser.

These paths sidestep our other policies.

As well, the user interface for driving a browser in Claude is at cross-purposes to [their own safety guidelines](https://support.claude.com/en/articles/12902428-use-claude-in-chrome-safely). For example, Anthropic says users should "Stay alert for suspicious behavior", yet browser sessions can easily be put in the background and do not have retrospective monitoring tools like session video recordings. They also recommend users "Use a separate browser profile without access to sensitive accounts", yet push users to sync their default browser profiles to Claude. They also "strongly advise" against allowing Claude to handle "legal documents or contracts" or to access "work accounts with sensitive company data", which covers many of our use cases.

### 2\. Our policy model

Since we do not centrally manage machines, we can't ensure that team members are using separate browser profiles for Claude. Our primary mechanism for ensuring safe Chrome access to Claude is the **site allow list**. This allows us to review and approve specific sites and to ensure they are not overlapping with our enabled connectors.

In the future, with centrally managed machines and Chrome profiles, we could potentially deploy browser settings to instead let us move to a site denylist model instead.

### 3\. Required isolation

Chrome-driving features must run in an isolated environment, never against your everyday browser or logins. Recent flaws allowed hackers to use the Chrome extension to [access Gmail even when it wasn't on the allow list](https://thehackernews.com/2026/07/claude-for-chrome-flaw-lets-other.html). Isolation protects us from these types of exploits. Options include:

1. **Chrome in the Claude Desktop app**, **without session syncing.** This uses the built-in browser, keeping its data separate from your regular browsing. Do not log into work-related accounts in this browser.  
2. **Dedicated Chrome profile.** Use [a separate Chrome profile](https://support.google.com/chrome/answer/2364824) created solely for Claude use, with no work logins carried into it.  
3. **Dedicated virtual machine**. Run Claude and its browser inside a separate VM (like [UTM](https://getutm.app/)), so you control exactly what Claude and the browser can reach. Note that isolation alone does not stop someone logging into a sensitive service inside that VM, which is why the allow list still applies.

### 4\. On Claude Code Usage

Most developers should not need to connect Claude Code to the Chrome extension. Instead, use [ddev-playwright-cli](https://github.com/e0ipso/ddev-playwright-cli) which will automatically run a headless browser in a separate, isolated environment without access to your normal browsing data. If you do need to connect to a headed Chrome instance on your workstation, follow the **Required Isolation** steps to keep Claude Code separate from your normal login sessions.

### 5\. Adding to the site allow list

Browser access is restricted to an allow list of specific sites, enforced through Claude's organization settings. Principles:

- **Minimal by default.** A site is added only when there is a clear, justified need, not preemptively.
- **Exclude high-value destinations.** Services we already reach through connectors, above all Google Workspace, stay off the allow list. Allowing them would let the agent act on a real logged-in session and bypass exactly the connector controls we built.  
- **No sites where a logged-in session grants sensitive write access** unless there is a specific, reviewed reason.  
- **No sites with a large amount of unreviewed user-generated content.** Those sites should go through the WebSearch / WebFetch tools which add additional protections to prevent prompt injections.

Email `security@lullabot.com` to request a site to be added to the allow list.

### **6\. Prohibited**

The following are not permitted:

- Installing the Claude browser extension into your everyday or work Chrome profile, where it would gain access to your active logins. Use a separate browser profile.  
- Allowing the desktop app's built-in browser to copy or sync your Chrome login sessions from your real profile.  
- Using any Chrome-driving feature against a browser that holds your work logins, outside the isolated setup above.


---

layout: col-sidebar
title: OWASP Operational Technology Top 10
tags: example-tag
level: 2
type: documentation
pitch: A very brief, one-line description of your project

---

The OWASP OT Top 10 is a comprehensive list of the top security risks and vulnerabilities specific to Operational Technology (OT) environments. OT systems, which include industrial control systems and critical infrastructure, are increasingly being targeted by malicious actors. This list aims to provide guidance and best practices for securing OT systems and mitigating these risks.

By raising awareness and providing actionable recommendations, we aim to improve the security posture of OT systems and protect critical infrastructure from cyber threats.

# This is a work-in-progress, all information within this document is currently mostly used for testing automated tooling/deployment

# Introduction

This section should give an overview about OWASP, related documents/standards, etc.

- [About OWASP](/docs/about-owasp.md)
- [Related Standards and Documents](/docs/related-documents.md)
- [Community and Contributing](/docs/community-and-contributing.md)

# Introduction to OT

- [What is OT](/docs/what-is-ot.md)
- [Example OT Architectures](/docs/ot-architectures.md)
- [Differences between OT and IT](/docs/ot-vs-it.md)

# The OWASP OT Top 10

- [How were the OT Top 10 created](/docs/methodology.md)
- [Structure of each Top 10 entry](/docs/structure.md)

## The list of OT Top 10 (preliminary, TBD)

We're currently collecting potential candiates within [the repo](/docs/potential-top-10).

1. [Unknown assets](/docs/potential-top-10/unknown-assets.md)
2. [Missing/unsufficient Vulnerability management](/docs/potential-top-10/missing-vulnerability-management.md)
3. Unsufficient/missing network separation
4. Lax access controls  (account /user based)  - least privilege
5. Intentional misconfiguration for ease of use (e.g. leaving rtu’s in upload mode)
6. Missing configuration backups for OT-Devices
7. Legacy devices
8. Unmanaged external access (from above purdue model level 3 / IEC62443 zones/conduits )
9. Alert fatigue with “dirty” environment
10. Undefined processes for alert reporting/handling
11. Engineers not committed to security (safety as highest goal)

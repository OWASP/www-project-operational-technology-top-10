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

# introduction

## who is OWASP

## How to contribute?

## relationship to other OWASP standards

# what is OT?

## example architectures

- purdue model
- maybe an example out of the sp800-?
- also to explain typical components

## differentiation to IT

- also OT vs. IT attacks (also see ransomware)

## relevant standards

# Methodology

## how was this standard created?

## structure of each top 10 item

- name
- description
- known OT attacks that utilized this vulnerability
- references
  - relevant standars
  - OWASP cheat sheet series if relevant, etc.

# the list of vulnerabilities itself (TBD)

Each entry in the OWASP OT Top 10 will be accompanied by a short description, public incidents exploiting that entry, recommended mitigations and countermeasures, as well as references and tooling to assist in addressing the identified risks.

1. Unknown assets
2. Missing/unsufficient Vulnerability management
3. Unsufficient/missing network separation
4. Lax access controls  (account /user based)  - least privilege
5. Intentional misconfiguration for ease of use (e.g. leaving rtu’s in upload mode)
6. Missing configuration backups for OT-Devices
7. Legacy devices
8. Unmanaged external access (from above purdue model level 3 / IEC62443 zones/conduits )
9. Alert fatigue with “dirty” environment
10. Undefined processes for alert reporting/handling
11. Engineers not committed to security (safety as highest goal)

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

# the list of vulnerabilities itself (subject to change)

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

### Road Map
I have already reached out to multiple companies and research institutes (mostly Central Europe) for contributors (and potenial leaders, I'd like to have at least one leader currently working in Academia), including:

* Technical University of Vienna, Safety and Security Lab for Industrial Systems
* Siemens
* TTTech
* etc.

Responses are great, but most are awating freedback if this can become an official OWASP project.

We're just in the formative stage of our group, so this is only a rough time table.

Our goal is to release the initial beta version of the OWASP OT Top 10 by October 2024, aligning with the implementation of the European Union's critical infrastructure directive.

We are actively seeking contributors and partnerships with academia, research institutes, and industry leaders to ensure the effectiveness and relevance of this project.

Rough timeplan:

* end-of-june:
* gathering initial contributors/reach-out until Ende of June
* setting up the repository and automated deployment of HTML site
* end-of-august:
* preliminary list of 'top 10' including content
* september: getting the text publish ready
* beginning of october: initial public beta release
* timed so that OWASP can get publicity when the EU's critical infrastrucutre regulation hits the media
* also I want to have the OT Top 10 in place towards that time, as I fear that companies will start to fearmonger to drive sales

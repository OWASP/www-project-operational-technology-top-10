# (Accessible) Devices with known Vulnerabilities/Issues

Attackers love to find software/hardware with known vulnerabilities, especially if exploits are already available. Given a sufficiently devastating vulnerability, all other defenses are naught and the attacker can take over the device.

This can be used for initial access, e.g., when exploiting public facing services such as VPNs, or can be used within the target network for Lateral-Movement or Privilege-Escalation.

## Description

If an attacker is able to access a system with known exploitable vulnerable components, most other defense mechanisms are useless. The attacker will be able to take over the system, the only defenses that remain are those that reduce the pwned device's blast radius, i.e., reduces the systems that an attacker can attack "out-going" from the comproised device.

In traditional IT, the typical recommendation is to upgrade. This does not work in OT due to safety concerns, mandatory update time-windows, and generally longer lifetimes of used components. Compared to IT, OT works at a glacial pace.

As updates are sometimes not possible, mitigations such as network segregation are used. This prevents vulnerable systems to become accessible to attackers. Alas, these counter-measures do not solve the problem: if there is a vulnerability within the counter-measure, the original vulnerability can still be exploited. This often makes OT systems [very vulnerable against unexpected admin access](./unknown-assets-and-admin-access.md) or [badly designed zones](./broken-zone-and-conduits-design.md): once the attacker is in the network, they have access to exploitable systems and can commence from there.

### Why can't we just upgrade all the systems?

To reiterate on the special problems that the OT world faces, we want to give a list of common excuses/reason given that could prevent an easy implementation of a vulnerability management system:

- **You don't just upgrade a medical device or power plant**: this is not your typical desktop PC where you are annoyed if an update breaks your system for a couple of days, this is critical infrastructure upon which lifes potentially depend upon. Imagine you are depending upon a digital pace maker or insulin pump: would you just update it (without making sure that it will not negativly impact you)?

- **[Problems with the supply chain](./supply_chain_management.md)**: TBD
    - missing vendor support
    - missing vendor notifications
    - tight coupling to few vendors

- **[Usage of legacy devices](./components-with-insufficient-security-capabilities.md)**: TBD
    - missing capabilities for vulnerability remediation
    - long-lifetimes

- **[Missing Awareness on the OT side](./missing-awareness.md)**: TBD
    - *why should I update a running system?*

- **[Unknown devices and shadow infrastructure](./unknown-assets-and-admin-access.md)**: TBD
    - if you don't event know about a device, how should you know that you need to update it?

Please note, that this shows (primarily to IT security people) why upgrading is not as simple as in other domains but **does not mean that we (as OT) can use any of this as an excuse for not having update procedures in place**.

### Vulnerability Mangement?

Insufficient or missing vulnerability management practices in an OT environment can leave systems exposed to known security vulnerabilities. Not installing security patches eventually, will lead to an amplification effect when (not if) the attacker is within the system.

Even if all the issues mentioned in the last section do not apply for an OT system, security updates are very often not applied. The reason for that is **missing vulnerability management**.

TBD: what is part of vulnerability managenet? What are concrete first steps that an organization can do to establish a vulnerabilty management process?

## Rationale

Vulnerable devices bad. Especially in critical infrastructure.

## Known Attacks/Examples

!!! warning "given TRISIS: should misconfiguration also be a part of this section, or do we move this to 'missing awareness'"

- [TRISIS: The Triconex SIS controller had the keyswitch in ‘program mode’ during the time of the attack and the SIS was connected to the operations network against best practices. In a proper configuration and with the controller placed in Run mode (program changes not permitted) the attackers would face a more difficult challenge implementing the attack.](https://www.dragos.com/resources/whitepaper/trisis-analyzing-safety-system-targeting-malware/)
- [APT44 is a persistent and operationally mature adversary that uses diverse initial access methods ranging from common vectors such as phishing, credential harvesting, and known vulnerability exploitation to targeted supply chain compromises.](https://services.google.com/fh/files/misc/apt44-unearthing-sandworm.pdf)
- [Volt Typhoon typically gains initial access to the IT network by exploiting known or zero-day vulnerabilities in public-facing network appliances](https://www.cisa.gov/news-events/cybersecurity-advisories/aa24-038a)
- [Sensitive nuclear information (SNI), the industry’s special classification system, was left vulnerable in part because of the use of “obsolete” technology including Windows 7 and Windows 2008, Lawrence said.](https://www.theguardian.com/business/article/2024/aug/08/sellafield-apologises-guilty-plea-security-failings-nuclear)

### How-To Test (have to discuss)

!!! note  "maybe remove this (and add an appendix document with 'how to test' initially?)"

## Mitigation/Countermeasures

!!! note  "maybe renamet his from 'design/implementation' and 'operational' to something more role-specific?"

### Developers/Builders: Design and Implementation

- Try to prevent vulnerabilitites from accessing the system
    - [OWASP SAMM2](https://owaspsamm.org/)

- Test hardware/software before deploying them in the field
    - [OWASP IoT Security Testing Guide](https://owasp.org/owasp-istg/index.html)
    - [OWASP Firmware Security Testing Methodology](https://scriptingxss.gitbook.io/firmware-security-testing-methodology)

- Inform customers about security updates. Provide SBOMs.

- Don't depend upon security-by-obscurity.

### Integrators/Operators: Operational

- Make mandatory vulnerabilty notifications and remediation part of your supplier contracts.
- Keep an up-to-date asset register with hardware/software versions.
- Test hardware/software before deploying them in the field
    - [OWASP IoT Security Testing Guide](https://owasp.org/owasp-istg/index.html)
    - [OWASP Firmware Security Testing Methodology](https://scriptingxss.gitbook.io/firmware-security-testing-methodology)
- Establish a vulnerability management program that includes regular vulnerability scanning, patch management, and remediation processes.
    - Prioritize critical security updates and patches for OT systems to address high-risk vulnerabilities.
- Implement network segmentation and access controls to limit the impact of security vulnerabilities.

## References

!!! note  "maybe remove the subsections and just add a list with items and their respective descriptions"

### Standards

- links to relevant standards

### Background information

- links to blogs, etc.

### Tooling

- for testing, etc.

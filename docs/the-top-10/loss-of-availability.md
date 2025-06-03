# Availability

Availability, esp. in the context of Safety, is paramount and well-understood in the OT world. However, some aspects of availability are still problematic, e.g., integrity is part of availability.

Please note that we talk about protecting "our" infrastructure from DDoS and do not talk about becoming part of a botnet after a compromise (which is also problematic, but rather a subpart of [Missing Incident Detection/Reaction Capabilities](./missing-incident-detection-reaction-capabilities.md))

## Description

Availability is the property of being accessible and usable upon demand by an authorized entity. In the context of OT, availability is crucial as many systems are designed to operate continuously and cannot be easily patched or updated without causing downtime.

It's a common joke in the OT world that "availability is the only security property that matters". While this is an exaggeration, it highlights the importance of availability in OT systems. If a system is not available, it cannot perform its intended function, which can lead to safety hazards and other issues. To contrast that, there is ample anecdotal evidence of OT components crashing during a network scan.

### Denial-of-Service Attacks

Denial-of-Service (DoS) attacks are a common threat to availability. These attacks can take many forms, including network flooding, resource exhaustion, and application-layer attacks.

In the context of OT, DoS attacks can disrupt critical systems and services, leading to significant downtime and potential safety hazards. It is important to note that we care about the protection of the OT system itself: if a connected cloud-managed system
becomes target of a DoS attack and becomes not available while the OT system/process is still available, this is not an OT availability problem for us.

### Real-Time Communication Safety

One special aspect of availability in OT is the need for real-time communication safety. Many OT systems rely on real-time communication protocols to ensure that data is transmitted and processed in a timely manner, e.g., for controlling medical devices or factory automations. If these protocols are disrupted, it can lead to delays or failures in critical processes.

Typical IT network protocols such as TCP/IP are not designed for real-time communication and can introduce latency and jitter that can disrupt the operation of OT systems. Therefore, specialized protocols and hardware are often needed to ensure real-time communication safety in OT environments. Thus, real-time communication safety is a crucial aspect of availability in OT.

### Availability and Integrity

The well known CIA triad (Confidentiality, Integrity, Availability) is often misinterpreted in the context of OT. While integrity is often seen as a separate property, it is actually a crucial aspect of availability.

Imagine a sensor network that is used to monitor the temperature of a critical process. A direct attack against availability would be the destruction of the connected sensors. But if an attacker would perform an Integrity attack, e.g., floods the sensor network with fake temperature data, then the sensor network itself is still available but its sole goal (providing a correct temperature reading) is compromised and thus destroys the availabilty of the overall system.

To protect against integrity attacks, typically cryptographic measures such as signatures or MACs are used. However, these measures can introduce performance overhead and may not be suitable for all OT systems. For example, [some legacy systems may not have the processing power or memory](./components-with-insufficient-security-capabilities.md) to support cryptographic algorithms.

### Availability and Software Updates

In the context of OT, software updates are often seen as a risk to availability. This is because many OT systems are designed to operate continuously and cannot be easily patched or updated without causing downtime. However, software updates are also crucial for [maintaining the security and integrity of OT systems](./accessible-devices-with-known-vulnerabilities.md).

The [2024 CrowdStrike incident](https://www.crowdstrike.com/blog/crowdstrike-incident-response-team-cirt-responds-to-cyberattack-on-its-own-infrastructure/) is a recent example of how software updates can impact availability. In this case, automatic EDR updates causing significant disruption in multiple OT-areas, e.g., gas stations and hospitals.

## Rationale

- availability is paramount for the safety of OT systems
- the impact of integrity on availability is often overlooked
- recent incidents such as the CrowdStrike incident show that event non-malicious software updates can have a significant impact on availability

## Known Attacks/Examples

- On Feb. 24, 2022, the night before the Russian government launched its full-scale invasion, [Russian-backed hackers targeted thousands of modems linked to Viasat](https://cyberscoop.com/viasat-malware-wiper-acidrain/), the U.S.-based satellite and internet communications company, and relied on by the Ukrainian military. The attack — attributed to the Russian government by the United States and its allies — relied on a piece of malware that researchers with SentinelLabs dubbed "AcidRain."
- [Stuxnet](https://en.wikipedia.org/wiki/Stuxnet): both as an attack against availability and as an example of violating integrity with fake data.

## Mitigation/Countermeasures

### Design and Implementation

- perform a risk assessment to identify potential availability threats and vulnerabilities in OT systems
- implement redundancy and failover mechanisms to ensure continuous operation in case of a failure or attack
- use specialized real-time communication protocols and hardware to ensure real-time communication safety
- implement cryptographic measures such as signatures or MACs to protect against integrity attacks, while considering the performance overhead and suitability for the specific OT system

### Operational

- implement redundancy and failover mechanisms to ensure continuous operation in case of a failure or attack

## Next Actionable Steps

- perform a risk assessment to identify potential availability threats and vulnerabilities in OT systems

## References

### Standards

- Applicable standard requirements are listed in the [provided mapping table in the appendix](./../appendix/mappingTable.md).
- The [BSI Industrial Control System Security: Top 10 threats and countermeasures 2022](https://www.allianz-fuer-cybersicherheit.de/SharedDocs/Downloads/Webs/ACS/DE/BSI-CS/BSI-CS_005E.pdf?__blob=publicationFile&v=6) contains multiple threats directly related to availability, e.g., "Sabotage", "(D)DoS attacks", "Technical failure and force majeure".

### Background information

- [PLCs: To Scan or Not to Scan? (youtube, 20.6.2024)](https://www.youtube.com/watch?v=yqhn4xPwbfQ): presentation analyzing the impact of active scanning as well as OT-specific targeted scanning on PLCs, showing that even benign scans can cause crashes and disrupt availability.

### Tooling

- N.A.

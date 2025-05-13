# Availability

Availability, esp. in the context of Safety, is paramount and well-understood in the OT world. However, some aspects of availability are still problematic, e.g., integrity is part of availability.

Please note that we talk about protecting "our" infrastructure from DDoS and do not talk about becoming part of a botnet after a compromise (which is also problematic, but rather a subpart of [Missing Incident Detection/Reaction Capabilities](./missing-incident-detection-reaction-capabilities.md))

## Description

Availability is the property of being accessible and usable upon demand by an authorized entity. In the context of OT, availability is crucial as many systems are designed to operate continuously and cannot be easily patched or updated without causing downtime.

### Denial-of-Service Attacks

Denial-of-Service (DoS) attacks are a common threat to availability. These attacks can take many forms, including network flooding, resource exhaustion, and application-layer attacks.

In the context of OT, DoS attacks can disrupt critical systems and services, leading to significant downtime and potential safety hazards. It is important to note that we care about the protection of the OT system itself: if a connected cloud-managed system
becomes target of a DoS attack and becomes not available while the OT system/process is still available, this is not an OT availability problem for us.

### Real-Time Communication Safety

- real-time communication safety
- 'timing-attacks'?
- special protocols and hardware needed?
- do we see this as part of availability?

### Availability and Integrity

The well known CIA triad (Confidentiality, Integrity, Availability) is often misinterpreted in the context of OT. While integrity is often seen as a separate property, it is actually a crucial aspect of availability.

Imagine a sensor network that is used to monitor the temperature of a critical process. A direct attack against availability would be the destruction of the connected sensors. But if an attacker would perform an Integrity attack, e.g., floods the sensor network with fake temperature data, then the sensor network itself is still available but its sole goal (providing a correct temperature reading) is compromised and thus destroys the availabilty of the overall system.

To protect against integrity attacks, typcially cryptographic measures such as signatures or MACs are used. However, these measures can introduce performance overhead and may not be suitable for all OT systems. For example, [some legacy systems may not have the processing power or memory](./components-with-insufficient-security-capabilities.md) to support cryptographic algorithms.

### Availability and Software Updates

- think about software updates, quality assurance (crowdstrike incident)

## Rationale

- availability is paramount for the safety of OT systems
- recent incidents such as the CrowdStrike incident
- the impact of integrity on availability is often overlooked

## Known Attacks/Examples

- [On Feb. 24, 2022, the night before the Russian government launched its full-scale invasion, Russian-backed hackers targeted thousands of modems linked to Viasat, the U.S.-based satellite and internet communications company, and relied on by the Ukrainian military. The attack — attributed to the Russian government by the United States and its allies — relied on a piece of malware that researchers with SentinelLabs dubbed “AcidRain.”](https://cyberscoop.com/viasat-malware-wiper-acidrain/)
- [Stuxnet](https://en.wikipedia.org/wiki/Stuxnet): both as an attack against availability and as an example of violating integrity with fake data

## Mitigation/Countermeasures

### Design and Implementation

- mitigations for developers/builders

### Operational

- mitigations for integrators/builders

## Next Actionable Steps

- maybe add this to a separate section?

## References

- [BSI Industrial Control System Security: Top 10 threats and coutnermeasures 2022](https://www.allianz-fuer-cybersicherheit.de/SharedDocs/Downloads/Webs/ACS/DE/BSI-CS/BSI-CS_005E.pdf?__blob=publicationFile&v=6)

### Standards

- links to relevant standards

### Background information

- links to blogs, etc.

### Tooling

- for testing, etc.

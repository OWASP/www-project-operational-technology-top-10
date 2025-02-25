# Availability

- paramount and well-understood in the OT world
- still can be problematic, e.g., integrity is part of availability

## Description

- note that we talk about protecting "our" infrastructure from DDoS and do not talk about becoming part of a botnet after a compromise (which is also problematic, but rather a subpart of [Missing Incident Detection/Reaction Capabilities](./missing-incident-detection-response.md))

### Primitive (D)Dos attacks

- (replace todo in the future)
  - (D)DoS attacks
  - potentially against control infrastructure
    - are there documented attacks against sensor? seems not feasible

### Real-Time Communication Safety

- real-time communication safety
- 'timing-attacks'?
- special protocols and hardware needed?
- do we see this as part of availability?

### Availability and Integrity

- availability vs. integrity -- flooding with fake data
- while this is not direct availability, if you cannot trust your data, the datasource become unavailable
- might introduce a performance overhead (that would be neglectable in the IT world but can be [problematic in old OT hardware](./components-with-insufficient-security-capabilities.md))

### Availability and Software Updates

- think about software updates, quality assurance (crowdstrike incident)

## Rationale

- why did we include this item in the top 10?

## Known Attacks/Examples

- [On Feb. 24, 2022, the night before the Russian government launched its full-scale invasion, Russian-backed hackers targeted thousands of modems linked to Viasat, the U.S.-based satellite and internet communications company, and relied on by the Ukrainian military. The attack — attributed to the Russian government by the United States and its allies — relied on a piece of malware that researchers with SentinelLabs dubbed “AcidRain.”](https://www.cyberscoop.com/russia-ukraine-viasat-modem-hack-acidrain/)

Potential Sources

- <https://www.icsadvisoryproject.com>
- <https://icsstrive.com/>
- <https://emb3d.mitre.org/>
- <https://attack.mitre.org/techniques/ics/>
- please add more

### How-To Test (have to discuss)

- maybe add this to a separate section?

## Mitigation/Countermeasures

### Design and Implementation

- mitigations for developers/builders

### Operational

- mitigations for integrators/builders

## References

- [BSI Industrial Control System Security: Top 10 threats and coutnermeasures 2022](https://www.allianz-fuer-cybersicherheit.de/SharedDocs/Downloads/Webs/ACS/DE/BSI-CS/BSI-CS_005E.pdf?__blob=publicationFile&v=6)

### Standards

- links to relevant standards

### Background information

- links to blogs, etc.

### Tooling

- for testing, etc.

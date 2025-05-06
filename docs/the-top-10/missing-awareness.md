# Missing Awareness

Short Description (one paragraph)

## Description

- cyber-security hygiene
- why are security best-practises not applied? missing knowledge?
- culture
- OT guys know something that the IT guys know not

### Security by Obscurity does not work in the long run

- trying to wiggle out of security features via deflection to obscurity

### Security Capabilties are useless if not used

- everything configuration related
  - missing encryption even if available
  - available JTAG/SWD interface left enabled on production devices
  - Intentional misconfiguration for ease of use, e.g., leaving rtu’s in upload mode
  - lack of hardening

### Add Security Requirements to Tenders

## Rationale

- why did we include this item in the top 10?

## Known Attacks/Examples

- [The Register: Iranian hacktivists .. likely broke into the facilities by using defautl passwords for internet-accessible PLCs](https://www.theregister.com/2024/09/07/us_water_cyberattacks/)
- [Colonial Pipeline Hack](https://en.wikipedia.org/wiki/Colonial_Pipeline_ransomware_attack): The attackers gained access to the system by means of a compromised password for a disused VPN account.
- [TRISIS: The Triconex SIS controller had the keyswitch in ‘program mode’ during the time of the attack and the SIS was connected to the operations network against best practices. In a proper configuration and with the controller placed in Run mode (program changes not permitted) the attackers would face a more difficult challenge implementing the attack.](https://www.dragos.com/resources/whitepaper/trisis-analyzing-safety-system-targeting-malware/)

Potential Sources

- <https://www.icsadvisoryproject.com>
- <https://icsstrive.com/>
- <https://emb3d.mitre.org/>
- <https://attack.mitre.org/techniques/ics/>
- please add more

## Mitigation/Countermeasures

### Design and Implementation

- mitigations for developers/builders

### Operational

- mitigations for integrators/builders

## Next Actionable Steps

- maybe add this to a separate section?

## References

### Standards

- links to relevant standards

### Background information

- links to blogs, etc.

### Tooling

- for testing, etc.

# Broken Zones and Conduits Design

Having a sound segmentation concept mitigates already a lot of other security risks. This makes having proper segmentation and secured interfaces between the segments even more important. On the other hand, a complex design might introduce errors and loopholes in the design. Therefore, the "correct" design is not the most complex, or micro segmented, but the one that fulfills all the needs without being overly complex.

## Description

OT assets (like PLCs, Safety PLCs, HMIs, Historians) should be grouped according to their security requirements in zones. The zones itself can be defined via a risk-based approach (e.g. Threat and Risk Analysis). The objective is to balance operational feasibility (e.g. limited resources) with security considerations (e.g., avoiding overexposure of critical assets). Conduits are controlled communication paths between those zones. Within conduits, communication should be regulated using standard segmentation and segregation controls, such as firewalls and access control lists (ACLs). Segmentation is the process of dividing a network into smaller parts, where the network segments itself should be aligned to the zones defined earlier. Common design errors include:

- Missing demilitarized Zone (DMZ) between IT and OT: Direct connections from IT to OT zones and vice versa are possible without or without proper restriction.
- Overly broad IP and port ranges in access control lists: ACLs are configured with broad IP and port ranges, permitting entire network segments to establish connections across port ranges rather than enforcing per-host restrictions.
- Multi-homed-devices: Multi-homed devices have network interfaces in multiple network zones and may allow lateral movement, either through intentionally enabled routing capabilities or if the device is compromised.
- Possible command and control channels: Protocols such as IMAP and DNS within the OT network introduces the risk of unintended command and control channels, which may be used for lateral movement or data exfiltration.

```markdown
NOTES
- risk-based approach (mention threat modeling)
- goal: least functionality vs. over-exposure of services
- errors in network segregration
- potentially can also contain 'external admin access'?
- potentially 'forgotten hardware debug interfaces'?
- available JTAG/SWD interface left enabled on production devices
```

## Rationale

The most common entry into OT-zones comes from IT environments. For hardware devices the most common entry is via debugging interfaces. After getting entry into the system, without segmenting networks and isolating services, an attacker has full access to the network. Unfortunately, in realty networks are very flat. Segmentation or networks and services enables implementation of core principles like "defense in depth" and "need to know".

## Known Attacks/Examples

- [Cyber Risk Intelligence: Iran-Linked Attack on U.S.Water Treatment Facility](https://securityscorecard.com/wp-content/uploads/2024/01/aliquippa-report.pdf)
- [Russia-backed hacking group suspected of attack on US water system](https://www.techspot.com/news/102661-russia-backed-hacking-group-suspected-attack-us-water.html)
- Having e.g. your RDP connections exposed to the internet can have severe consequences as seen with Eternal Blue. ( [What Is EternalBlue and Why Is the MS17-010 Exploit Still Relevant?](https://www.avast.com/c-eternalblue) )
Potential Sources

- <https://www.icsadvisoryproject.com>
- <https://icsstrive.com/>
- <https://emb3d.mitre.org/>
- <https://attack.mitre.org/techniques/ics/>
- please add more

### How-To Test

- maybe add this to a separate section?

## Mitigation/Countermeasures

### Design and Implementation

- mitigations for developers/builders

### Operational

- mitigations for integrators/builders

## References

### Standards

- IEC62443-3-2
- ISO27001 Annex A.8.22

### Background information

### Tooling

- Bloodhound for AD tree building
- nmap for environment scanning

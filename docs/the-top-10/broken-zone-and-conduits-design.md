# Broken Zones and Conduits Design

Short Description (one paragraph)

## Description

- risk-based approach (mention threat modeling)
- goal: least functionality vs. over-exposure of services
- errors in network segregration
- potentially can also contain 'external admin access'?
- potentially 'forgotten hardware debug interfaces'?
- available JTAG/SWD interface left enabled on production devices

## Rationale

- why did we include this item in the top 10?

## Known Attacks/Examples

- [The Register: Iranian hacktivists .. likely broke into the facilities by using defautl passwords for internet-accessible PLCs](https://www.theregister.com/2024/09/07/us_water_cyberattacks/)

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

### Standards

- IEC62443-3-2
- ISO27001 Annex A.8.22

### Background information

**Examples:**

- OT-Devices directly connected to the internet can be found via e.g. shodan.io and accessed via unencrypted and unauthenticated OT protocols as seen at
the Cyber Attack at Aliquippa water plant in Pennsylvania in November 2023. [Cyber Risk Intelligence:
Iran-Linked Attack on U.S.
Water Treatment Facility](https://securityscorecard.com/wp-content/uploads/2024/01/aliquippa-report.pdf)

the Cyberincident "Muleshoe and Abernathy" water facilities in Texas in Jan 2024 [Russia-backed hacking group suspected of attack on US water system](https://www.techspot.com/news/102661-russia-backed-hacking-group-suspected-attack-us-water.html)
- Having e.g. your RDP connections exposed to the internet can have severe consquences as seen with Eternal Blue. ( [What Is EternalBlue and Why Is the MS17-010 Exploit Still Relevant? ](https://www.avast.com/c-eternalblue) )
  
### Tooling

- for testing, etc.

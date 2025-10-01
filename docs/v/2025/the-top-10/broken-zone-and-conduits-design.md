# Broken Zones and Conduits Design

Having a sound segmentation concept mitigates already a lot of other security risks. This makes having proper segmentation and secured interfaces between the segments even more important. On the other hand, a complex design might introduce errors and loopholes in the design. Therefore, the "correct" design is not the most complex, or micro segmented, but the one that fulfills all the needs without being overly complex.

## Description

OT assets (like PLCs, Safety PLCs, HMIs, Historians) should be grouped according to their security requirements in zones. The zones itself can be defined via a risk-based approach (e.g. Threat and Risk Analysis). The objective is to balance operational feasibility (e.g. limited resources) with security considerations (e.g., avoiding overexposure of critical assets). Conduits are controlled communication paths between those zones. Within conduits, communication should be regulated using standard segmentation and segregation controls, such as firewalls and access control lists (ACLs). Segmentation is the process of dividing a network into smaller parts, where the network segments itself should be aligned to the zones defined earlier. Common design errors include:

- Missing demilitarized Zone (DMZ) between IT and OT: Direct connections from IT to OT zones and vice versa are possible without or without proper restriction.
- Overly broad IP and port ranges in access control lists: ACLs are configured with broad IP and port ranges, permitting entire network segments to establish connections across port ranges rather than enforcing per-host restrictions.
- Multi-homed-devices: Multi-homed devices have network interfaces in multiple network zones and may allow lateral movement, either through intentionally enabled routing capabilities or if the device is compromised.
- Possible command and control channels: Protocols such as IMAP and DNS within the OT network introduces the risk of unintended command and control channels, which may be used for lateral movement or data exfiltration.
- Hardware debug interfaces act as backdoors into zones: When debug interfaces like JTAG or SWD are forgotten to be deactivated, they can act as an entry point into otherwise highly secured zones. By gaining access to e.g. a device on the shopfloor via physical access, this enables an attacker to potentially move laterally to other systems in the same zone and compromise it completely.
- Forgotten remote access: While remote access via different protocols and solutions is more or less a necessity in most modern OT environments, they too can act as effective bypasses for defined zone access controls when not considered from the start and isolated accordingly. By acting as kind of an out-of-bound conduit that was not defined beforehand, this can result in a potential point of entry into a otherwise highly isolated zone.

## Rationale

The most common entry into OT-zones comes from IT environments. For hardware devices the most common entry is via debugging interfaces. After getting entry into the system, without segmenting networks and isolating services, an attacker has full access to the network. Unfortunately, in realty networks are very flat. Segmentation or networks and services enables implementation of core principles like "defense in depth" and "least privilege".

## Known Attacks/Examples

- [Cyber Risk Intelligence: Iran-Linked Attack on U.S.Water Treatment Facility](https://securityscorecard.com/wp-content/uploads/2024/01/aliquippa-report.pdf)
- [Russia-backed hacking group suspected of attack on US water system](https://www.techspot.com/news/102661-russia-backed-hacking-group-suspected-attack-us-water.html)
- Having e.g., your RDP connections exposed to the internet can have severe consequences as seen with Eternal Blue ([What Is EternalBlue and Why Is the MS17-010 Exploit Still Relevant?](https://www.avast.com/c-eternalblue)).

## Mitigation/Countermeasures

### Design and Implementation

IEC 62443-3-2 suggests a full methodology for the establishment of zones and conduits. While details can be found there, a short summary should be given at this point:

1. **Identification of the System under Consideration (SuC)**: Identify all systems (hardware and software), network devices and communications links that should be secured by zones and conduits.
2. **Perform an initial cyber security risk assessment**: A high level risk assessment helps in identifying possible threats and worst case risks for the assets in the SuC. This allows prioritization of available resources where they are needed most.
3. **Partition of the SUC into zones and conduits**: Assets are grouped in segments on basis of the results of the initial risk assessment. Further criteria that can influence grouping are criticality of assets, physical and/or logical location, functionality or required access (“Least Privilege”). Conduits are then to be defined between zones. They should be as tightly controlled and minimized as possible.
4. **Check if initial risk exceeds tolerable risk**: If the results of Step 2 exceed the tolerable risk of the organization, an additional detailed risk assessment (Step 5) should be conducted. Otherwise, Step 5 can be omitted.
5. **Perform a detailed cyber security risk assessment**: For each zone and conduit, a more granular threat and risk assessment should be executed. This process should result in appropriate risk reduction measures and aims to identify any gaps in controls already put in place.
6. **Document cyber security requirements, assumptions and constraints**: All technical requirements for each zone and conduits, all assumptions made during the whole process and all constraints (legacy systems, technological issues, budgetary issues) must be documented for full transparency.
7. **Get asset owner approval**: Owners of affected assets have to review and approve results of the process.

### Operational

- Once zones and conduits are implemented, the have to be steadily monitored and reassessed for further improvements and adaptions. Especially network and system changes can require adaptions in the established zoning concept.

## Next Actionable Steps

- Inventorize your assets (including all required interfaces)
- Monitor your networks to get insights in what systems communicate with each other
- Follow the steps outlined above
- For more information, consult IEC 62443-3-2

## References

### Standards

- Applicable standard requirements are listed in the [provided mapping table in the appendix](./../appendix/mappingTable.md).

### Background information

- N.A.

### Tooling

- Bloodhound for AD tree building
- nmap for environment scanning
- Network monitoring tools for traffic analysis (especially useful for determination of needed conduits)

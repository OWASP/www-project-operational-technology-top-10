# Unknown Assets and Undocumented Services

Arguably the biggest threat to a network (IT and OT) is unmanaged and unknown assets. These assets are mostly already or will become outdated over time and introduce vulnerabilities and weaknesses into the system. Such assets can for example be used as initial access points into the network, for priviledge escalation, establishing persistence or lateral movement. Having a full inventory of assets that not only includes devices but also established remote access, deployed priviledges and other services is crucial to understanding the environment we are working with.

## Description

Unknown assets are devices or systems in an OT environment that are not properly identified or documented. These assets can include legacy systems, unmanaged devices, or unauthorized connections that are not accounted for in the organization's inventory.

```markdown
NOTES/TODO
- inter-section to incident detection (due to missing detection capabilitites), security-misconfiguration
- physical 'stuff'
  - manual list
- counter-measures
  - network scanning/discovery
  - port/traffic monitoring
- Unmanaged external access
  - from above purdue model level 3 / IEC62443 zones/conduits
  - maintenance access
  - this can be related to 'missing awareness'
```

## Rationale

History has shown that undocumented assets can be used by attackers for everything from initial access, via priviledge escalation up to completing the action on objectives. Hardening and segmentation measures can only be complete if all the assets are known and under consideration. Getting an overview of my network is always and therefore the most crucial step when starting with a security program. It is also the fundamental prerequisite for every ISMS, CSMS, and other frameworks.

## Known Attacks/Examples

- Stuxnet
- Triton
- WannaCry
- [Colonial Pipeline Hack](https://en.wikipedia.org/wiki/Colonial_Pipeline_ransomware_attack): The attackers gained access to the system by means of a compromised password for a disused VPN account.
- [Someone tried to poison a Florida city by hijacking its water treatment plant via TeamViewer, says sheriff](https://www.theregister.com/2021/02/09/florida_water_hacked/)
- [CISA and the Environmental Protection Agency (EPA) warned water facilities today to secure Internet-exposed Human Machine Interfaces (HMIs) from cyberattacks.](https://www.bleepingcomputer.com/news/security/cisa-warns-water-facilities-to-secure-hmi-systems-exposed-online/)

### How-To Test

- maybe add this to a separate section?

## Mitigation/Countermeasures

### Design and Implementation

- OT-environemts are static by design. During the building phase, the designer or integrator normally provides a detailed description of the environment. Changes to the environment must be documented. It is crucial to have the documentation process as part of the change process or change management policy.
- If one starts with an already existing environment, the first step to a complete asset inventory can be to take a pen and a piece of paper, go through the location and write down every device that can be seen. This is not only restricted to manufacturing or powerplants, but all types of environments we are working in. 

### Operational

- mitigations for integrators/builders:  Provide the documentation to the customer/asset owner.
- Implement asset discovery and inventory management tools to identify and document all assets in the OT environment.
- Regularly scan and monitor the network for new or unknown devices.
- Enforce strict access controls and authentication mechanisms to prevent unauthorized devices from connecting to the network. Also assume rogue devices/services in the network when designing security measures.

## References

### Standards

- ISA/IEC 62443 1-1 Foundational requirements
- ISA/IEC 62443 2-1 Inventory management of IACS hardware/software components and
network communication
- NIS Ch.3.2 Primary/Core Assets
- NIS Ch.3.3 Network Segmentation
- NERC CIP ID.AM Asset Management
- NERC CIP PR.AC Identity Management and Access Control
- NIST 1800-23 Energy Sector Asset Management: For Electric Utilities, Oil & Gas Industry
- NIST 1800-5 IT Asset Management

### Background information

- links to blogs, etc.

### Tooling

- [Nmap](https://nmap.org/)
- [Wireshark](https://www.wireshark.org/)
- [Shodan](https://www.shodan.io/)

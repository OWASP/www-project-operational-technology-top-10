# Unknown Assets and Undocumented Services

Arguably the biggest threat to a network (IT and OT) is unmanaged and unknown assets.  This can either be unknown assets that are plugged into your local OT network, or undocumented services (in the worst-case available from the public internet and [without sufficient access control](./insufficient-access-control.md).

There is an overlap with the [Missing Incident Detection/Reaction Capabilities](./missing-incident-detection-reaction-capabilities.md) as incident detection depends upon having a complete inventory of the environment. If we do not know what is in our environment, we cannot detect if something is happening to it.

## Description

Unknown assets are devices or systems in an OT environment that are not properly identified or documented. These assets can include legacy systems, unmanaged devices, or unauthorized connections that are not accounted for in the organization's inventory.

This is your typical "shadow IT" problem, but in the OT world, it can be even more dangerous. Unknown assets can be anything from a rogue device connected to the network to an undocumented service running on a server. These assets can introduce vulnerabilities and weaknesses into the system, making it easier for attackers to gain access and move laterally within the network.

These assets are mostly already or will become outdated over time and introduce vulnerabilities and weaknesses into the system. Such assets can for example be used as initial access points into the network, for privilege escalation, establishing persistence or lateral movement. Having a full inventory of assets that not only includes devices but also established remote access, deployed privileges and other services is crucial to understanding the environment we are working with.

Undocumented services can be any service that is not properly documented or managed, such as remote access solutions, cloud services, or third-party applications. These services can introduce vulnerabilities and weaknesses into the system, making it easier for attackers to gain access and move laterally within the network.

A special case of undocumented services are unmanaged external maintenance accounts. They are often used for increased convienience but offer adversaries ample attack opportunities. This can be seen as a case of [missing awareness](./missing-awareness.md).

### Unmanaged External Access

Unmanaged external access refers to connections to the OT environment that are not properly controlled or monitored. This can include remote access solutions, such as TeamViewer or VPNs, that are not documented or managed by the organization. These unmanaged connections can provide attackers with a way to bypass security controls and gain unauthorized access to the OT environment.

### Unmanaged Access for Maintenance

Unmanaged access for external personnel refers to situations where third-party vendors, contractors, or maintenance personnel have access to from within the OT environment without proper oversight or documentation. This can lead to unauthorized changes, vulnerabilities, and potential security breaches.

An example would be third-party contractor (that is connected to the internal network through VPN) that has access to the OT environment for maintenance purposes but does not follow proper security protocols or does not have their access documented. This can lead to unauthorized changes, vulnerabilities, and potential security breaches.

## Rationale

History has shown that undocumented assets can be used by attackers for everything from initial access, via priviledge escalation up to completing the action on objectives. Hardening and segmentation measures can only be complete if all the assets are known and under consideration. Getting an overview of my network is always and therefore the most crucial step when starting with a security program. It is also the fundamental prerequisite for every ISMS, CSMS, and other frameworks.

## Known Attacks/Examples

- Stuxnet
- Triton
- WannaCry
- [Colonial Pipeline Hack](https://en.wikipedia.org/wiki/Colonial_Pipeline_ransomware_attack): The attackers gained access to the system by means of a compromised password for a disused VPN account.
- [Someone tried to poison a Florida city by hijacking its water treatment plant via TeamViewer, says sheriff](https://www.theregister.com/2021/02/09/florida_water_hacked/)
- [CISA and the Environmental Protection Agency (EPA) warned water facilities today to secure Internet-exposed Human Machine Interfaces (HMIs) from cyberattacks.](https://www.bleepingcomputer.com/news/security/cisa-warns-water-facilities-to-secure-hmi-systems-exposed-online/)

## Mitigation/Countermeasures

### Design and Implementation

- OT-environemts are static by design. During the building phase, the designer or integrator normally provides a detailed description of the environment. Changes to the environment must be documented. It is crucial to have the documentation process as part of the change process or change management policy.
- If one starts with an already existing environment, the first step to a complete asset inventory can be to take a pen and a piece of paper, go through the location and write down every device that can be seen. This is not only restricted to manufacturing or powerplants, but all types of environments we are working in.

### Operational

- mitigations for integrators/builders:  Provide the documentation to the customer/asset owner.
- Implement asset discovery and inventory management tools to identify and document all assets in the OT environment.
- Regularly scan and monitor the network for new or unknown devices.
- Perform port/traffic monitoring.
- Enforce strict access controls and authentication mechanisms to prevent unauthorized devices from connecting to the network. Also assume rogue devices/services in the network when designing security measures.

## Next Actionable Steps

- Conduct a thorough inventory of all devices and systems in the OT environment.
- Implement network scanning and discovery tools to identify unknown assets.
- Establish a process for documenting and managing changes to the OT environment.
- Regularly review and update the asset inventory to ensure accuracy and completeness.

## References

### Standards

- Applicable standard requirements are listed in the [provided mapping table in the appendix](./../appendix/mappingTable.md).
- Following additional standards are relevant:
    - NERC CIP ID.AM Asset Management
    - NERC CIP PR.AC Identity Management and Access Control
    - NIST 1800-23 Energy Sector Asset Management: For Electric Utilities, Oil & Gas Industry
    - NIST 1800-5 IT Asset Management

### Background information

- N.A.

### Tooling

- ***Network Scanning and Discovery Tools:***: [Nmap](https://nmap.org/) is the standard OSS active network scanning tool. Be aware that it can be intrusive and may disrupt operations in a production environment. [Shodan](https://www.shodan.io/) is a web-based search engine that can help identify devices connected to the internet, including those in OT environments.

- ***Network Monitoring Tools:***: [Wireshark](https://www.wireshark.org/) is an OSS network protocol analyzer that can capture and analyze network traffic, helping to identify unknown devices and services.

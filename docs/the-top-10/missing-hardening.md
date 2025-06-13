# Missing Hardening

Hardening is usually done to make a system more secure, typically by reducing or restricting features which inherently reduces a system's attack surface. Another form of hardening is enabling additional layers of security so that an attacker has to overcome multiple hurdles to gain access to a system.

## Description

Hardening is the process of securing a system by reducing its surface of vulnerability. This can be achieved by removing unnecessary services, closing unused ports, and applying security patches. Hardening is an essential step in securing any system, as it reduces the number of potential entry points for attackers.

Another way of hardening is to apply additional layers of security, such as firewalls, intrusion detection systems, and encryption. These additional layers can help protect against attacks even if the underlying system is compromised. In the context of OT, hardening is particularly important due to the unique challenges and requirements of these systems. OT systems are often designed to operate continuously and cannot be easily patched or updated without causing downtime.

### Apply established hardening guidelines

Hardening guidelines are established best practices for securing systems and networks. These guidelines provide a framework for identifying and mitigating vulnerabilities, and they can help organizations implement effective security measures.

Some well-known hardening guidelines include the Center for Internet Security (CIS) benchmarks or the Defense Information Systems Agency (DISA) Security Technical Implementation Guides (STIGs).

### Disable default accounts and passwords

Default accounts and passwords are often used in OT systems, and they can pose a significant security risk if not properly managed. Attackers can easily exploit these default credentials to gain unauthorized access to systems and networks. It is essential to disable or change default accounts and passwords during the hardening process to reduce the risk of unauthorized access.

## Rationale

Inclusion of hardening in the OWASP OT Top 10 was a point of serious discussion.

Hardening itself does not reduce a concrete vulnerability but makes meaningful exploitation of vulnerabilities harder for attackers.

Empirical data, gathered during the development of the OWASP OT Top 10, showed that missing hardening was a common part of successful exploits and comprehensive hardening would have prevented successful exploitation.

Given the requirement of non-stop operation of many OT systems, hardening is crucial as it allows for controlled updates after a security issue has been identified (as the additional security layers uphold the security of the overall system).

## Known Attacks/Examples

- [Stuxnet](https://de.wikipedia.org/wiki/Stuxnet): Disabling USB ports could have avoided initial compromise.
- [NotPetya](https://en.wikipedia.org/wiki/NotPetya): Proper network segmentation and hardening could have limited the spread of the malware.

## Mitigation/Countermeasures
Mitigation and countermeasures can be applied along the supply chain. Starting from the vendor over the integrator to the asset owner.

### Developers/Component Suppliers/Integrators: Design and Implementation

To ensure robust software security across the development lifecycle, component suppliers, and integrators—must adopt proactive countermeasures:

- Disable unnecessary services and interfaces (e.g. USB ports, insecure protocols like Telnet, web server, JTAG/SWD interfaces)
- Start with established hardening benchmarks and gradually relax controls only as necessary to ensure your component or system functions properly
- Include Application allow-listing if possible
- Provide your component or system with a secure default configuration
- Provide a hardening guideline for your component or system to customers

### Operators: Operational

Operators play a critical role in maintaining the security and resilience of deployed systems. To reduce risk and ensure operational integrity, the following countermeasures are essential:

- Make sure hardening is reapplied after maintenance
- Request documentation of hardening measures
- Include hardening requirements in the tender, ideally with the integrator providing their own hardening concept
- Make sure hardening is actually implemented with a Pentest or some kind of Cybersecurity Acceptance Test (during SAT/FAT)

## Next Actionable Steps

To be able to implement sensible measures one could follow these steps:

- identify applicable hardening guidelines for your environment: Every environment is different and therefore has different needs and priotitizes different topics. Finding the right measures for the system under consideration is the first and most crucial step when trying to improve the security posture of a system.
- implement hardening guidelines: After identifying the shortcomings, hardening guidelines for the insecure systems can help to provide a good baseline to improve from.
- disable default accounts and passwords: Default credentials are commonly used and misused way of getting access to permissions that should normally be behind proper safeguards.

## References

### Standards

- Applicable standard requirements are listed in the [provided mapping table in the appendix](./../appendix/mappingTable.md).
- OT-specific hardening guides are often provided by the system integrator or product supplier, for example:
    - *"System Hardening for Substation Automation and Protection"* for SICAM/SIPROTEC, which includes hardening measures at the solution level as well as for individual components.
- Several organizations provide configuration baselines and benchmarks for common systems:
    - The **Center for Internet Security (CIS)** offers **Benchmarks** for various systems, including operating systems, network devices, and commonly used applications. In OT environments, relevant benchmarks cover operating systems, network infrastructure, and supporting applications.  
    - The **Defense Information Systems Agency (DISA)** publishes **Security Technical Implementation Guides (STIGs)**, which define configuration standards for securing Department of Defense (DoD) IT systems and are also widely adopted in other sectors.  
    - **Microsoft Security Baselines** recommend security settings for Windows operating systems and Microsoft applications.

### Background information

- [BSI IT-Security in der Industrie (german)](https://www.plattform-i40.de/IP/Redaktion/DE/Downloads/Publikation/leitfaden-it-security-i40.pdf?__blob=publicationFile&v=1)
- <https://en.wikipedia.org/wiki/Hardening_(computing)>
- <https://en.wikipedia.org/wiki/Defense_in_depth_(computing)>

### Tooling

- Tenable Nessus / OpenVAS, with compliance Scanning
- Microsoft Security Compliance Toolkit

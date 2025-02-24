# Devices with known Vulnerabilities/Issues

Short Description (one paragraph)

## Description

  - "everything where I as an attacker see a version number (hardware/software) and use an exploit for that version"
  - problems with mitigation on-device-itself/vulnerability
    - missing vulnerability management
  - problems without mitigation on-device-itself/vulnerability
    - legacy devices (hardware does not have capabilities)
    - missing vendor support
  - very related to other top 10 items as this is the outcome of problems in other areas
    - Selection of components/protocols with insufficient security capabilities
    - Missing Awareness
    - Unknown Assets and Unmanaged external Access
    - Supplier/Supply Chain Management

Insufficient or missing vulnerability management practices in an OT environment can leave systems exposed to known security vulnerabilities. Without proper patching and vulnerability scanning, attackers can exploit these vulnerabilities to gain unauthorized access and disrupt critical operations.

## Rationale

- why did we include this item in the top 10?

## Known Attacks/Examples

- Colonial Pipeline ransomware attack
- NotPetya
- TRISIS
- [APT44 is a persistent and operationally mature adversary that uses diverse initial access methods ranging from common vectors such as phishing, credential harvesting, and known vulnerability exploitation to targeted supply chain compromises.](https://services.google.com/fh/files/misc/apt44-unearthing-sandworm.pdf)
- [Volt Typhoon typically gains initial access to the IT network by exploiting known or zero-day vulnerabilities in public-facing network appliances](https://www.cisa.gov/news-events/cybersecurity-advisories/aa24-038a)
- [Sensitive nuclear information (SNI), the industry’s special classification system, was left vulnerable in part because of the use of “obsolete” technology including Windows 7 and Windows 2008, Lawrence said.](https://www.theguardian.com/business/article/2024/aug/08/sellafield-apologises-guilty-plea-security-failings-nuclear)

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
- Establish a vulnerability management program that includes regular vulnerability scanning, patch management, and remediation processes.
- Prioritize critical security updates and patches for OT systems to address high-risk vulnerabilities.
- Implement network segmentation and access controls to limit the impact of security vulnerabilities.

## References

### Standards

- links to relevant standards

### Background information

- links to blogs, etc.

### Tooling

- for testing, etc.

# WIP: potential Top 10 Items

!!! Note

    This page will be removed in the final version

## Preliminary Top 10 Items

```text
- Insufficient Access Control
  - Access Control: User Identification, Authentication, Authorization
  - unmanaged admin access
    - external
    - physical (JTAG)
  - Lax access controls  (account /user based)
    - least privilege
    - privilege creep
    - non-repudiation
  - potentially: way too large area, might need split-up; maybe use this user-management
  - alternative: (identity + authentication + roles) + (access control)

- Supply Chain Management

- Devices out in the field with known Vulnerabilities/Issues
  - "everything where I as an attacker see a version number (hardware/software) and use an exploit for that version"
  - problems with mitigation on-device-itself/vulnerability
    - missing vulnerability management
  - problems without mitigation on-device-itself/vulnerability
    - legacy devices (hardware does not have capabilities)
    - missing vendor support
  - TODO: differentiation to configuration errors?

- Faulty Trust Boundaries
  - errors in network segregration

- Missing Incident Detection/Reaction Capabilities
  - Missing Monitoring/Logging for Incident Detection (shadow infrastructure?)
    - Alert fatigue with “dirty” environment
  - Undefined processes for alert reporting/handling
  - Discussion? Missing configuration backups for OT-Devices

- Selection of insufficient Products/Protocols
  - legacy-to-be
  - legacy products for new deployments
  - protocols missing confidenciality/integrity (depends upon trust-zone)

- unknown assets

- Unmanaged external access (from above purdue model level 3 / IEC62443 zones/conduits )

- missing awareness
  - culture
```

## List provided by Simon

We're currently collecting potential candiates within [the repo](/docs/potential-top-10).

1. [Unknown assets](/the-top-10/unknown-assets/)
  - root cause vs. implications
  - Simon says this is important
5. Intentional misconfiguration for ease of use (e.g. leaving rtu’s in upload mode)
  - Culture? Missing Security Awareness?
8. Unmanaged external access (from above purdue model level 3 / IEC62443 zones/conduits )

## List provided by christopher

- Lack of authentication
- use of insecure 3rd party items - HW / SW assets with critical vulnerabilities
- available JTAG/SWD interface left enabled on production devices
- lack of encryption / minimal encryption
- lack of hardening peripheral devices in the system, exposing devices to possible vulnerabilities
- broadly: trying to wiggle out of security features via deflection to obscurity
- weak built-in security features like basic Bluetooth
- lack of encryption for mobile apps, log files and PHI/PII
- not protecting the BIOS/boot order

## BSI: ICS Top 10 threats and countermeasures 2022

- This feels more like a list of impact (e.g., 1, 2, 6) or intentions (e.g., 3)

[Source](https://www.allianz-fuer-cybersicherheit.de/SharedDocs/Downloads/Webs/ACS/DE/BSI-CS/BSI-CS_005E.pdf?__blob=publicationFile&v=6)

1. Infiltration of malware via remote media and mobile systems
2. infection with malware via internet and intranet
3. human error and sabotage
4. compromise of extranet and cloud components
5. social engineering and phishing
6. (D)DoS attacks
7. internet-connected control components
8. intrusion via remote maintenance access
9. technical failure and force majeure
10. soft- and hardware vulnerabilities in the supply chain

## Similar Lists

sync and/or create mapping

- <https://www.cisa.gov/news-events/cybersecurity-advisories/aa23-278a>

## ENISA Threat Landscapes

- Power / energy sector: <https://www.enisa.europa.eu/publications/power-sector-dependency?v2=1>
- Transport sector: <https://www.enisa.europa.eu/publications/enisa-transport-threat-landscape?v2=1>
- Health sector: <https://www.enisa.europa.eu/publications/cyber-security-and-resilience-for-smart-hospitals?v2=1>
- General (Figure 8 shows which OT-domain got how much attention from threat actors this year): <https://www.enisa.europa.eu/publications/enisa-threat-landscape-2024>

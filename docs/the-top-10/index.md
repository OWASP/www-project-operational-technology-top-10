# The Top 10

## Methodology

### How were the OT Top 10 created

- meetings every two weeks to gather the top 10 list
- quantitative discussion to form the top 10

### How did we make sure that we covered reality

- check existing OT incident reports and see if the proposed top 10 fit

## Structure of each Top 10 Item

Each entry in the OWASP OT Top 10 will be accompanied by a short description, public incidents exploiting that entry, recommended mitigation and countermeasures, as well as references and tooling to assist in addressing the identified risks.

| Field | Description |
| --- | --- |
| Name | Name/Title of the Item |
| Description | Show description of the item |
| Known OT Attacks utilizing this Item | <https://www.icsadvisoryproject.com>, <https://icsstrive.com/> |
| Mitigation/Countermeasures | There will be multiple levels: 1) design and implementation level mitigations for developers/builders;  2) operational mitigations for integrators, e.g., air-gapping systems |
| References| Relevant standards |
| Tooling | Links to Tools that can be used to test for the vulnerability|

## Provided Potential Top 10 Lists

### List provided by Simon

We're currently collecting potential candiates within [the repo](/docs/potential-top-10).

1. [Unknown assets](/the-top-10/unknown-assets/)
2. [Missing/insufficient Vulnerability management](/the-top-10/missing-vulnerability-management/)
3. Insufficient/missing network separation
4. Lax access controls  (account /user based)  - least privilege
5. Intentional misconfiguration for ease of use (e.g. leaving rtu’s in upload mode)
6. Missing configuration backups for OT-Devices
7. Legacy devices
8. Unmanaged external access (from above purdue model level 3 / IEC62443 zones/conduits )
9. Alert fatigue with “dirty” environment
10. Undefined processes for alert reporting/handling

### List provided by christopher

- Lack of authentication
- use of insecure 3rd party items - HW / SW assets with critical vulnerabilities
- available JTAG/SWD interface left enabled on production devices
- lack of encryption / minimal encryption
- lack of hardening peripheral devices in the system, exposing devices to possible vulnerabilities
- broadly: trying to wiggle out of security features via deflection to obscurity
- weak built-in security features like basic Bluetooth
- lack of encryption for mobile apps, log files and PHI/PII
- not protecting the BIOS/boot order

### BSI: ICS Top 10 threats and countermeasures 2022

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
10. sof- and hardware vulnerabilities in the supply chain

### Similar Lists

sync and/or create mapping

- <https://www.cisa.gov/news-events/cybersecurity-advisories/aa23-278a>

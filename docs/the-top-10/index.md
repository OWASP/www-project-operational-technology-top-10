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

## Ideas about Top 10 Lists

### After Discussion 28.8.2024

Maybe we should get to a more conceptional level, this might not be the list of Top 10 Vulnerabilities but rather an introduction how the concrete top 10 came to be. For example, "Insufficient Network Separation" is rather a problem with a mitigation and not the root cause vulnerability.

### Problems specific to OT (not vulnerabilities by themselves)

- Following List:
  - devices that cannot be updated
    - examples: due to availability concerns, vendor not providing updates, devices without update capabilities
  - over-dependence upon / defect mitigations
    - depending upon physical security
    - invalid air-gapping, see stuxnet
    - remediations are not a `get out of jail free` card and impose limitations and maintenance burden
    - examples: stuxnet

### High-level Vulnerabilities (Root-Causes)

- This could be a short-list (5-6 items) that explain some of our problems, that we very often solve by using network separation and/or depending upon physical access control --- which in turn can introduce vulnerabilities by themselves.
  - devices with (known) security vulnerabilities
    - **related to**: device cannot be updated
    - missing vulnerability management
    - missing patch management
  - unauthenticated/unauthorized communication without integrity protection
    - **note** this might be better suited for a "general problems in OT" and not a direct vulnerability
    - maybe replace with "attackers able to forge network requests"
  - attackers abusing unexpected attack surfaces
    - devices with additional unknown services (features, management, backdoors, etc.)
    - shadow infrastructure / unknown devices
    - maintenance access
    - **related to** 'defect mitigations'
    - vendors not publishing security advisories
  - attackers starting from unexpected areas
    - **related to** 'defect mitigations', 'too large blast zone'
    - shadow infrastructure / unknown devices
    - maintenance access
    - adversaries being able to stay on the network
  - Not being able to react/recover from incidents
    - missing backups/disaster recovery
    - Undefined processes for alert reporting/handling
    - Missing configuration backups for OT-Devices

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

### Similar Lists

sync and/or create mapping

- <https://www.allianz-fuer-cybersicherheit.de/SharedDocs/Downloads/Webs/ACS/DE/BSI-CS/BSI-CS_005E.pdf?__blob=publicationFile&v=6>
- <https://www.cisa.gov/news-events/cybersecurity-advisories/aa23-278a>

# The list of OT Top 10 (preliminary, TBD)

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

## Similar Lists (sync and/or create mapping):

- <https://www.allianz-fuer-cybersicherheit.de/SharedDocs/Downloads/Webs/ACS/DE/BSI-CS/BSI-CS_005E.pdf?__blob=publicationFile&v=6>
- <https://www.cisa.gov/news-events/cybersecurity-advisories/aa23-278a>

## After Discussion 28.8.2024

- maybe we should get to a more conceptional level with the Top 10
- e.g., "Insufficient Network Separation" is rather a problem with a mitigation and not the root cause vulnerability
- I believe that those high-level problems will be highly inter-related.
- controls/countermeasures: maybe add a separate directory and link those (if they are mentioned multiple times) to reduce duplication

- maybe those are better ideas (and each of them would have a list of examples)
  - fear of overly communicative devices?
    - merge this with `unexpected attack surface` or maybe split some things from there over here
    - maybe split between architecture and device?
  - devices that cannot be updated
    - **note** this might be better suited for a "general problems in OT" and not a direct vulnerability
    - examples: due to availability concerns, vendor not providing updates, devices without update capabilities
  - devices with (known) security vulnerabilities
    - related: device cannot be updated
    - missing vulnerability management
    - missing patch management
  - over-dependence upon / defect mitigations
    - depending upon physical security
    - invalid air-gapping, see stuxnet
    - remediations are not a `get out of jail free` card and impose limitations and maintenance burden
    - examples: stuxnet
  - too large blast zone
    - opposed to defense-in-depth/zero-trust
    - **note**: could this be removed as it is replaced by 'attackers abusing unexpected attack surfaces' and 'attackers starting from unexpected areas'
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
  - attackers abusing lax access controls
    - on device/service-level
    - on physical level
  - Not being able to react/recover from incidents
    - missing backups/desaster recovery
    - Undefined processes for alert reporting/handling
    - Missing configuration backups for OT-Devices

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

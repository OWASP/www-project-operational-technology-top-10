# The list of OT Top 10 (preliminary, TBD)

We're currently collecting potential candiates within [the repo](/docs/potential-top-10).

1. [Unknown assets](https://ot.owasp.org/potential-top-10/unknown-assets/)
2. [Missing/unsufficient Vulnerability management](https://ot.owasp.org/potential-top-10/missing-vulnerability-management/)
3. Unsufficient/missing network separation
4. Lax access controls  (account /user based)  - least privilege
5. Intentional misconfiguration for ease of use (e.g. leaving rtu’s in upload mode)
6. Missing configuration backups for OT-Devices
7. Legacy devices
8. Unmanaged external access (from above purdue model level 3 / IEC62443 zones/conduits )
9. Alert fatigue with “dirty” environment
10. Undefined processes for alert reporting/handling
11. [Engineers not committed to security (safety as highest goal)](https://ot.owasp.org/potential-top-10/security-culture/)

## Similar Lists (sync and/or create mapping):

- https://www.allianz-fuer-cybersicherheit.de/SharedDocs/Downloads/Webs/ACS/DE/BSI-CS/BSI-CS_005E.pdf?__blob=publicationFile&v=6
- https://www.cisa.gov/news-events/cybersecurity-advisories/aa23-278a

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
    - examples: due to availability concerns, vendor not providing updates, devices without update capabilities
  - devices with (known) security vulnerabilities
    - related: device cannot be updated
    - missing vulnerability management
    - missing patch management
  - over-dependence upon / defect mitigations
    - depending upon physical security
    - invalid air-gapping, see stuxnet
  - too large blast zone
    - opposed to defense-in-depth/zero-trust
  - unauthenticated/unauthorized communication without integrity protection
  - unexpected attack surface
    - remediations are not a `get out of jail free` card and impose limitations and maintenance burden
    - examples: stuxnet
    - devices with additional unknown services (features, management, backdoors, etc.)
    - shadow infrastructure / unknown devices
    - maintenance access
  - Lax access controls
    - on device/service-level
    - on physical level
  - Not being able to react/recover from incidents
    - missing backups/desaster recovery
    - Undefined processes for alert reporting/handling
    - Missing configuration backups for OT-Devices
  - adversaries being able to stay on the network

I would like to add security-by-obscurity prefered by vendors also somewhere.

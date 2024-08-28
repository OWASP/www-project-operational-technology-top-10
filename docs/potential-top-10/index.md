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
- maybe those are better ideas (and each of them would have a list of examples)
  - fear of overly communicative devices?
  - devices that cannot be updated
    - examples: due to availability concerns, vendor not providing updates, devices without update capabilities
  - too large blast zone
  - unauthenticated/unauthorized communication without integrity protection
  - depending upon physical security
  - devices with known security vulnerabilities
    - related: device cannot be updated
    - missing vulnerability management

I believe that those high-level problems will be highly inter-related.

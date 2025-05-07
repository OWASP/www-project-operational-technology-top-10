# The Top 10

## Methodology

### How were the OT Top 10 created?

- meetings every two weeks to gather the top 10 list
- qualitative discussion to form the top 10

### How did we make sure that we covered reality?

We gathered empirical data from both offensive and defensive companies and experts. This data was used to validate the proposed top 10 list and ensure that it accurately reflects the current state of OT security.

## The OWASP Operational Technology Top 10 List

During the discussions, we agreed upon the items of the top 10 list while the respective ranking was highly subjective.

The selected the Top 3 items as there was consensus that these are fundamental for OT security:

1. [Unknown Assets and Unmanaged External Access](./unknown-assets-and-admin-access.md)
2. [Devices with known Vulnerabilities/Issues](./accessible-devices-with-known-vulnerabilities.md)
3. [Inadequate Supplier/Supply Chain Management](./inadequate_supply_chain_management.md)

The next six items were all deemed to be of similar high importance:

4. [Insufficient Access Control](./insufficient-access-control.md)
5. [Missing Incident Detection/Reaction Capabilities](./missing-incident-detection-reaction-capabilities.md)
6. [Broken Zones and Conduits Design](./broken-zone-and-conduits-design.md)
7. [Missing Awareness](./missing-awareness.md)
8. [Components/Protocols with Insufficient Security Capabilities](./components-with-insufficient-security-capabilities.md)
9. [Availability](./availability.md)

The final item is not a security issue by itself but would have prevented many of the incidents reported from the field. We thus included it as final item in the Top 10 list:

10. [Missing Hardening](./missing-hardening.md)

## Structure of each Top 10 Item

Each entry in the OWASP OT Top 10 will be accompanied by a short description, public incidents exploiting that entry, recommended mitigation and countermeasures, as well as references and tooling to assist in addressing the identified risks.

| Field | Description |
| --- | --- |
| Name | Name/Title of the Item |
| Description | Show description of the item |
| Rationale | Why did we find this item important enough for inclusion? |
| Known OT Attacks utilizing this Item | <https://www.icsadvisoryproject.com>, <https://icsstrive.com/> |
| Mitigation/Countermeasures | There will be multiple levels: 1) design and implementation level mitigations for developers/builders;  2) operational mitigations for integrators, e.g., air-gapping systems |
| Next actionable steps | What can be done to identify and/or mitigate the issue? |
| References| Relevant standards |
| Tooling | Links to Tools that can be used to test for the vulnerability|

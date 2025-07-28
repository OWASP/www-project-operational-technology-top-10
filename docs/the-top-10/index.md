# The OWASP Operational Technology Top 10

This is the preliminary list of the OWASP Operational Technology Top 10. The list is a work in progress and will be updated as we gather more information and feedback from the community.

1. [Unknown Assets and Unmanaged External Access](./unknown-assets-and-admin-access.md)
2. [Loss of Availability](./loss-of-availability.md)
3. [Devices with Known Vulnerabilities](./accessible-devices-with-known-vulnerabilities.md)
4. [Insufficient Access Control](./insufficient-access-control.md)
5. [Broken Zones and Conduits Design](./broken-zone-and-conduits-design.md)
6. [Missing Incident Detection/Response Capabilities](./missing-incident-detection-reaction-capabilities.md)
7. [Inadequate Supply Chain Management](./inadequate_supply_chain_management.md)
8. [Missing Hardening](./missing-hardening.md)
9. [Components with Insufficient Security Capabilities](./components-with-insufficient-security-capabilities.md)
10. [Missing Awareness](./missing-awareness.md)

## Structure of Each Top 10 Item

Each entry in the OWASP OT Top 10 will be accompanied by a short description, public incidents exploiting that entry, recommended mitigation and countermeasures, as well as references and tooling to assist in addressing the identified risks.

| Field | Description |
| --- | --- |
| Name | Name/Title of the Item |
| Description | Show description of the item |
| Rationale | Why did we find this item important enough for inclusion? |
| Known Attacks/Examples | What are documented attacks that utilized the respective Top 10 item? |
| Mitigation/Countermeasures | There will be multiple levels: 1) design and implementation level mitigations for developers/builders;  2) operational mitigations for integrators, e.g., air-gapping systems |
| Next Actionable Steps | What can be done to identify and/or mitigate the issue? |
| References| Relevant standards, Links to Tools, and Background Information |

## Methodology

The project started Autumn 2024 with a meeting of the OWASP OT Top 10 leaders and subsequent announcements to the community. During monthly meetings we discussed potential Top 10 items and their relevance. Starting with 2025, we increased the frequency to one meeting every two weeks to finalize the alpha version.

In addition to the expert opinions, we also gathered empirical data from both offensive and defensive companies and experts. This data was used to validate the proposed top 10 list and ensure that it accurately reflects the current state of OT security.

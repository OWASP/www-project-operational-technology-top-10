# The Top 10

## Methodology

### How were the OT Top 10 created?

- meetings every two weeks to gather the top 10 list
- quantitative discussion to form the top 10

### How did we make sure that we covered reality?

- check existing OT incident reports and see if the proposed top 10 fit

## Preliminary Top 10 List

In no particular order:

- [Supplier/Supply Chain Management](./supply_chain_management.md)
- [Devices out there in the Field with known Vulnerabilities/Issues](./accessible-devices-with-known-vulnerabilities.md)
- [Unknown Assets and Unmanaged External Access](./unknown-assets-and-admin-access.md)
- [Insufficient Access Control](./insufficient-access-control.md)
- [Broken Zones and Conduits Design](./broken-zone-and-conduits-design.md)
- [Missing Incident Detection/Reaction Capabilities](./missing-incident-detection-reaction-capabilities.md)
- [Availability](./availability.md)
- [Missing Awareness](./missing-awareness.md)
- [Components/Protocols with Insufficient Security Capabilitites](./components-with-insufficient-security-capabilities.md)

## Structure of each Top 10 Item

Each entry in the OWASP OT Top 10 will be accompanied by a short description, public incidents exploiting that entry, recommended mitigation and countermeasures, as well as references and tooling to assist in addressing the identified risks.

| Field | Description |
| --- | --- |
| Name | Name/Title of the Item |
| Description | Show description of the item |
| Rationale | Why did we find this item important enough for inclusion? |
| Known OT Attacks utilizing this Item | <https://www.icsadvisoryproject.com>, <https://icsstrive.com/> |
| Mitigation/Countermeasures | There will be multiple levels: 1) design and implementation level mitigations for developers/builders;  2) operational mitigations for integrators, e.g., air-gapping systems |
| References| Relevant standards |
| Tooling | Links to Tools that can be used to test for the vulnerability|

## Existing Lists/Top-11 Items

We might move these to the `related standards` section later on, but keep them
here as food for thought for now:

| Issuer | Title | Description |
| --- | --- | --- |
| [BSI](https://www.bsi.bund.de/DE/Home/home_node.html) | [ICS Security Top 9 threats and countermeasures 2022](https://www.allianz-fuer-cybersicherheit.de/SharedDocs/Downloads/Webs/ACS/DE/BSI-CS/BSI-CS_005E.pdf?__blob=publicationFile&v=6) | Focus on impact and vectors (malware, phishing, DDoS, sabotage) |
| [CISA](https://www.cisa.gov) | [Top Ten Cybersecurity Misconfigurations](https://www.cisa.gov/news-events/cybersecurity-advisories/aa23-278a) ||
| [ENISA](https://www.enisa.europa.eu) | [Power Sector Dependency on Time Service](https://www.enisa.europa.eu/publications/power-sector-dependency?v1=1#contentList) | rather specific |
| [ENISA](https://www.enisa.europa.eu) | [Transport Threat Landscape](https://www.enisa.europa.eu/publications/enisa-transport-threat-landscape?v1=1#contentList) | |
| [ENISA](https://www.enisa.europa.eu) | [Cyber security and resilience for Smart Hospitals](https://www.enisa.europa.eu/publications/cyber-security-and-resilience-for-smart-hospitals?v1=1#contentList) ||
| [ENISA](https://www.enisa.europa.eu) | [ENISA Threat Landscape 2023](https://www.enisa.europa.eu/publications/enisa-threat-landscape-2024) | Figure 8 (Page 16), gives a per-sector attack overview|

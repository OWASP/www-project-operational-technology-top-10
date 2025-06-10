# Related Frameworks, Standards, and Regulations

While this document explores the unique challenges in OT networks and systems,
there are established standards both from [OWASP](../introduction/related-owasp-projects.md) and other organizations that can
provide useful information for suppliers, integrators and operators alike.

Additionally, like mentioned in the introduction, there is also a 
number of frameworks, laws, and regulations.

## Frameworks

### MITRE ATT&CK Framework

The MITRE ATT&CK framework is a comprehensive knowledge base of cyber adversary tactics, techniques and procedures (TTPs). It is widely used in cybersecurity to help understand, detect and respond to cyber attacks.
The MITRE ATT&CK framework is a living framework that is regularly updated based on real-world observations of attacker behaviour.
It provides a structured way to describe how attackers operate, with a focus on how they compromise systems and move through a network.

## Standards of other organizations

### IEC 62443

IEC 62443 is _the_ series of standards for OT environments. The series aims to develop cybersecurity robustness and resilience in the industrial control systems and their environments. It offers several standards for operators, integrators and suppliers, for example:

Operators:

- IEC 62443-2-1 _Security program requirements for IACS asset owners_
- IEC 62443-2-4 _Requirements for IACS service providers_

Integrators:

- IEC 62443-2-4 _Requirements for IACS service providers_
- IEC 62443-3-2 _Security risk assessment and system design_
- IEC 62443-3-3 _System security requirements and security levels_

Suppliers:

- IEC 62443-4-1 _Secure product development lifecycle requirements_
- IEC 62443-4-2 _Technical security requirements for IACS components_

### NIST SP 800-82r3

NIST’s Special Publication 800-82 Revision 3 “Guide To Operational Technology (OT) Security” offers comprehensive guidelines on how to securely deploy and operate OT systems and devices. The document provides an overview of OT and typical architectures and system topologies, looks and common OT threats and vulnerabilities and also gives recommendations on mitigations for identified risks. Due to this, the publication is especially relevant for operators and integrators.

### NIST Cybersecurity Framework (NIST CSF)

NIST CSF is a framework introduced by NIST to standardize the approach to managing cyber risk across sectors. In 2024 the second version was released. CSF is applicable to IT as well as OT and therefore is a helpful resource for all operators.

### ISO/IEC 27000

The ISO/IEC 27000 standard series – best known for the 27001 standard – defines requirements to establish an information security management system (ISMS). While ISO/IEC 27001 includes those definitions and controls in its annex, ISO/IEC 27002 provides proven guidelines on how to implement those controls. Widely established in IT environments, ISO/IEC 27000 series nonetheless can be valuable for operators and integrators, as many of the processes and the security management from IT can also be adopted to OT. This becomes even more true, when IT and OT security are integrated in a holistic approach to security throughout the whole organization.

[comment]:<### NERC CIP>

[comment]:<NERC CIP, short for _North American Electric Reliability Corporation Critical Infrastructure Protection_, is a series of standards regulating the cybersecurity of bulk electric system (BES) in North America. Compliance is mandatory for BES operators in the continental United States; the Canadian provinces of Alberta, British Columbia, Manitoba, New Brunswick, Nova Scotia, Ontario, Quebec, and Saskatchewan; and the Mexican state of Baja California Norte.>

[comment]:<### TISAX>

[comment]:<_Trusted Information Security Assessment Exchange_ (TISAX) is another standard for information security management systems. Originally based on ISO/IEC 27001 and adopted for the automotive industry, TISAX nowadays is quite different to ISO/IEC 27001. In 2024, version 6.0 was released. TISAX is only applicable to stakeholders active in the automotive sector.>

[comment]:<### IEC 62351>

[comment]:<IEC 62351 is developed by IEC TC 57 (Technical committee) and is a series of standards for the security of power system control centers and communication networks. Especially relevant for suppliers and integrators in the energy sector.>

## Regulations

### EU NIS 2 Directive

NIS 2, superseding NIS 1, is a EU-wide legislation aiming at improving the overall level of cybersecurity in the European Union. Published in 2022, all EU member states must adopt the directive through national law starting with 17 October 2024. All enterprises and organizations in scope of NIS 2 are required to fulfill technical and organizational security measure (details have to be defined by the member states) and are subjected to strict mandatory reporting in case of incidents with significant impact. All medium and large-sized companies meeting a certain threshold in 18 critical sectors are included in the scope of NIS 2. It is therefore a highly relevant legislation for operators.

[comment]:<### European Cyber Resilience Act (CRA)>

[comment]:<The CRA is an upcoming legislation (as of 2024), which intended goal is to strengthen the development of secure products that are placed on the EU market. In scope are all products with digital elements whose intended, or reasonably foreseeable use includes a direct or indirect logical or physical data connection to a device or network. The CRA defines essential requirements for secure design, development and production, requirements on the vulnerability handling processes put in place by manufacturers, rules for the placing on the market of affected products and rules on market surveillance and enforcement of all mentioned requirements. CRA applies to whoever brings an affected product into the EU market.>

[comment]:<### EU Machinery Regulation>

[comment]:<The new EU Machinery Regulation will come into force on 14 January 2027 and will replace the currently existing Machinery Directive 2006/42/EC. The regulation sets requirements for the safe manufacture, commissioning, operation and maintenance of machines and associated products, where safety and security are both stressed. It will affect operators, integrators, suppliers as well as importers and distributors.>

[comment]:<### EU Radio Equipment Directive>

[comment]:<The Radio Equipment Directive (RED) regulates the placing of radio equipment on the EU market for manufacturers and importers. Additional to existing requirements concerning safety, radio performance and electromagnetic compatibility, an extending requirement aiming to improve cybersecurity, privacy and data protection of radio equipment will come into force on 1 August 2025.>

## Existing Vulnerabilty Lists

| Issuer | Title | Description |
| --- | --- | --- |
| [BSI](https://www.bsi.bund.de/DE/Home/home_node.html) | [ICS Security Top 9 threats and countermeasures 2022](https://www.allianz-fuer-cybersicherheit.de/SharedDocs/Downloads/Webs/ACS/DE/BSI-CS/BSI-CS_005E.pdf?__blob=publicationFile&v=6) | Focus on impact and vectors (malware, phishing, DDoS, sabotage) |
| [CISA](https://www.cisa.gov) | [Top Ten Cybersecurity Misconfigurations](https://www.cisa.gov/news-events/cybersecurity-advisories/aa23-278a) ||
| [ENISA](https://www.enisa.europa.eu) | [Power Sector Dependency on Time Service](https://www.enisa.europa.eu/publications/power-sector-dependency?v1=1#contentList) | rather specific |
| [ENISA](https://www.enisa.europa.eu) | [Transport Threat Landscape](https://www.enisa.europa.eu/publications/enisa-transport-threat-landscape?v1=1#contentList) | |
| [ENISA](https://www.enisa.europa.eu) | [Cyber security and resilience for Smart Hospitals](https://www.enisa.europa.eu/publications/cyber-security-and-resilience-for-smart-hospitals?v1=1#contentList) ||
| [ENISA](https://www.enisa.europa.eu) | [ENISA Threat Landscape 2023](https://www.enisa.europa.eu/publications/enisa-threat-landscape-2024) | Figure 8 (Page 16), gives a per-sector attack overview|

## Mapping Table

A [Mapping table](https://ot.owasp.org/appendix/mappingTable/) linking the OWASP OT Top 10 items to some of the mentioned relevant standard and regulation requirements is provided.

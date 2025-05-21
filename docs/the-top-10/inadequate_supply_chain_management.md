# Inadequate Supply Chain Management

Supply chain attacks occur when adversaries target weaknesses in an organisation's supply chain - whether it's hardware, software or services provided by third parties. Instead of compromising the target directly, attackers exploit the relationship of trust between the organisation and its vendors or contractors to gain access to sensitive OT systems.

In the context of OT, the supply chain may involve complex vendor ecosystems, including software providers for SCADA systems, hardware manufacturers for industrial equipment, or maintenance services. An attacker infiltrates these supply chain links to gain access to operational technology, bypassing traditional cybersecurity defences.

Notable Common Weakness Enumerations (CWEs) included are *CWE CATEGORY: ICS Supply Chain*, *CWE CATEGORY: ICS Supply Chain: IT/OT Convergence/Expansion*, and *CWE-912: Hidden Functionality*. Notable MITRE ATT&CK items included are *T0862: Supply Chain Compromise*, and *C0024: SolarWinds Compromise*.

## Description

It is vital to protect OT supply chains, given their critical role in enabling modern society to function and generate economic prosperity. These supply chains facilitate the production, distribution, and maintenance of essential OT products, systems, and services that underpin various sectors, including healthcare, finance, transportation, and national security.
The following phases of the lifecycle of OT components or systems have to be considered when dealing with OT supply chains:

- Design (e.g., requirements specification and architecture)
- Development and production (e.g., raw material procurement and testing/quality assurance)
- Distribution (e.g., logistics and transportation)
- Acquisition, (e.g., retail and sales)
- Deployment (e.g., installation and configuration)
- Maintenance (e.g., use and support, especially provisioning of updates)
- Disposal/decommissioning

## Rationale

Dragos concluded in their threat perspective 2019 that the growing threat of supply chain attacks and vendor compromises allows new avenues for activity groups to
compromise IT and OT environments alike.

Furthermore, examples like SolarWinds Orion and Crowdstrike threat detection software demonstrated the scalability of supply chain issues, affecting numerous victims at the same time by the very same issue.

## Known Attacks

- [SolarWinds Orion Compromise] (https://attack.mitre.org/campaigns/C0024/). The SolarWinds compromise was a sophisticated supply chain cyber operation that was discovered in December 2020. The cyber operation involved the injection of malicious code into the SolarWinds Orion software build process, which was then distributed through a standard software update. The cyber actors also used password spraying, token theft, API abuse, spear phishing and other supply chain attacks to compromise user accounts and leverage their associated access.
- [CrowdStrike Compromise] (https://www.sygnia.co/blog/crowdstrike-outage-security-vs-operational-stability/). In 2024, a content update for CrowdStrike's Falcon sensor software caused global system disruptions. The "Blue Screen of Death" (BSOD) was triggered by a "Named Pipes" update intended to improve threat detection. An error in the update file's formatting led to the CrowdStrike driver accessing a non-existent memory address, triggering the BSOD. This affected numerous industries, including airlines, which canceled or delayed flights; healthcare, which experienced issues with medical records; and emergency 911 call centers, of which up to 100 in the US reported downtime. The outage disrupted businesses relying on OT and conventional IT, highlighting the widespread dependency on reliable technological services.
- [Dragonfly] (https://docs.broadcom.com/doc/dragonfly_threat_against_western_energy_suppliers). A cyber espionage campaign against a range of targets, primarily in the energy sector, provided the attackers with the capability to carry out sabotage operations against their victims. The attackers were able to infiltrate a number of strategically significant organisations for the purpose of espionage. Had they chosen to utilise the sabotage capabilities at their disposal, they could have potentially caused damage or disruption to the energy supply in the affected countries.
- [NotPetya] (https://en.wikipedia.org/wiki/Petya_(malware_family)). It was believed that the software update mechanism of M.E.Doc—a Ukrainian tax preparation program that, according to F-Secure analyst Mikko Hyppönen, "appears to be de facto" among companies doing business in the country—had been compromised to spread the malware. Analysis by ESET found that a backdoor had been present in the update system for at least six weeks prior to the attack, describing it as a "thoroughly well-planned and well-executed operation". The developers of M.E.Doc denied that they were entirely responsible for the cyberattack, stating that they too were victims.
- [Denmark’s Train Network Frozen Due to Cyberattack on Subcontractor](https://www.bitdefender.com/en-au/blog/hotforsecurity/denmarks-train-network-frozen-due-to-cyberattack-on-subcontractor).

## Mitigation/Countermeasures

### Design and Implementation

- It is vital that manufacturers of connectable software and hardware products ensure that such products are developed in line with security-by-default and security-by-design principles, and that their security is maintained during a support period.
- Products should undergo a third-party conformity assessment before they can be placed on the market.
- Consider implementing a multi-vendor strategy.

### Operational

- A dedicated notification procedure should be established in the event of a severe incident or an actively exploited vulnerability in a product that may affect multiple parties.
- It is imperative to undertake a thorough evaluation of the risk profile exhibited by suppliers on a regularly basis. This evaluation should be used to determine the necessity of reducing the risk posed by suppliers deemed to be high-risk. If the circumstances necessitate, it is also crucial to impose restrictions on or to exclude suppliers considered to be high-risk.
- Promotion of information exchange, awareness and training addressing supply chain risks.
- Include supply chain attacks in the regular incident, emergency, and crisis management plans and exercises.

## Next Actionable Steps

- Check on a regular basis that critical suppliers have appropriate and proportionate cyber security risk management measures in place to manage identified supply chain security risks. This may be conducted by supplier assessments or requiring relevant certifications (e.g., IEC 62443-4-1, IEC 62443-4-2).
- Ensure that relevant entities are resilient to supply chain threats by conducting preparedness or stress tests.
- Create test platforms or sandbox environments for secure testing.

## References

### Standards

- ISO 28000 family
- IEC 62443-2-1:2019 ORG 1.6
- IEC 62443-3-2:2020 ZCR 5.X
- NIST CSF 2.0 GV.OC-02
- NIST CSF 2.0 GV.OC-04
- NIST CSF 2.0 GV.SC
- NIST Special Publication 800-161
- EU NIS2 Directive Commission implementing Regulation C(2024) 7151 - ANNEX 5.X
- EU NIS2 Directive Commission implementing Regulation C(2024) 7151 - ANNEX 6.1  
- MITRE ATT&CK M0817

### Background information

Relevant CWEs

[CWE-912: Hidden Functionality](https://cwe.mitre.org/data/definitions/912.html) describes an asset that includes functionality which is undocumented, not specified, and not accessible through any interface or command sequence that is apparent to the asset's users or administrators.

[CWE-1361: ICS Supply Chain](https://cwe.mitre.org/data/definitions/1361.html) is a weakness category describes ICS supply chain risks in general. Weakness in this category address for instance the [IT/OT Convergence/Expansion](https://cwe.mitre.org/data/definitions/1369.html), [Common Mode Frailties](https://cwe.mitre.org/data/definitions/1370.html), [Poorly Documented or Undocumented Features](https://cwe.mitre.org/data/definitions/1371.html), and [OT Coutnerfeit and Malicious Corruption](https://cwe.mitre.org/data/definitions/1372.html).

Relevant MITRE ATT&CK framework items

Technique [Supply Chain Compromise](https://attack.mitre.org/techniques/T0862/). Adversaries may compromise the supply chain to gain access to control systems environments by introducing infected products, software, or workflows. Supply chain compromise involves manipulating products—such as devices or software—or their delivery methods before they reach the end consumer. The goal of this manipulation is to facilitate data or system compromise once the infected products are integrated into the target environment.

Measure [Supply Chain Management](https://attack.mitre.org/mitigations/M0817/). Establish a supply chain management program that includes policies and procedures to ensure all devices and components come from trusted suppliers and are tested to confirm their integrity.


### Tooling

- TBD/N.A.

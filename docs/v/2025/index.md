!!! info "Community and Contributing"

    Please don’t hesitate to contact the OWASP OT Top 10 project with your questions
    comments, and ideas, either publicly by adding issues or providing commits on
    [our github page](https://github.com/OWASP/www-project-operational-technology-top-10).
    Please join the [OWASP OT Top 10 Slack Channel](https://owasp.slack.com/archives/C07HDTYRA6R)
    to chat. You can get a free invitation to the OWASP slack server through
    [this website](https://owasp.org/slack/invite).
    
    We do a video conference every first monday of a month from 4pm to 5pm CET using
    [https://meet.google.com/fmu-sokc-gei](https://meet.google.com/fmu-sokc-gei). If
    you want to contribute, please see our [contributing guide](introduction/contributing.md).

    We gave a talk at the [IT SecX 2025](https://itsecx.fhstp.ac.at/) conference in
    Austria on October 3rd 2025, at the [OWASP BeNeLux 2025](https://2025.owaspbenelux.eu/)
    conference in Belgium on December 2nd/3rd 2025, at the
    [OWASP Vienna Chapter](https://www.meetup.com/owasp-chapter-vienna/) meeting on March
    31st 2026, as well as at the [Security Forum](https://www.securityforum.at/) in Austria
    on May 6th 2026.

# OWASP OT Top 10

Operational Technology (OT) encompasses a wide variety of programmable systems and
devices that have direct or indirect interactions with the physical environment.
These technologies are integral to numerous sectors such as manufacturing, energy,
transportation, medical, and utilities, where they play a crucial role in the
operation and management of physical processes.

As OT systems become more interconnected and integrated with Information Technology
(IT) networks, they face increased vulnerability to large-scale cyber attacks. This
integration, while beneficial for operational efficiency and data sharing, exposes OT
systems to the same cyber threats that typically target IT environments.

The risks associated with OT are particularly significant because these systems
control physical processes. Unlike IT environments, where cyber attacks primarily
impact data, breaches in OT systems can lead to catastrophic outcomes, including
physical damage, safety hazards, and disruptions to critical infrastructure.
Therefore, securing OT systems is paramount to prevent potentially severe
consequences. The significance of safeguarding OT environments cannot be overstated.
These systems are integral to the functionality of critical infrastructure, and thus society.

Despite their importance, OT systems often lack the robust cybersecurity measures more commonly found in IT environments. This is primarily due to the legacy nature of many industrial control systems (ICS) and the historical prioritization of operational goals. In OT, security principles follow the CIA triad - Confidentiality, Integrity, and Availability - but with a different emphasis than IT. Availability and safety are typically the highest priorities, as downtime or unsafe conditions can lead to severe operational, financial, or even physical consequences. Confidentiality and integrity, while still important, often take a secondary role compared to ensuring continuous and safe operations. This difference in prioritization has shaped the design and security posture of OT systems over time.

## Aim & Objective

The goal of the **OWASP Operational Technology (OT) Top 10** is to raise awareness about the top security risks and vulnerabilities specific to Operational Technology (OT) environments. By providing actionable recommendations, we aim to improve the security posture of OT systems and protect critical infrastructure from cyber threats.

## Scope

The scope includes all the devices in the OT-domain. This includes devices that are part of the core functionality of the system (CNC machines, SCADA systems, centrifuges, insulin pumps, HVAC,...) as well as all related devices (HMI, barcodescanner, surveillance  cameras on the shop floor, virtualization servers and VMs with core functionality,...). Office IT and edge devices that are not directly related to the main OT purpose are not in scope.

## Target Audience

This document is intended for professionals involved in the development, integration, and operation of OT systems, including system developers, integrators, and operators. It also provides value to development managers, product owners, QA professionals, program managers, and anyone engaged in building or maintaining software components for OT environments.

While developers can proactively create secure components, integrators are often limited to implementing mitigations. Recognizing this distinction is important for applying the guidance effectively.

The goal is to make these groups aware of the unique security challenges in OT environments and the risks that can (and likely will) arise if security is overlooked. Awareness measures may come from internal policies or supply chain requirements, and this document supports both approaches.

## How to Use This Document

The primary purpose of this document is to raise awareness of common security problems in the OT space and provide a foundation for addressing them. It introduces developers and integrators to the OT world and its specific requirements, helping them anticipate vulnerabilities and apply mitigations.

Readers should use this document as:
- **An awareness tool** for understanding critical OT security risks.
- **A reference guide** for best practices and mitigations.
- **A foundation for policy and supply chain requirements**, helping organizations align internal guidelines with external mandates.
- **A starting point, not a complete solution** - while the Top 10 risks are critical, they are not exhaustive. Additional risks may exist, and organizations should build a comprehensive security strategy beyond this list.


## The Top 10 List

During the discussions, we agreed upon the items of the top 10 list while the respective ranking was highly subjective. Items 1 to 4 were selected as the Top 4 because there was consensus that these are fundamental for OT security, items 5 to 9 were all deemed to be of similar high importance, and the final item is not a security issue by itself but would have prevented many of the incidents reported from the field.

The [Summary](summary.md) gives you all ten items with one sentence each, [The Top 10](the-top-10/index.md) has the full chapters.

## Project Leaders (in Alphabetical Order)

- [Andreas Happe](mailto:andreas.happe@owasp.org)
- [Siegfried Hollerer](mailto:siegfried.hollerer@owasp.org)
- [Simon Rommer](mailto:simon.rommer@owasp.org)

## Copyright and License

This document is released under the Creative Commons Attribution-ShareAlike 4.0 International license. For any reuse or distribution, you must make it clear to others the license terms of this work.

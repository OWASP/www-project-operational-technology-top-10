!!! info "Community and Contributing"

    Please don’t hesitate to contact the OWASP OT Top 10 project with your questions
    comments, and ideas, either publicly by adding issues or providing commits on
    [our github page](https://github.com/OWASP/www-project-operational-technology-top-10).
    Please join the [OWASP OT Top 10 Slack Channel](https://owasp.slack.com/archives/C07HDTYRA6R)
    to chat. You can get a free invitation to the OWASP slack server through
    [this website](https://owasp.org/slack/invite).
    
    We do a video conference every first monday of a month from 4pm to 5pm CET using
    [https://meet.google.com/fmu-sokc-gei](https://meet.google.com/fmu-sokc-gei). If
    you want to contribute, please see our [contributing guide](v/2025/introduction/contributing.md).

    We will give a talk at the [IT SecX 2025](https://itsecx.fhstp.ac.at/) conference
    in Austria on October 3rd 2025, as well as at the
    [OWASP BeNeLux 2025](https://2025.owaspbenelux.eu/) conference in Brussels on December 2nd/3rd 2025.

# OWASP OT Top 10

Operational Technology (OT) encompasses a wide variety of programmable systems and devices that have direct or indirect interactions with the physical environment. These technologies are integral to numerous sectors such as manufacturing, energy, transportation, medical, and utilities, where they play a crucial role in the operation and management of physical processes.

As OT systems become more interconnected and integrated with Information Technology (IT) networks, they face increased vulnerability to large-scale cyber attacks. This integration, while beneficial for operational efficiency and data sharing, exposes OT systems to the same cyber threats that typically target IT environments.

The risks associated with OT are particularly significant because these systems control physical processes. Unlike IT environments, where cyber attacks primarily impact data, breaches in OT systems can lead to catastrophic outcomes, including physical damage, safety hazards, and disruptions to critical infrastructure. Therefore, securing OT systems is paramount to prevent potentially severe consequences. The significance of safeguarding OT environments cannot be overstated. These systems are integral to the functionality of critical infrastructure, and thus society.

Despite their importance, OT systems often lack the robust cybersecurity measures more-commonly found in IT environments, primarily due to the legacy nature of many industrial control systems (ICS) and the historical focus on availability and reliability over security.

## Aim & Objective

The goal of the **OWASP Operational Technology (OT) Top 10** is to raise awareness about the top security risks and vulnerabilities specific to Operational Technology (OT) environments. By providing actionable recommendations, we aim to improve the security posture of OT systems and protect critical infrastructure from cyber threats.

## Scope

The scope includes all the devices in the OT-domain. This includes devices that are part of the core functionality of the system (CNC machines, SCADA systems, centrifuges, insulin pumps, HVAC,...) as well as all related devices (HMI, barcodescanner, surveillance  cameras on the shop floor, virtualization servers and VMs with core functionality,...). Office IT and edge devices that are not directly related to the main OT purpose are not in scope

## Target Audience

This document is written for two main target audiences: On one side we have system developers, operators, and integrators. This mirrors the OT world in which system components are developed and integrated (i.e., configured and setup on-site) by different parties with different capabilities. On the other side we have developers who can pro-actively create secure components, integrators are often limited to implement mitigations.

However, development managers, product owners, Q/A professionals, program managers, and anyone involved in building software can also benefit from this document.

Especially for groups that are not yet aware of the (security risks) in this space, awareness on what issues may arise is key.
Even though awareness, or the lack thereof rather, is its own major talking point in the following list, reading this document already shows some kind of awareness for the problems that might occur. We also have to differentiate between awareness measures that are introduced by policy or internal guidelines, and measures that are mandated by supply chain management requirements. The former is part of what is commonly understood when we talk about "awareness," while the latter is arguably part of [supply chain management](v/2025/the-top-10/inadequate_supply_chain_management.md) in general.

The goal is to make the target audience aware of what can (and most likely will) go wrong.

## How to Use This Document

This document’s main purpose is to create awareness for possible common security problems in the OT space and provide a solid foundation of topics to help introduce developers and integrators to the OT world and its very special set of requirements.

## The Top 10 List

During the discussions, we agreed upon the items of the top 10 list while the respective ranking was highly subjective. The selected the Top 4 items as there was consensus that these are fundamental for OT security:

1. [Unknown Assets and Unmanaged External Access](v/2025/the-top-10/unknown-assets-and-admin-access.md)
2. [Devices with known Vulnerabilities/Issues](v/2025/the-top-10/accessible-devices-with-known-vulnerabilities.md)
3. [Inadequate Supplier/Supply Chain Management](v/2025/the-top-10/inadequate_supply_chain_management.md)
4. [Loss of Availability](v/2025/the-top-10/loss-of-availability.md)

The next five items were all deemed to be of similar high importance:

5. [Insufficient Access Control](v/2025/the-top-10/insufficient-access-control.md)
6. [Missing Incident Detection/Reaction Capabilities](v/2025/the-top-10/missing-incident-detection-reaction-capabilities.md)
7. [Broken Zones and Conduits Design](v/2025/the-top-10/broken-zone-and-conduits-design.md)
8. [Missing Awareness](v/2025/the-top-10/missing-awareness.md)
9. [Components/Protocols with Insufficient Security Capabilities](v/2025/the-top-10/components-with-insufficient-security-capabilities.md)

The final item is not a security issue by itself but would have prevented many of the incidents reported from the field. We thus included it as final item in the Top 10 list:

10. [Missing Hardening](v/2025/the-top-10/missing-hardening.md)

## Project Leaders (in Alphabetical Order)

- [Andreas Happe](mailto:andreas.happe@owasp.org)
- [Siegfried Hollerer](mailto:siegfried.hollerer@owasp.org)
- [Simon Rommer](mailto:simon.rommer@owasp.org)

## Copyright and License

This document is released under the Creative Commons Attribution-ShareAlike 4.0 International license. For any reuse or distribution, you must make it clear to others the license terms of this work.

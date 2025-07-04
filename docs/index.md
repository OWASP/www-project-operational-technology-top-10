!!! Warning "Work in Progress and Help wanted!"

    Please don’t hesitate to contact the OWASP OT Top 10 project with your questions, 
    comments, and ideas, either publicly by adding issues or providing commits on [our
    github page](https://github.com/OWASP/www-project-operational-technology-top-10).

    Please join the [OWASP OT Top 10 Slack Channel](https://owasp.slack.com/archives/C07HDTYRA6R)
     to chat. You can get a free invitation to the OWASP slack server
    through [this website](https://owasp.org/slack/invite).

    Until the Top 10 have stabilized, we aim to do a video conference every two weeks
    (typically every second and fourth monday).

    ```plain
    OWASP OT Videocall
    Monday, January 27 · 5:00 – 6:00pm
    Time zone: Europe/Vienna
    Google Meet joining info
    Video call link: https://meet.google.com/fmu-sokc-gei
    Or dial: ‪(US) +1 669-244-0206‬ PIN: ‪940 723 699‬#
    ```

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

This document is written for two main target audiences: system developers, operators, and integrators. This mirrors the OT world in which system components are developed and integrated (i.e., configured and setup on-site) by different parties with different capabilities. While developers can pro-actively create secure components, integrators are often limited to implement mitigations.

However, development managers, product owners, Q/A professionals, program managers, and anyone involved in building software can also benefit from this document.

## How to Use This Document

This document’s main purpose is to provide a solid foundation of topics to help introduce developers and integrators to the OT world an its very special set of requirements.

## Project Leaders (in Alphabetical Order)

- [Andreas Happe](mailto:andreas.happe@owasp.org)
- [Siegfried Hollerer](mailto:siegfried.hollerer@owasp.org)
- [Simon Rommer](mailto:simon.rommer@owasp.org)

## Copyright and License

This document is released under the Creative Commons Attribution-ShareAlike 4.0 International license. For any reuse or distribution, you must make it clear to others the license terms of this work.

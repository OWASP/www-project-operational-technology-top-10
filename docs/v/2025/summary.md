# Summary

OT runs the physical processes we all depend on: power plants, production lines, water treatment, medical devices. They are built for availability and safety, operated for decades, and now connected to office IT, their vendors, and often the internet. When things go wrong in IT, the usual impact is data loss; when things go wrong in OT, production stops, equipment is damaged, and people can be hurt. The ten items below are the risks and missing practices our contributors keep running into, not individual vulnerabilities.

## The Top 10 at a Glance

*The Top 4, on which there was consensus that they are fundamental:*

1. **[Unknown Assets and Undocumented Services](the-top-10/unknown-assets-and-admin-access.md)**: If you cannot see it, you cannot patch, segment, or monitor it; undocumented services and forgotten remote access are how intruders reach the process.
2. **[Devices with Known Vulnerabilities](the-top-10/accessible-devices-with-known-vulnerabilities.md)**: Exposed devices with known vulnerabilities are easy, high-value OT targets. A single exploited PLC, HMI, or RTU can bypass upstream defenses and threaten the process.
3. **[Inadequate Supply Chain Management](the-top-10/inadequate_supply_chain_management.md)**: Vendors, integrators, and maintenance providers already have privileged access, so attackers use them to scale one compromise across many operators.
4. **[Loss of Availability](the-top-10/loss-of-availability.md)**: Availability is the primary OT requirement. Outages can result from malware, unsafe changes, integrity failures, or faulty updates.

*The next five, all deemed to be of similar high importance:*

5. **[Insufficient Access Control](the-top-10/insufficient-access-control.md)**: Shared passwords, missing roles, and remote access without MFA turn one stolen credential into a path to the process.
6. **[Missing Incident Detection/Reaction Capabilities](the-top-10/missing-incident-detection-reaction-capabilities.md)**: Without logging, monitoring, and tested response, intrusions persist unseen for months and escalate from small incidents to major outages.
7. **[Broken Zones and Conduits Design](the-top-10/broken-zone-and-conduits-design.md)**: Flat networks let one compromised host reach many systems. The right zone design matches how the plant actually communicates and limits the blast radius.
8. **[Missing Awareness](the-top-10/missing-awareness.md)**: Controls must be understood and supported by operators. When staff do not know why a security measure exists, it is bypassed or disabled to keep production running.
9. **[Insufficient Security Capabilities](the-top-10/components-with-insufficient-security-capabilities.md)**: OT systems last decades; equipment or protocols selected without authentication, encryption, or update capability create legacy risks that are hard to remediate later.

*Not a security issue by itself, but it would have prevented many reported incidents:*

10. **[Missing Hardening](the-top-10/missing-hardening.md)**: Hardening does not eliminate vulnerabilities, but it raises the cost of exploitation. In our experience, lack of hardening is what turned a vulnerability into a breach.

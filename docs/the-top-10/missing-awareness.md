# Missing Awareness

It's not enough to have security capabilities, they need to be used. If noone is aware of potential security issues and how the respective security capabilities can help, employees will not use them and thus finally useless.

## Description

Security awareness is the understanding and knowledge of security risks, threats, and best practices within an organization. It involves educating employees about potential security vulnerabilities and how to mitigate them. In many cases, organizations have security capabilities in place, but employees are not aware of them or do not know how to use them effectively.

There is a connection to [Devices with Missing Capabilities](/the-top-10/components-with-insufficient-security-capabilities/): we need both sdvices with security capabilities and the knowledge to use them. If either is missing, the security capabilities are useless.

The same goes for security policies: if there are policies in place, but they are not lived, they are ultimately useless. This can be due to a lack of knowledge or understanding of the policies, or it can be due to a lack of resources or time to implement them. The best way to counteract this is to make employees understand why the security policies were created and how they protect their daily work.

### Add Security Requirements to Tenders

Very often security is an afterthought leading to problems such as insecure designs that are expensive to fix, as well as missing resources for security. This is especially problematic in the OT world with its long-running lifetimes: if security is not part of the design process, fixes can become prohibitively expensive and applying those fixes will lead to downtimes.

A good way to counteract this is to add security requirements to tenders. By including these requirements in tenders, organizations can ensure that security is considered from the outset of the project. Making security tests a part of acceptance tests also gives the "customer" more leverage when negotiating security fixes with the vendor.

### OT and IT are often not integrated

OT and IT are often not integrated, leading to a lack of communication and understanding between the two teams. This can result in security gaps and vulnerabilities that are not addressed.

IT security people often wonder why even basic secruity hygiene is not applied in OT environments. This can be due to a lack of understanding of the unique challenges and requirements of OT systems. While OT people are in possessin of the ground truth, they often wonder why security is now being pushed into their environments.

Many OT systems are designed to operate continuously and cannot be easily patched or updated without causing downtime. This can lead to a culture of "if it ain't broke, don't fix it" that can leave systems vulnerable to attacks.

### Security by Obscurity does not work in the long run

Security by obscurity is the practice of keeping security measures secret in order to protect them from attackers. This can include using proprietary protocols, custom hardware, or other techniques that are not widely known or understood. The idea is that if attackers do not know how the system works, they will not be able to exploit it.

However, this approach is flawed. Attackers can often reverse-engineer systems or find other ways to discover vulnerabilities, even if the details of the system are not publicly available. Security by obscurity can create a false sense of security and lead to complacency in addressing vulnerabilities.

This approach is often used in OT environments, where systems are not well documented or understood. However, this approach is not effective in the long run, as attackers can still find ways to exploit vulnerabilities.

Security by obscurity can be used to make an attacker's job more difficult, but it should not be relied upon as the sole means of protection.

### Security Capabilities are useless if not used

In OT, we often have the initial probelm of long-lived [components with missing capabilities](/the-top-10/components-with-insufficient-security-capabilities/), but even if we have the needed capabilities, they are often not used. This can be due to a lack of knowledge or understanding of the capabilities.

Educating employees (in the sense of "explaining the reasons for the measures taken" and not "preaching security") thus is of high importance to ensure that security capabilities are used effectively. This includes providing training and resources to help employees understand how to use security capabilities, as well as creating a culture of security awareness within the organization.

Examples of security problems introduces by missing awareness include:

- everything configuration related
- missing encryption even if available
- available JTAG/SWD interface left enabled on production devices
- Intentional misconfiguration for ease of use, e.g., leaving rtu’s in upload mode

## Rationale

The best hardware with the best security capabilities is useless if noone is aware of them and how to use them. Educating employees about security risks and best practices can help mitigate vulnerabilities and improve overall security posture.

## Known Attacks/Examples

- [The Register: Iranian hacktivists .. likely broke into the facilities by using defautl passwords for internet-accessible PLCs](https://www.theregister.com/2024/09/07/us_water_cyberattacks/)
- [Colonial Pipeline Hack](https://en.wikipedia.org/wiki/Colonial_Pipeline_ransomware_attack): The attackers gained access to the system by means of a compromised password for a disused VPN account.
- [TRISIS: The Triconex SIS controller had the keyswitch in ‘program mode’ during the time of the attack and the SIS was connected to the operations network against best practices. In a proper configuration and with the controller placed in Run mode (program changes not permitted) the attackers would face a more difficult challenge implementing the attack.](https://www.dragos.com/resources/whitepaper/trisis-analyzing-safety-system-targeting-malware/)

## Mitigation/Countermeasures

### Design and Implementation

- capture security requirements in the design process
- explain OT-specific security requirements to software developers (if development is part of the implementation/design process)

### Operational

- add security requirements to tenders
- make security tests part of acceptance tests
- create a culture of security awareness
- provide training and resources to employees to help them understand and use security capabilities effectively.
- implement security policies and procedures that are easy to understand and follow

## Next Actionable Steps

- add security requirements to tenders
- create a culture of security awareness: help employees understand why the security controls taken are important for their work.
- provide training and resources to employees to help them understand and use security capabilities effectively.

## References

### Standards

- ISA/IEC 62443 1-1 Foundational requirements

### Background information

### Tooling

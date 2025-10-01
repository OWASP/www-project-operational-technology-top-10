# Insufficient Access Control

Access Control is a critical aspect of security in any system, but it is especially important in Operational Technology (OT) environments. Insufficient access control can lead to unauthorized access to sensitive systems and data, producing serious consequences for safety and security.

This is an intricate problem that touches on multiple levels of security, including physical, organizational, and technical measures.

## Description

Access Control is the process of restricting access to systems and data to authorized users. Access Control is performed on multiple levels:

- **Organizational**: Organizational access control measures, such as policies and procedures, are designed to ensure that only authorized personnel have access to sensitive systems and data. If an organisation has no written down access matrix (`which employee is allowed to operate what?`), implementing the respective technical access control system is not possible.
- **Technical**: Technical access control measures, such as authentication and authorization mechanisms must be implemented within the used components. This is mostly a topic for system designers and implementors. During operation, these available technical access control measures must be used and enforced by the operators and employees.
- **Physical**: Physical access control measures, such as locks and security guards, are often the first line of defense against unauthorized access in OT environments. However, they are often over-relied upon, leading to a false sense of security.

### Particularities of OT

#### Emergency Situations

Access Control and Safety can be conflicting. A good example is the use of emergency stop buttons. In an emergency situation, it is critical that the emergency stop button can be activated quickly and easily. However, this can lead to a situation where unauthorized personnel can also activate the emergency stop button, leading to potential safety hazards.

Another good example are medical devices in hospitals: you do not want to have a password prompt when a doctor wants to use a defibrillator

#### Legacy Systems

Old systems often have only [limited security functions](./components-with-insufficient-security-capabilities.md). Many (legacy) devices do not support authentication or authorization. As a result, unauthorized access is possible.
  
Legacy devices often also offer no connection to a central identity management system. This makes it difficult to maintain and respond to changes in the organization's responsibilities on an ongoing basis

### Organizational Level

On an organizational level, poorly defined access control can result in "privilege creep," where users accumulate more access than necessary for their job, potentially granting them access to systems and data they should not have.

A well designed access control system should incorporate the following principles:

- **Role-Based Access Control**: Users should be assigned roles based on their job responsibilities. This can help to ensure that users only have access to the systems and data that they need to perform their job and prevents privilege creep, where users accumulate access rights over time.
- **Least Privilege**: Users/roles should only have access to the functions and data they need to perform their job.
- **Separation of Duties**: More than one person is required to perform a task. This should be implemented for critical tasks.
- **Clear Trust Boundaries**: To allow for analysis, [trust boundaries](./broken-zone-and-conduits-design.md) have to be defined. This is especially important in the OT world, where the Purdue Model is often used to define trust boundaries.
- **Ongoing Employee Training**: Very often, [OT personnel are not aware of the security implications of their actions](./missing-awareness.md). This can lead to a situation where a system is not properly secured because the operators do not know how to do it.
- **Deactivating Accounts**: When a user leaves the company, their account should be deactivated.

### Implementation Level

- are controls in place? are they well implemented and configured according to best practices?

- given that we want to control access for, e.g., externally reachable adminitrative interfaces (VPN servers, web-panels), are implemented controls sufficient? Having a remote management solution without mandatory and enforced multi-factor authenticator is not state-of-the-art in 2025. Nor was it in 2024. Nor before.

- have default passwords been changed? are there any default accounts that have not been disabled?

- have controls be tested? are they working as intended?

- have physical access control assumptions been documented and tested? It is easier than some people think to get on a factory floor.

- **non-repudiation**: the system should be able to prove who did what. This principle is broken if there's a shared user/password list for devices on the factory floor.

## Rationale

The prevalence of:

- shared password lists
- over-dependency on physical security
- initial attack vector: remote access without multi-factor authentication

## Known Attacks/Examples

- [After quitting his job at the plant at the beginning of 2019, he then used the remote login system again on March 27, 2019, to shut down the plant and one of its treatment filters..](https://www.ksnt.com/news/local-news/kansas-hacker-pleads-guilty-to-shutting-down-drinking-water-plant-with-phone/)
- [Colonial Pipeline Hack](https://en.wikipedia.org/wiki/Colonial_Pipeline_ransomware_attack): The attackers gained access to the system by means of a compromised password for a disused VPN account.

## Mitigation/Countermeasures

### Design and Implementation

- think about applying zero-trust principles
- define the different systems, how they interacts, and the resulting interfaces (trust boundaries)
- define the roles that are needed to interact with the systems
  - Define a minimal role concept.  
  - e.g. on a sensor
    - administrator -> configuration
    - simple user -> only read only access to measuring data
- Implement a role-based access control (RBAC) system
- Implement multi-factor authentication

### Operational

- Use the provided features implemented by the vendors
- Change password and default user.
- perform periodic account reviews to counter permission creep
- Implement a process for deactivating accounts when a user leaves the company

## Next Actionable Steps

- Is sensitive information accessible via the available interfaces?
- Is there a role concept for the devices/systems and has this been implemented?

## References

### Standards

- Applicable standard requirements are listed in the [provided mapping table in the appendix](./../appendix/mappingTable.md).

### Background Information

- ***Physical Access Control***
    - [Disabling unnecessary services and protocols](https://web.archive.org/web/20250224015400/https://www.cert.govt.nz/information-and-advice/guides/unused-services-and-protocols/disabling-unnecessary-services-and-protocols/)
    - [Why Disabling unused network ports is crucial in OT environents](https://www.mangancyber.com/why-is-it-essential-to-disable-or-safeguard-inactive-ports-in-ot-environments/)

### Tooling

- N.A.

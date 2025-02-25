# Insufficient Access Control

- multi-level and typically interacts with other problems
- conceptionally speaking: physical, organizational (who needs access?), technical (how to implement access control?)

## Description

Users have to fulfill different functions with devices. Not every user needs access to all functions. However, many (legacy) devices do not support authentication or authorization. As a result, unauthorized access is possible.

### Particularities of OT

- good example: `emergency shutdown switches`: you do not want to impose any additional latencies activating them (in case of emergency, pushing them is kinda time-critical) but on-the-other-hand you do not want to have them accessible to everyone. The same goes for medical devices in hospitals: you do not want to have a password prompt when a doctor wants to use a defibrillator
  
- old systems/long lifetimes: imagine a lifetime of 30+ years. What IT security did we have in 1995? How much can you subsequently add to a system that was designed in 1995?
  
Old systems often have only limited authentication functions. they also offer no connection to a central identity management system. This makes it difficult to maintain and respond to changes in the organization's responsibilities on an ongoing basis

### Organizational Level

Mention some goals, at least:

- least privilege: users should only have access to the functions they need to perform their job
- privilege creep: users should not accumulate access rights over time
- separation of duties: no single user should have access to all functions
- non-repudiation: the system should be able to prove who did what. This principle is broken if there's a shared user/password list for devices on the factory floor.
- deactivating accounts: when a user leaves the company, their account should be deactivated

To allow for analysis, trust boundaries have to be defined. This is especially important in the OT world, where the Purdue Model is often used to define trust boundaries.

Very often, [OT personnel are not aware of the security implications of their actions](./missing-awareness.md). This can lead to a situation where a system is not properly secured because the operators do not know how to do it.

### Implementaiton Level

- are controls in place? are they well implemented and configured according to best practices?

- given that we want to control access for, e.g., externally reachable adminitrative interfaces (VPN servers, web-panels), are implemented controls sufficient? Having a remote management solution without mandatory and enforced multi-factor authenticator is not state-of-the-art in 2025. Nor was it in 2024. Nor before.

- have default passwords been changed? are there any default accounts that have not been disabled?

- have controls be tested? are they working as intended?

- have physical access control assumptions been documented and tested? It is easier than some people think to get on a factory floor.

## Rationale

The prevalence of:

- shared password lists
- over-dependency on physical security
- initial attack vector: remote access without multi-factor authentication

## Known Attacks/Examples

- [After quitting his job at the plant at the beginning of 2019, he then used the remote login system again on March 27, 2019, to shut down the plant and one of its treatment filters..](https://www.ksnt.com/news/local-news/kansas-hacker-pleads-guilty-to-shutting-down-drinking-water-plant-with-phone/)
- [Colonial Pipeline Hack](https://en.wikipedia.org/wiki/Colonial_Pipeline_ransomware_attack): The attackers gained access to the system by means of a compromised password for a disused VPN account.

### How-To Test (have to discuss)

- maybe add this to a separate section?
- Is sensitive information accessible via the available interfaces?
- Is there a role concept for the devices/systems and has this been implemented?

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

## References

### Standards

- IEC 62443-4-1
- IEC 62443-2-1

### Background information

- links to blogs, etc.

### Tooling

- for testing, etc.

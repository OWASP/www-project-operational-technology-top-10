# Insufficient Access Control

Short Description (one paragraph)

## Description

Users have to fulfill different functions with devices. Not every user needs access to all functions. However, many (legacy) devices do not support authentication or authorization. As a result, unauthorized access is possible.

- Access control is needed on different levels.
  - Access to the device/system in the plant from within the plant or company
  - Access to the device/system in the plant from an external system -> remote access

- old systems often have only limited authentication functions. they also offer no connection to a central identity management system. This makes it difficult to maintain and respond to changes in the organization's responsibilities on an ongoing basis

  - Access Control: User Identification, Authentication, Authorization
  - interacts (unmanaged external access, broken zone design)
  - Lax access controls  (account /user based)
    - least privilege
    - privilege creep
    - non-repudiation
  - note for the future: maybe split identification/authentication from authorization

## Rationale

- why did we include this item in the top 10?

## Known Attacks/Examples

- Misuse of extenal available VNC-Server
- [After quitting his job at the plant at the beginning of 2019, he then used the remote login system again on March 27, 2019, to shut down the plant and one of its treatment filters..](https://www.ksnt.com/news/local-news/kansas-hacker-pleads-guilty-to-shutting-down-drinking-water-plant-with-phone/)
- [Colonial Pipeline Hack](https://en.wikipedia.org/wiki/Colonial_Pipeline_ransomware_attack): The attackers gained access to the system by means of a compromised password for a disused VPN account.

Potential Sources

- <https://www.icsadvisoryproject.com>
- <https://icsstrive.com/>
- <https://emb3d.mitre.org/>
- <https://attack.mitre.org/techniques/ics/>
- please add more

### How-To Test (have to discuss)

- maybe add this to a separate section?
- Is sensitive information accessible via the available interfaces?
- Is there a role concept for the devices/systems and has this been implemented?

## Mitigation/Countermeasures

### Design and Implementation

- Define a minimal role concept.  
  - e.g. on a sensore
    - administrator -> configuration
    - simple user -> only read only access to measuring data

### Operational

- Adopt the role concept to the machine / plant
- Change password and default user.

## References

### Standards

- IEC 62443-4-1
- IEC 62443-2-1

### Background information

- links to blogs, etc.

### Tooling

- for testing, etc.

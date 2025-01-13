# Missing Access Control

Users have to fulfill different functions with devices. Not every user needs access to all functions. However, many (legacy) devices do not support authentication or authorization. As a result, unauthorized access is possible.

## Description

- Access control is needed on different levels.
  - Access to the device/system in the plant from within the plant or company
  - Access to the device/system in the plant from an external system -> remote access

- old systems often have only limited authentication functions. they also offer no connection to a central identity management system. This makes it difficult to maintain and respond to changes in the organization's responsibilities on an ongoing basis

## Known Attacks

- Misuse of extenal available VNC-Server

### How-To Test (have to discuss)

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

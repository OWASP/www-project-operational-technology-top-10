# The OT World for Security People: Why is it problematic?

Maybe we should get to a more conceptional level, this might not be the list of Top 10 Vulnerabilities but rather an introduction how the concrete top 10 came to be. For example, "Insufficient Network Separation" is rather a problem with a mitigation and not the root cause vulnerability.

Then link the top 10 items from this conceptional walkthrough.

We have a simple high-level storyline.

## Problems specific to OT

Devices that cannot be updated

Examples: due to availability concerns, vendor not providing updates, devices without update capabilities

## Devices that must be protected

- We are a bit different to typical IT environments
  - devices with (known) security vulnerabilities
    - **related to**: device cannot be updated
    - missing vulnerability management
    - missing patch management
  - unauthenticated/unauthorized communication without integrity protection
    - **note** this might be better suited for a "general problems in OT" and not a direct vulnerability
    - maybe replace with "attackers able to forge network requests"

- we cannot do too much about existing devices, so we depend upon mitigations

## We depend upon mitigations

(and very often physical/network separation)

- depending upon physical security
- invalid air-gapping, see stuxnet
- remediations are not a `get out of jail free` card and impose limitations and maintenance burden

### Problem: what happens, if this separation is not upheld?

- dependence upon / defect mitigations
  - attackers abusing unexpected attack surfaces
    - devices with additional unknown services (features, management, backdoors, etc.)
    - shadow infrastructure / unknown devices
    - maintenance access
    - **related to** 'defect mitigations'
    - vendors not publishing security advisories
  - attackers starting from unexpected areas
    - **related to** 'defect mitigations', 'too large blast zone'
    - shadow infrastructure / unknown devices
    - maintenance access
    - adversaries being able to stay on the network

## Overall: how do we react to an incident?

- in IT, we often can install backups
  - Not being able to react/recover from incidents
    - missing backups/disaster recovery
    - Undefined processes for alert reporting/handling
    - Missing configuration backups for OT-Devices

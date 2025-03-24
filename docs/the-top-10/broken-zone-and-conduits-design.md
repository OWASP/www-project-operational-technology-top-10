# Broken Zones and Conduits Design

Having a sound segmentation concept mitigates already a lot of other security risks. This makes having proper segmentation and secured interfaces between the segments even mroe important. On the other hand, a complex design might introduce errors and loopholes in the design. Therefore, the "correct" design is not the most complex, or micro segmented, but the one that fulfills all the needs without beeing overly complex.

## Description

- risk-based approach (mention threat modeling)
- goal: least functionality vs. over-exposure of services
- errors in network segregration
- potentially can also contain 'external admin access'?
- potentially 'forgotten hardware debug interfaces'?
- available JTAG/SWD interface left enabled on production devices

## Rationale

The most common entry into OT-zones comes from IT environments. For hardware devices the most common entry is via debugging interfaces. After getting entry into the system, without segmenting networks and isolating services, an attacker has full access to the network. Unfortunately, in realty networks are very flat. Segmentation or networks and services enables implementation of core principles like "defense in depth" and "need to know".

## Known Attacks/Examples

- [The Register: Iranian hacktivists .. likely broke into the facilities by using defautl passwords for internet-accessible PLCs](https://www.theregister.com/2024/09/07/us_water_cyberattacks/)

Potential Sources

- <https://www.icsadvisoryproject.com>
- <https://icsstrive.com/>
- <https://emb3d.mitre.org/>
- <https://attack.mitre.org/techniques/ics/>
- please add more

### How-To Test (have to discuss)

- maybe add this to a separate section?

## Mitigation/Countermeasures

### Design and Implementation

- mitigations for developers/builders

### Operational

- mitigations for integrators/builders

## References

### Standards

- links to relevant standards

### Background information

- links to blogs, etc.

### Tooling

- for testing, etc.

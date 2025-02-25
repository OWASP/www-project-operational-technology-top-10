# Selection of components/protocols with insufficient security capabilities

- legacy-devices-to-be, remember 30y+ lifetimes
- if we design new systems there should be slack for future security features


differentiation to [missing awareness](./missing-awareness.md):

- here: security feature is not available
- 'missing awareness': feature is availabe, but not configured

## Description

- we define legacy systems as systems with security and cryptography capabilities that are not up to date

### Don't use Legacy Protocols if possible

- typcially [without integrity](./availability.md) or without [sufficient authentication mechanisms](./insufficient-access-control.md)
- weak built-in security features like basic Bluetooth
- protocols missing confidenciality/integrity (depends upon trust-zone)

### Don't use Legacy Systems for new Deployments

## Rationale

- why did we include this item in the top 10?

## Known Attacks/Examples

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

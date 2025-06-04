# Selection of components/protocols with insufficient security capabilities

Given the long, potentially multi-decades, lifetimes of OT system, it becomes understandable why OT components become legacy systems over time. Many of the mentioned countermeasures try to deal with the existence of legacy systems.

When designing new systems, however, the best way to deal with legacy systems is to not use them in the first place. If we design new systems there should be slack for future security features.

This Top 10 items is related to [missing awareness](./missing-awareness.md). While missing awareness is about the lack of knowledge about security features, this item is about the lack of security features in the first place.

## Description

We define legacy systems as systems with security and cryptography capabilities that do not conform to current best practices. This includes systems that are not able to be updated or patched, as well as systems that are not able to be replaced.

### Don't use Legacy Systems for new Deployments

Obviously, if you are designing a new system, you should not use legacy systems. This is especially true for systems that are not able to be updated or patched. If you are designing a new system, you should use systems that are able to be updated or patched.

Deployments are seldom new green-field installations. Most of the time, new systems are deployed in existing environments (think about the long lifetimes of OT systems). If new components are added to an existing environment, they often have to conform and interact with the existing environment, often mandating usage of legacy protocols. If this is the case, it would be preferable to use components that (while they provide the legacy feature set) also incorporate capabilities for state-of-the-art security features so that the installation can be updated in the future.

### Don't use Legacy Protocols if possible

Components commonly use standardized protocols to communicate with each other or with other systems. When designing a new system, chosen protocols should heed best security practices and legacy protocols should be avoided if feasible.

Legacy protocols often have security issues:

- They often lack integrity protection and thus [can lead to availability problems](./loss-of-availability.md).
- They do not offer thorough or [sufficient authentication mechanisms](./insufficient-access-control.md) and thus can lead to unauthorized access to systems and data.
- They have weak built-in security features like basic Bluetooth.

## Rationale

- given the long lifetimes of OT systems, parts of them becoming legacy systems will happen
- there is economic pressure to use existing legacy systems for new deployments:w
- there is a lack of awareness about the security implications of using legacy systems

## Known Attacks/Examples

## Mitigation/Countermeasures

### Design and Implementation

- don't use legacy systems or protocols for new deployments
- use components that are able to be updated or patched
- incorporate some slack for future security features in new designs

### Operational

Sadly, there are no operational countermeasures that can be applied to legacy systems. The best way to deal with legacy systems is to not use them in the first place. If you have to use legacy systems, you can try to mitigate the risks by applying the following countermeasures:

- isolate legacy systems from the rest of the network
- monitor legacy systems for unusual activity
- apply compensating controls to mitigate the risks of legacy systems
- apply compensating controls to mitigate the risks of legacy protocols

## Next Actionable Steps

- evaluate the components and protocols used in your systems
- identify legacy systems and protocols in your environment
- evaluate the security capabilities of these systems and protocols
- if possible, replace legacy systems and protocols with state-of-the-art components and protocols
- if replacement is not possible, apply compensating controls to mitigate the risks of legacy systems and protocols

## References

### Standards

- Applicable standard requirements are listed in the [provided mapping table in the appendix](./../appendix/mappingTable.md).

### Background Information

- N.A.

### Tooling

- N.A.

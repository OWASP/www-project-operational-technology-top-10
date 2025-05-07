# Missing Hardening

Hardening is usually done to make a system more secure, typically by reducing or restricting features which inherently reduces a system's attack surface. Another form of hardening is enabling additional layers of security so that an attacker has to overcome multiple hurdles to gain access to a system.

## Description

Hardening is the process of securing a system by reducing its surface of vulnerability. This can be achieved by removing unnecessary services, closing unused ports, and applying security patches. Hardening is an essential step in securing any system, as it reduces the number of potential entry points for attackers.

Another way of hardening is to apply additional layers of security, such as firewalls, intrusion detection systems, and encryption. These additional layers can help protect against attacks even if the underlying system is compromised. In the context of OT, hardening is particularly important due to the unique challenges and requirements of these systems. OT systems are often designed to operate continuously and cannot be easily patched or updated without causing downtime.

### Apply established hardening guidelines

### Disable default accounts and passwords

## Rationale

Inclusion of hardening in the OWASP OT Top 10 was a point of serious discussion.

Hardening itself does not reduce a concrete vulnerability but makes meaningful exploitation of vulnerabilities harder for attackers.

Empirical data, gathered during the development of the OWASP OT Top 10, showed that missing hardening was a common part of successful exploits and comprehensive hardening would have prevented successful exploitation.

Given the requirement of non-stop operation of many OT systems, hardening is crucial as it allows for controlled updates after a security issue has been identified (as the additional security layers uphold the security of the overall system).

## Known Attacks/Examples

## Mitigation/Countermeasures

### Developers/Builders: Design and Implementation

### Integrators/Operators: Operational

## Next Actionable Steps

- identify applicable hardening guidelines for your environment
- implement hardening guidelines
- disable default accounts and passwords

## References

### Standards

### Background information

- <https://en.wikipedia.org/wiki/Hardening_(computing)>
- <https://en.wikipedia.org/wiki/Defense_in_depth_(computing)>

### Tooling

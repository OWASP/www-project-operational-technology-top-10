# WIP: Preliminary Top 10 Items

!!! Note

    This page will be removed in the final version

## Insufficient Access Control

  - Access Control: User Identification, Authentication, Authorization
  - interacts (unmanaged external access, broken zone design)
  - Lax access controls  (account /user based)
    - least privilege
    - privilege creep
    - non-repudiation
  - note for the future: maybe split identification/authentication from authorization

## Supplier/Supply Chain Management

  - treat it like partners management?
    - treat IT as supplier too?
    - make sure that IT people understand that this is not only dependency management

  - OT has a 'special' situation with integrators needing access
    - (is this so special, there's the same problem with managed SOCs, outsourced administration done by system houses)

  - organization issue
    - like SLAs, notifications
    - product specific issues woudl rather be "Devices out in the field with known Vulnerabilities/Issues"

## Unknown Assets and Unmanaged external Access

  - inter-section to incident detection (due to missing detection capabilitites), security-misconfiguration
  - physical 'stuff'
      - manual list

  - counter-measures
    - network scanning/discovery
    - port/traffic monitoring
   
  - Unmanaged external access
      - from above purdue model level 3 / IEC62443 zones/conduits
      - maintenance access
      - this can be related to 'missing awareness'

## Devices out in the field with known Vulnerabilities/Issues

  - "everything where I as an attacker see a version number (hardware/software) and use an exploit for that version"
  - problems with mitigation on-device-itself/vulnerability
    - missing vulnerability management
  - problems without mitigation on-device-itself/vulnerability
    - legacy devices (hardware does not have capabilities)
    - missing vendor support
  - very related to other top 10 items as this is the outcome of problems in other areas
    - Selection of components/protocols with insufficient security capabilities
    - Missing Awareness
    - Unknown Assets and Unmanaged external Access
    - Supplier/Supply Chain Management

## Broken Zone and Conduits Design

  - risk-based approach (mention threat modeling)
  - goal: least functionality vs. over-exposure of services
  - errors in network segregration
  - potentially can also contain 'external admin access'?
  - potentially 'forgotten hardware debug interfaces'?
  - available JTAG/SWD interface left enabled on production devices

## Missing Incident Detection/Reaction Capabilities

  - Missing Monitoring/Logging for Incident Detection (shadow infrastructure?)
    - Alert fatigue with “dirty” environment
  - Undefined processes for alert reporting/handling
  - missing reacting capabilities
      - Missing configuration backups for OT-Devices

## Selection of components/protocols with insufficient security capabilities

  - weak built-in security features like basic Bluetooth
  - attention: this should not be a product placement
  - legacy-to-be
  - legacy products for new deployments
  - protocols missing confidenciality/integrity (depends upon trust-zone)
  - differentiation to 'missing awareness'
    - here: security feature is not available
    - 'missing awareness': feature is availabe, but not configured

## Availability

  - (D)DoS attacks
  - real-time communication safety
  - availability vs. integrity -- flooding with fake data

## Missing Awareness

  - trying to wiggle out of security features via deflection to obscurity
  - cyber-security hygiene
  - everything configuration related
    - missing encryption even if available
    - available JTAG/SWD interface left enabled on production devices
    - Intentional misconfiguration for ease of use, e.g., leaving rtu’s in upload mode
    - lack of hardening
  - why are security best-practises not applied? missing knowledge?
  - culture
  - OT guys know something that the IT guys know not

# Potential additional items

- integrity protection
  - or is this a part of culture / missing security capabilitites
  - integrity protection within updates
    - supplier + consumer problem

# Existing Lists/Top-10 Items

We might move these to the `related standards` section later on, but keep them
here as food for thought for now:

| Issuer | Title | Description |
| --- | --- | --- |
| [BSI](https://www.bsi.bund.de/DE/Home/home_node.html) | [ICS Security Top 10 threats and countermeasures 2022](https://www.allianz-fuer-cybersicherheit.de/SharedDocs/Downloads/Webs/ACS/DE/BSI-CS/BSI-CS_005E.pdf?__blob=publicationFile&v=6) | Focus on impact and vectors (malware, phishing, DDoS, sabotage) |
| [CISA](https://www.cisa.gov) | [Top Ten Cybersecurity Misconfigurations](https://www.cisa.gov/news-events/cybersecurity-advisories/aa23-278a) ||
| [ENISA](https://www.enisa.europa.eu) | [Power Sector Dependency on Time Service](https://www.enisa.europa.eu/publications/power-sector-dependency?v2=1#contentList) | rather specific |
| [ENISA](https://www.enisa.europa.eu) | [Transport Threat Landscape](https://www.enisa.europa.eu/publications/enisa-transport-threat-landscape?v2=1#contentList) | |
| [ENISA](https://www.enisa.europa.eu) | [Cyber security and resilience for Smart Hospitals](https://www.enisa.europa.eu/publications/cyber-security-and-resilience-for-smart-hospitals?v2=1#contentList) ||
| [ENISA](https://www.enisa.europa.eu) | [ENISA Threat Landscape 2024](https://www.enisa.europa.eu/publications/enisa-threat-landscape-2024) | Figure 8 (Page 16), gives a per-sector attack overview|

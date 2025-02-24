# Unknown Assets and Unmanaged external Access

Short Description (one paragraph)

## Description

Unknown assets are devices or systems in an OT environment that are not properly identified or documented. These assets can include legacy systems, unmanaged devices, or unauthorized connections that are not accounted for in the organization's inventory.

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

## Rationale

- why did we include this item in the top 10?

## Known Attacks/Examples

- Stuxnet
- Triton
- WannaCry
- [Someone tried to poison a Florida city by hijacking its water treatment plant via TeamViewer, says sheriff](https://www.theregister.com/2021/02/09/florida_water_hacked/)
- [CISA and the Environmental Protection Agency (EPA) warned water facilities today to secure Internet-exposed Human Machine Interfaces (HMIs) from cyberattacks.](https://www.bleepingcomputer.com/news/security/cisa-warns-water-facilities-to-secure-hmi-systems-exposed-online/)

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
- Implement asset discovery and inventory management tools to identify and document all assets in the OT environment.
- Regularly scan and monitor the network for new or unknown devices.
- Enforce strict access controls and authentication mechanisms to prevent unauthorized devices from connecting to the network.

## References

### Standards

- links to relevant standards

### Background information

- links to blogs, etc.

### Tooling

- [Nmap](https://nmap.org/)
- [Wireshark](https://www.wireshark.org/)
- [Shodan](https://www.shodan.io/)

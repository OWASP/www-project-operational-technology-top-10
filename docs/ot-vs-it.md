# OT vs IT

- this often leads to cultural differences between OT and IT
- it is important that we (security people) understand a bit of the OT culture
- suggestion: do threat-modelling sessions together to find a common understanding and language

## Focus of Security

IT: primary focus upon protecting the IT assets
OT: primary focus is protecting the plant or process

## High Focus upon Availability

- Availability is of more important than Confidentiality
    - the monitored/controlled physical process must never be stopped
    - imagine what could go wrong if something like that would happen within a nuclear power plant

- Integrity is important as this might impact the availability of the physical process

## Long Life-Time of Components

- years until new components get installed within plants
- often components (or component updates) must be certified before the updated components are allowed to be enabled
    - this is problematic: you would need a spare power plant to perform the certification

## Safety First

- security: preventing threats, originating from humans or the environment
- safety: preventing threats on humans, originating from humans
- safety first, eventuell compensating counter-measures (iso 62443)

## Prevalence of legacy and proprietary protocols

- often unencrypted
- often vendor-specific and vendor lock-in
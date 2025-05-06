# Missing Incident Detection/Reaction Capabilities

The longer an attacker is able to penetrate the network unnoticed, the higher is the probability that the attacker compromises OT. This also applies if incident reaction is slow or technically inadequate. Without logging and monitoring, breaches cannot be detected. An OT cybersecurity report analysing trends in 2024 shows that 45% of service engagements have a lack of visibility across OT networks, making detections, triage, and response incredibly difficult at scale.

Notable Common Weakness Enumerations (CWEs) included are *CWE-223: Omission of Security-relevant Information*, *CWE-532:  Insertion of Sensitive Information into Log File*, and *CWE-778: Insufficient Logging*. Notable MITRE ATT&CK items included are *DS0015: Application Log*, *DS0029: Network Traffic*, and *M0931: Network Intrusion Prevention*.

## Description

Incident detection and reaction capabilities provide security countermeasures applied when proactive countermeasures did not prevent an attack. The following items introduce vulnerabilities in this category:

- Auditable events, such as logins, failed logins, and executed commands or scripts, are not logged.
- Warnings and errors generate no, inadequate, or unclear log messages.
- Logs of Firmware, OS, applications, and APIs are not monitored for suspicious activity.
- Logs are only stored locally.
- Appropriate alerting thresholds and response escalation processes are not in place or effective.
- Technical security tests (e.g., penetration tests, vulnerability scans, and manual security testing) do not trigger alerts.
- The application cannot detect, escalate, or alert for active attacks in a reasonable short time frame.

## Rationale

Without logging and monitoring, breaches cannot be detected. An OT cybersecurity report analysing trends in 2024 shows that 45% of service engagements have a lack of visibility across OT networks, making detections, triage, and response incredibly difficult at scale.

## Known Attacks

- Ukraine Electric Power Attacks (cf. <https://attack.mitre.org/campaigns/C0028/>, <https://attack.mitre.org/campaigns/C0025/>, <https://attack.mitre.org/campaigns/C0034/>, and <https://attack.mitre.org/software/S0089/>). The Ukraine Electric Power Attack was an operation which aims to target and disrupt transmission and distribution substations within the Ukrainian power grid.
- Triton Safety Instrumented System Attack (cf. <https://attack.mitre.org/campaigns/C0030/>, and <https://attack.mitre.org/software/S1009/>). The Triton Safety Instrumented System Attack was a campaign that took advantage of the Triton malware framework to target a petrochemical organisation. The malware and techniques employed in this campaign were designed to infiltrate specific Triconex Safety Controllers within the environment. The incident was eventually exposed due to a safety trip that occurred as a result of an issue in the malware.
- LockerGoga ransomware infects industrial and manufactoring companies (c.f <https://attack.mitre.org/software/S0372/>, and <https://news.microsoft.com/source/features/digital-transformation/hackers-hit-norsk-hydro-ransomware-company-responded-transparency/>). In March 2019, Norsk Hydro was subjected to a cyberattack that utilised the LockerGoga ransomware to encrypt its computer files. In response, the aluminium and renewable energy company transitioned to manual operations and maintained transparency with the public regarding its progress towards recovery. The security industry has expressed high regard for Norsk Hydro's transparency throughout the discovery and recovery process.

## Mitigation/Countermeasures

### Design and Implementation

- Ensure all login, access control, and server-side input validation failures can be logged with sufficient user context to identify suspicious or malicious accounts and held for enough time to allow delayed forensic analysis.
- Ensure that logs are generated in a format that log management solutions can easily consume.
- Ensure log data is encoded correctly to prevent injections or attacks on the logging or monitoring systems.

### Operational

- Ensure that the generated logs are anlayzed and alerts are triggerd, if an event seems suspicious.
- The implementation of intrusion detection signatures at network boundaries is imperative for the effective prevention of unauthorised access. In the context of industrial control environments, the configuration of network intrusion prevention should be configured in a way that it does not disrupt the protocols and communications that are essential for real-time functions related to control or safety.
- DevSecOps teams should establish effective monitoring and alerting such that suspicious activities are detected and responded to quickly.
- Establish or adopt an incident response and recovery plan, such as National Institute of Standards and Technology (NIST) 800-61r2 or later.

## Next Actionable Steps

- Perform regular incident detection and response exercises where both technical and organizational aspects are tested.
- Example of testing technical aspects: Generate harmless test-malware and place it at an asset on the system under consideration (SUC). Verify, if the upload on that asset is already blocked or at least alarmed. If not, execute the test-malware and place it somewhere else in the SUC. If the uplaod to the asset is already blocked, encrypt or encode the malware (with several iterations, if needed) and upload it to the asset again to test if host-based detection is also working besides network-based detection.
- Example of testing organizational apsects: Perform a table top exercise simulating an incident or emergency. Test especially communication flows, responsabilities of the staff, coordination of conducting incident response, and the on-demand acquiration of forensic knowledge (if not in-house) during the exercise.

## References

### Standards

- NIST SP 800-82r3 <https://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-82r3.pdf>
- IEC 62443-3-3 Foundational Requirement 6 (FR 6) - Timely Response to Events <https://webstore.iec.ch/en/publication/7033>
- NIST Cyber Security Framework 2.0 - Detect (DE) and Respond (RS) <https://nvlpubs.nist.gov/nistpubs/CSWP/NIST.CSWP.29.pdf>

### Background information

CWEs

- <https://cwe.mitre.org/data/definitions/223.html>
- <https://cwe.mitre.org/data/definitions/532.html>
- <https://cwe.mitre.org/data/definitions/778.html>

MITRE ATT&CK framework data sources

- <https://attack.mitre.org/datasources/DS0015/>
- <https://attack.mitre.org/datasources/DS0029/>

MITRE ATT&CK framework measures

- <https://attack.mitre.org/mitigations/M0931/>

MITRE ATT&CK framework techniques (tactic Impact)

- <https://attack.mitre.org/techniques/T0827/>
- <https://attack.mitre.org/techniques/T0828/>
- <https://attack.mitre.org/techniques/T0837/>
- <https://attack.mitre.org/techniques/T0880/>

Recent OT cyber security report

- <https://www.dragos.com/ot-cybersecurity-year-in-review/>
- <https://www.dragos.com/ot-cybersecurity-year-in-review/#anchor-report>

### Tooling

- Eicar malware testfile (cf. <https://www.eicar.org/download-anti-malware-testfile/>)
- Metasploit framework (cf. <https://www.metasploit.com/>)
- Graylog (cf. <https://graylog.org/>)
- Wazuh (cf. <https://wazuh.com/>)
- Snort (cf. <https://www.snort.org/>)
- Suricata (cf. <https://suricata.io/>)

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

- [Ukraine Electric Power Attacks](https://attack.mitre.org/campaigns/C0034/). The Ukraine Electric Power Attack was an operation which aims to target and disrupt transmission and distribution substations within the Ukrainian power grid.
- [Triton Safety Instrumented System Attack](https://attack.mitre.org/campaigns/C0030/). The Triton Safety Instrumented System Attack was a campaign that took advantage of the Triton malware framework to target a petrochemical organisation. The malware and techniques employed in this campaign were designed to infiltrate specific Triconex Safety Controllers within the environment. The incident was eventually exposed due to a safety trip that occurred as a result of an issue in the malware.
- [LockerGoga ransomware](https://attack.mitre.org/software/S0372/) infects industrial and manufactoring companies. In March 2019, Norsk Hydro was subjected to a cyberattack that utilised the LockerGoga ransomware to encrypt its computer files. In response, the aluminium and renewable energy company transitioned to manual operations and maintained transparency with the public regarding its progress towards recovery. The security industry has expressed high regard for Norsk Hydro's transparency throughout the discovery and recovery process.

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
- Example of testing technical aspects: Generate harmless test-malware and place it at an asset on the system under consideration (SUC). Verify, if the upload on that asset is already blocked or at least alarmed. If not, execute the test-malware and place it somewhere else in the SUC. If the upload to the asset is already blocked, encrypt or encode the malware (with several iterations, if needed) and upload it to the asset again to test if host-based detection is also working besides network-based detection.
- Example of testing organizational aspects: Perform a table top exercise simulating an incident or emergency. Test especially communication flows, responsibilities of the staff, coordination of conducting incident response, and the on-demand acquisition of forensic knowledge (if not in-house) during the exercise.

## References

### Standards

- IEC 62443 FR 6
- IEC 62443-2-1:2019 ORG 2.2
- IEC 62443-2-1:2019 SPE 7
- IEC 62443-3-2:2020 ZCR 5.1
- IEC 62443-3-3:2020 SR 6.X
- NIST CSF 2.0 DE
- NIST CSF 2.0 RS
- NIST SP 800-82r3 <https://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-82r3.pdf>
- EU NIS2 Directive Commission implementing Regulation C(2024) 7151 - ANNEX 3.X
- MITRE ATT&CK M0919
- MITRE ATT&CK M0931

### Background information

CWEs

[CWE-223: Omission of Security-relevant Information](https://cwe.mitre.org/data/definitions/223.html). The product fails to record or display information that is essential for identifying the source or nature of an attack, or for assessing whether an action is safe.

[CWE-532: Insertion of Sensitive Information into Log File](https://cwe.mitre.org/data/definitions/532.html). The product logs sensitive information, e.g.; passwords, hashes, or credentials.

[CWE-778: Insufficient Logging](https://cwe.mitre.org/data/definitions/778.html). When a security-critical event occurs, the product either fails to log the event or omits key details in the log.

MITRE ATT&CK framework data sources

[Application Log](https://attack.mitre.org/datasources/DS0015/). These are events collected by third-party services, such as mail servers, web applications or other appliances, rather than by the native operating system or platform.

[Network Traffic](https://attack.mitre.org/datasources/DS0029/). Data transmitted across a network (e.g. the web, DNS, email, files, etc.) that is either summarised (e.g. NetFlow) and/or captured as raw, analysable data (e.g. PCAP).

MITRE ATT&CK framework measures

[Network Intrusion Prevention](https://attack.mitre.org/mitigations/M0931/). At network boundaries, traffic should be blocked using intrusion detection signatures. When it comes to industrial control environments, network intrusion prevention should be configured so that it will not disrupt protocols and communications responsible for real-time functions related to control or safety.

MITRE ATT&CK framework techniques (tactic Impact)

[Loss of Control](https://attack.mitre.org/techniques/T0827/). Adversaries may seek to cause a sustained loss of control, or a runaway condition, whereby operators are unable to issue commands, even when the malicious interference has subsided.

[Loss of Productivity and Revenue](https://attack.mitre.org/techniques/T0828/). Adversaries may cause a loss of productivity and revenue by disrupting or damaging the availability and integrity of control system operations, devices and related processes. This may be a direct result of an attack targeting ICS or an indirect result of an attack targeting IT in non-segregated environments. If these operations or services are halted, the loss of productivity may eventually affect end users or consumers of products and services. A disrupted supply chain may result in shortages and increased prices, among other consequences.

[Loss of Protection](https://attack.mitre.org/techniques/T0837/). Adversaries may compromise the functions of protective systems designed to prevent the effects of faults and abnormal conditions. This can result in equipment damage, prolonged process disruption and hazards to personnel.Many faults and abnormal conditions in process control occur too quickly for a human operator to react to. It is therefore critical to act quickly to correct these conditions and limit the risk of serious consequences such as loss of control and property damage.
Adversaries may target and disable protective system functions in preparation for a subsequent attack or to allow future faults and abnormal conditions to go unchecked. If operators detect a loss of protection, they may shut down the process due to strict protection system policies. This can result in a loss of productivity and revenue, which may align with the technical objectives of adversaries seeking to cause process disruptions.

[Loss of Safety](https://attack.mitre.org/techniques/T0880/). Adversaries may compromise the functions of safety systems, which are designed to ensure the safe operation of a process when unacceptable or dangerous conditions occur. Although safety systems often comprise the same elements as control systems, their sole purpose is to ensure that the process fails in a predetermined safe manner.
Many unsafe conditions in process control happen too quickly for a human operator to react. It is therefore critical to act quickly to correct these conditions and limit the risk of serious consequences such as loss of control and property damage.
Adversaries may target and disable safety system functions as a prerequisite for subsequent attacks or to allow future unsafe conditions to go unchecked. Operators detecting a loss of safety may shut down the process due to strict safety system policies. This can result in a loss of productivity and revenue, which may align with the technical objectives of adversaries seeking to cause process disruptions.

### Tooling

[Eicar malware testfile](https://www.eicar.org/download-anti-malware-testfile/). The EICAR Anti-Virus Test File, also known as the EICAR Test File, is a computer file developed by the European Institute for Computer Antivirus Research (EICAR) and the Computer Antivirus Research Organisation (CARO) to test how computer antivirus programs respond.

[Metasploit framework](https://www.metasploit.com/). The Metasploit Framework is a modular, Ruby-based penetration testing platform that allows you to write, test and execute exploit code. It contains a suite of tools for testing security vulnerabilities, enumerating networks, executing attacks and evading detection. At its core, the framework is a collection of commonly used tools that provide a complete environment for penetration testing and exploit development.

[Graylog](https://graylog.org/). A free SIEM tool enabling central log management.

[Wazuh](https://wazuh.com/). A open source unified XDR and SIEM protection for endpoints and cloud workloads.

[Snort](https://www.snort.org/). Snort is a open-source intrusion prevention system (IPS). Snort IPS uses a series of rules to help define malicious network activity, identifying packets that match these rules and generating alerts for users.
Snort can also be deployed in line to block these packets. Snort has three primary uses: It can be used as a packet sniffer, like tcpdump; as a packet logger, which is useful for debugging network traffic; or as a full-blown network intrusion prevention system. Snort can be downloaded and configured for personal and business use.

[Suricata](https://suricata.io/). Suricata is a open-source network analysis and threat detection software used by private and public organisations, as well as being embedded by vendors to protect their assets.

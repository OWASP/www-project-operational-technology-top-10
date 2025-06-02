# Missing Incident Detection/Reaction Capabilities

The longer an attacker is able to penetrate the network unnoticed, the higher is the probability that the attacker compromises OT. This also applies if incident reaction is slow or technically inadequate. Without logging and monitoring, breaches cannot be detected. An [OT cybersecurity report analysing trends in 2024](https://www.dragos.com/ot-cybersecurity-year-in-review/#anchor-report) shows that 45% of service engagements have a lack of visibility across OT networks, making detections, triage, and response incredibly difficult at scale.

Adversaries may seek to cause [Loss of Control](https://attack.mitre.org/techniques/T0827/), whereby operators are unable to issue commands, even when the malicious interference has subsided.

Another motivation for attackers may be [Loss of Productivity and Revenue](https://attack.mitre.org/techniques/T0828/) by disrupting or damaging the availability and integrity of control system operations, devices and related processes.

Furthermore, [Loss of Protection](https://attack.mitre.org/techniques/T0837/) leading to the compromise of the functions of protective systems designed to prevent the effects of faults and abnormal conditions may be a motivation. This can result in equipment damage, prolonged process disruption and hazards to personnel.

Finally, [Loss of Safety](https://attack.mitre.org/techniques/T0880/) leading to the compromise the functions of safety systems, which are designed to ensure the safe operation of a process when unacceptable or dangerous conditions occur may be a result of a attack. Adversaries may target and disable safety system functions as a prerequisite for subsequent attacks or to allow future unsafe conditions to go unchecked.

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

### General

Implement [Network Intrusion Prevention](https://attack.mitre.org/mitigations/M0931/). At network boundaries, traffic should be blocked using intrusion detection signatures. When it comes to industrial control environments, network intrusion prevention should be configured so that it will not disrupt protocols and communications responsible for real-time functions related to control or safety.

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

Applicable standard requirements are listed in the provided mapping table in the appendix.  

### Background information

#### Notable CWEs

[CWE-223: Omission of Security-relevant Information](https://cwe.mitre.org/data/definitions/223.html). The product fails to record or display information that is essential for identifying the source or nature of an attack, or for assessing whether an action is safe.

[CWE-532: Insertion of Sensitive Information into Log File](https://cwe.mitre.org/data/definitions/532.html). The product logs sensitive information, e.g.; passwords, hashes, or credentials.

[CWE-778: Insufficient Logging](https://cwe.mitre.org/data/definitions/778.html). When a security-critical event occurs, the product either fails to log the event or omits key details in the log.

#### Notable MITRE ATT&CK framework data sources

[Application Log](https://attack.mitre.org/datasources/DS0015/). These are events collected by third-party services, such as mail servers, web applications or other appliances, rather than by the native operating system or platform.

[Network Traffic](https://attack.mitre.org/datasources/DS0029/). Data transmitted across a network (e.g. the web, DNS, email, files, etc.) that is either summarised (e.g. NetFlow) and/or captured as raw, analysable data (e.g. PCAP).

### Tooling

[Eicar malware testfile](https://www.eicar.org/download-anti-malware-testfile/). The EICAR Anti-Virus Test File, also known as the EICAR Test File, is a computer file developed by the European Institute for Computer Antivirus Research (EICAR) and the Computer Antivirus Research Organisation (CARO) to test how computer antivirus programs respond.

[Metasploit framework](https://www.metasploit.com/). The Metasploit Framework is a modular, Ruby-based penetration testing platform that allows you to write, test and execute exploit code. It contains a suite of tools for testing security vulnerabilities, enumerating networks, executing attacks and evading detection. At its core, the framework is a collection of commonly used tools that provide a complete environment for penetration testing and exploit development.

[Graylog](https://graylog.org/). A free SIEM tool enabling central log management.

[Wazuh](https://wazuh.com/). A open source unified XDR and SIEM protection for endpoints and cloud workloads.

[Snort](https://www.snort.org/). Snort is a open-source intrusion prevention system (IPS). Snort IPS uses a series of rules to help define malicious network activity, identifying packets that match these rules and generating alerts for users.
Snort can also be deployed in line to block these packets. Snort has three primary uses: It can be used as a packet sniffer, like tcpdump; as a packet logger, which is useful for debugging network traffic; or as a full-blown network intrusion prevention system. Snort can be downloaded and configured for personal and business use.

[Suricata](https://suricata.io/). Suricata is a open-source network analysis and threat detection software used by private and public organisations, as well as being embedded by vendors to protect their assets.

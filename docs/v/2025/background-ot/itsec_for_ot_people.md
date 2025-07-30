# Security for OT: Why Is It Problematic?

While the term "operational technology" (OT) is fairly new, originating in the early 2000s, the underlying technology is not. Ranging back to mechanical control systems, industrial control systems (ICS) for example have come a long way.

**PLCs were already introduced in the 1960s**, predating the first personal computer (the Apple 1 in 1976) by over a decade. Also, the integration with SCADA, starting in the 1980s, took place at the same time as the Internet was just beginning to become established more broadly. This long-standing history created a very specific culture amongst the engineers and operators designing and using such systems, coming with its own tenets, views and best practices.

---

## The Historical Context

Naturally, at the onset of OT, malicious attackers were not a problem to be thought of – at that time they weren't even for IT. But even when cyber-attacks finally materialized increasingly, they spared OT by large. The technology was:

- Difficult to understand
- Even more difficult to get access to
- Systems did not feature the kind of connectivity they do today
- The attack surface was far bigger and more rewarding on the IT side

It should come to no surprise therefore that in comparison to **safety** – which was and is paramount in OT – security was never a large concern historically. With operators coming mainly from an engineering background, they also did not pick up the cultural security changes that have manifested in the IT community over the last decades.

---

## The Turning Point: Stuxnet and Beyond

For quite a long time this did not prove to be problematic, attacks almost exclusively targeted IT systems. But then, **in 2010, the discovery of Stuxnet sent shock waves through the security community**, putting ICS and soon OT in general in an ever-increasing focus.

Over half a century after the introduction of the first PLCs, the rate of occurrence of ICS-related attacks and malware started to rise steeply throughout the 2010s with the time between attacks ever decreasing since.

### Notable Attacks:

- **Industroyer (2016)**
- **TRITON (2017)**
- **Industroyer2 (2022)**

These are just some of the most infamous attacks, showcasing how security incidents can degrade **safety and availability** – the traditional top concerns in OT.

---

## Current Challenges

While cultural security issues mentioned above still persist (but are decreasing), OT often suffers from additional structural and organizational problems when trying to tackle the growing threat from malicious actors.

### Key Issues:

- Many organizations simply **cannot easily update** or substitute vulnerable systems like it is mostly possible in IT
- The adage *"never change a running system"* becomes even more true when dealing with critical infrastructure
- Systems have a **very long lifetime**, exposing them to outdated software and subsequent known vulnerabilities

**Example:** It is simply not possible to shut down a whole power plant on short notice to install an emergency patch for a newly detected vulnerability.

All these factors and more – growing threat landscape, increasing connectivity in OT for more efficient management and operation, insufficient security – have lead governments and regulatory bodies around the world to introduce legislation effectively forcing the OT community to evolve their security culture and posture like IT has done over the last two decades.

---

## Common Problems and False Assumptions About OT Security

Changing cultures and even more so carefully engineered complex and critical systems like power plants, production sites and traffic control systems has the potential to cause friction and problems. This is totally understandable, as even in IT the introduction of new security technology and measures can create major pain points in the beginning.

> **Important:** Neglecting security for a short-time saving of money and effort is a perfect setup for even more complications in the future when legislation tightens or if an actual attack happens.

**Think about it this way:** When security measures are planned and introduced, **you dictate the circumstances**, the execution time and potential downtimes. But when you have to respond to a security-related incident the circumstances dictate everything. You then have very limited say in downtimes, required resources and above all the time when it has to happen.

---

### Security vs. Safety

> *"We do not need security, we have more than enough safety mechanisms in place"*

As acknowledged before, **safety is paramount** – and with good reason! An exploding turbine affecting the lives of operators around it is undeniably more serious than a file server in an office getting encrypted by ransomware.

Looking at safety in OT reveals how diligently the OT culture treats risk to life. Most of the time, there are multiple layers of safety mechanisms ensuring that even in face of failure of one layer, another one intervenes.

#### Defense in Depth

This concept, commonly referred to as **"defense in depth"**, is also highly relevant to OT security. But even in face of these intricate safety mechanisms, think about cases where safety systems are explicitly targeted by malicious actors to prevent them from kicking in.

**Case Study:** Recall the aforementioned TRITON malware that explicitly targeted the safety systems of a petrochemical plant.

**Key Insight:** Security is an active enabler of safety. If security is compromised, this can pose a direct threat to safety systems and mechanisms. Therefore, safety and security cannot be seen as redundant but are **two sides of the same coin** trying to achieve the same goal – keeping the systems running in a safe state.

---

### Security vs. Availability

> *"We cannot harden/update systems to make them secure as we cannot afford the downtime"*

System availability is only second to safety in most cases, so naturally many systems cannot simply be taken down to introduce updates or change configurations. This is often hard to grasp for security professionals coming from an IT background. Every downtime has to be meticulously planned in advance.

**But this does not mean that downtimes are impossible in general. They do happen!** Every component needs maintenance at some point in time and OT staff is usually highly experienced to align such maintenance downtimes with business goals and possibly existing regulatory requirements.

#### Solution: Security Roadmap

These time frames should therefore also be used to introduce security-relevant topics. To do so, a **security roadmap** detailing what measure can be implemented at what maintenance downtime has to be carefully crafted.

As said before, this is your advantage when you tackle security in a pro-active way – **you decide on when something happens!**

#### Patch Management Challenges

Of special concern is patch management, as:

1. Patches are usually released more often than there are maintenance downtimes
2. Older systems often do not receive patches at all

**Solutions:**

- Establish a process rating the severity of a patch
- Align updates and their urgency with maintenance tasks
- More uncritical patches can be postponed to a later point in time
- For critical emergency patches, make plans in advance (often together with suppliers)
- Use "defense in depth" approach for systems that cannot be patched

---

### Trusting the Blast Zones

> *"Our systems are isolated so there is no way to access them anyway. We therefore do not need further measures"*

Physical security and isolation are often a major strength in OT environments, far surpassing typical IT environments in that regard. Nonetheless, **relying on access control alone can be deceptive**.

Surely, most environments won't face the kind of intricacy and effort of nation-state attacks like Stuxnet (which breached air-gapped systems), but just think about a scenario where an employee plugs in a USB stick that is privately owned. If the stick is infected with malware, your OT environment can be compromised soon – **without any connection to the outside!**

**Solution:** This is a good case for "defense in depth" again: Physical access control and network segmentation are both important factors in a comprehensive security strategy. Without them, the strategy can barely be called comprehensive, but on their own they also are not sufficient for modern threat landscapes.

---

### Security vs. Performance

> *"We cannot afford to have any delays in network/system/etc. performance caused by security technology"*

This can indeed be a major problem. Especially OT protocols often cater to very specific performance requirements like **real-time communication**. As most of these protocols are quite old, security was not taken into account during creation.

#### Current State:

- Some newer protocols with security features (like **OPC UA**)
- Some older ones offer security extensions (like **PROFINET**)
- Often not supported by vendors or not applicable to certain tasks

#### Alternative Approaches:

If the protocol layer cannot be secured, then other mitigations like:

- Careful network segmentation
- Monitoring systems

can significantly improve security posture. Especially as the OT security market is ever growing, more and more vendors are coming up with specific OT security products taking into account the complex requirements of many OT environments.

**Experience Note:** During the years-long experience of the authors of this document, there was never the case that there were no possible security improvements for the environment. Security is not a "one size fits all" product but has to be **tailored to every system and environment**, to find the best possible balance between security and performance/availability.

---

### Knowledge Gaps

> *"We are engineers, we do not have knowledge about security"*

This is also described in the beginning above. OT staff has in general a completely different background and view on security/safety than IT staff. While this at first seems to be a hindrance, **it does not have to be that way**.

#### The Value of OT Knowledge

In-depth OT-specific knowledge is crucial in:

- Securing OT environments
- Detecting and responding to security incidents
- Crafting tailored security strategies

Typically, the engineers working with the systems are the first to notice strange behavior, being the **primary source of (human) detection** of attacks. They also know the specific characteristics, the requirements and the processes coming with their systems.

#### Bridging the Gap

The lack of security know-how can be tackled in several ways:

**Option 1: Collaboration Approach**
If there already is security personnel and no specific OT security team is planned, a closer collaboration between IT and OT staff can lead to greater understanding on both sides.

- IT security staff can come up with viable solutions for OT security problems once they grasp the difference between IT and OT
- OT staff do not have to become in-depth security experts
- Enable OT personnel to think like an attacker and see potential vulnerabilities beforehand
- OT personnel already work with (safety) risks every day, so the required mental effort is often not that high

**Option 2: Training and Education**
There is a steady increase in educational material for OT security:

- Free documents on the Internet
- Instructor-led training programs
- Specific OT security teams (requires time and money investment)

**Important:** Giving additional security tasks to an already overworked staff is a recipe for disaster. Management must ensure that there are enough resources for those responsible. **Security is not something that can be done besides!**

---

### Security by Obscurity

> *"We are a small power plant/production site/or similar. Nobody will make the effort to attack us"*

This is a sentiment that is often also shared by IT. **Plain and simple, this is a dangerous fallacy** that does not resemble ongoing threats.

#### Current Threat Landscape:

- While sophisticated nation-state attacks affect only a very small subset of all OT environments
- Threat reports show awareness of malicious actors (criminal, hacktivists) for OT is on the rise
- Rudimentary malware can lead to disruption and availability issues
- **Rise of OT ransomware** - a type of malware that has been haunting IT for years

#### Opportunistic Attacks

In general, more and more OT incidents do not happen because of a specific interest in the target, but due to:

- **Opportunism**
- Chance to extort money
- Amplify a certain political message

by attacking a coincidentally vulnerable OT environment (e.g., newly vulnerable remote access solutions that have to be reachable over the Internet).

---

### Problems with the Supply Chain

> *"Even if we want to integrate security more, many of our suppliers do not feature security in their products"*

Yes, this can be a problem. While regulations force more and more vendors to consider security in their new products, this does not help with already existing systems.

**However:** Security can be done in many ways and as described before, there are security workarounds for almost all problems. **"Defense in depth" is again the keyword** to look for.

#### Example Approach:

If there is no security control for one specific component (e.g., a PLC), then the additional layers of a DiD approach can provide security by:

- Monitoring the network of the PLCs
- Restricting access to this network segment
- Providing strict access control for engineering via dedicated and isolated workstations
- And so on...

---

## Advantages of Security

All in all, when security is done the right way, it should never be a hindrance, but **an enabler to a resilient, available and safe OT environment**.

While a meticulously tailored security strategy ensures compliance with existing and upcoming legislation and regulations, truly living the strategy brings many operational advantages:

### Key Benefits:

**Higher confidence in safety** of systems as deliberate attacks against safety systems is made more difficult

**More resilient infrastructure** leading to less downtime of systems in case of an incident

**Greater insight in existing assets** as a result of needed analyses of status quo

**Easier manageability of networks** due to appropriate segmentation

**More insight into network traffic** due to increased monitoring – not only security-related incidents can be detected and handled faster

---

*Security and safety working together for a more resilient operational technology environment.*

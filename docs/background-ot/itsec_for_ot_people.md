# IT Sec for OT: Why is it problematic?

Malicious external actors were previously not a problem for the operators.
While safety always was a large concern, cyber-security wasn't. OT operators
are familiar with the production process. Tradionally, security was not a big
part of their education. Direct physical access was usually required to
manipulate the system. Attacks were seldom, and almost never reported in public.

These times are chaning. Critical infrastructure is getting more connected.
While this makes some maintenance easier (think about remote management) or
improves efficiency (predictive maintenace, predictions about power ussage, etc.)
this also means that critical infrastructure is now easier reachable for attackers.

As security was not of concern for a long-term, much of critical infrastructure
has a similar security posture to websites or local networks twenty years ago.
Which was not good (to state it diplomatically). One particular problem that we
are seening in OT is that some of these insecure networks are not becoming
connected to the internet and are now exposed to malicious attackers, leading
to increased security incidents.

Adding security becomes more and more important, but retro-fitting existing
infrastructure is a tedious and sometimes expensive process. The "*Never change a
working system*" approach was well known in traditional IT, and it is understandable
that it is even more often heard within OT with its often glacial speed of
change. Overall, the integration of security into OT can produce friction. We
hope that efforts such as this document help to reduce some of that friction.

Sadly, attackers don't wait, so we have to do something about it.

## Potential for Friction

There are many areas where introduction of security-specific measures can
become problematic. To be clear, we believe that not doing those security-measures
is more problematic in the long term though.

Some common complaints are:

- Some cyber security measures make it difficult to analyze errors if there
is a problem with the machine or system. For example, an encrypted
transmission of data cannot easily be analyzed to determine whether
the data is correct.

- Authentication information can be problemaic. One example is the use of
  certificates for authentication. If these expire and are not replaced in time, this can lead to the system coming to a standstill. This leads to a reduction in the availability of the system. Oftentimes, certificate checks are thus disabled in IoT systems.

- There are few OT plus Security specialists. Traditional IT security training does not
  include much information about the OT world. THus, security personnel is dependent on
  operators for deeper information about the network, processes and what is "normal" inside
  the network. External IT security specialist can be overboarding while not being educated
  in the nuances of the OT world. You might want them to [OT for IT Sec People](./ot_for_itsec_people.md).
  
OT-personnel are integral part of the security process. Especially, when it comes to remediation and rebuilding after an incident.

## Advantages of cyber security

Cyber security is not just a hindrance:

- Remote access is not feasible in today's world without robust security.

- Higher efficiency due to integrated processes. So using more cyber-infrastructure might be a business-priority.

- Digitization of processes: cryptographic signatures can be used to detect changes to logs and measurement data or to prove their integrity. This makes it possible, for example, to digitize previous paper-based processes, thereby accelerating and optimizing them.

- System monitoring: the number one goal for serious adversaries in an OT environment is disruption. This is why security appliances also closely monitor the functionality and critical operational functions in the system. Additionally, security appliances show almost instantly if unknown devices have connected.

## Compliance

Security is part of most of the common standards nowadays. May it be critical infrastructure or "just" some risk management procedure like IEC 62443, security is part of the process and can not be ignored when wanting to be compliant.

While the authors have seen organizations that used mandatory standarization to improve their
security processes and increased their security posture/hygiene, they also have seen
organizations in which standardization was mostly paper-pushing. Achieving an ISO
certification can be a long and expensive process, we can only suggest to try really live
the processes including the security steps that are documented (and to actively engage
the people trying to document and write the process documentation --- so that real lived
processes are documented and not some fake processes that have to be implemented afterwards)

One thing should also be clear (esp. for management): giving an additional task (security) to
potentially already over-worked personell will not work.

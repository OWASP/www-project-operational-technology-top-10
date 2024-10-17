# What is OT?

Operational Technology or short OT refers to a broad range of programmable
systems and devices that directly or indirectly interact with the physical
environment. In case of indirect interaction, these systems manage other systems
or devices that themselves interact with the physical world in a direct way. All
of these interactions happen through monitoring and controlling devices,
processes, and events. A very simple example for that could be a thermostat that
monitors the temperature in a room. If it senses, that it gets to cold, it turns
up the heating thus changes the physical environment around it. Due to this
interleaving with the physical world, the term cyber-physical system (CPS) is
often used synonymously with OT. While the increased use of CPS is not least due
to the increasing convergence of IT, OT and IoT, this mixture of fields can also
sometimes make the term blurry.

OT systems can come in a wide variety of forms, ranging from small programmable
logic controllers (PLCs) to (multiple) site encompassing control systems like
supervisory control and data acquisition (SCADA) or distributed control systems
(DCS). Also, building automation systems or short BAS are considered to be OT
(like in the thermostat example before). So are physical access control systems
and even medical IoT devices are part of OT. But not only the types of systems
and devices are diverse, so are the industries and infrastructures fielding OT
systems. From chemical production to the transportation sector – almost no
modern infrastructure operates without OT components. Especially due to the
usage in critical infrastructure like in energy or water and wastewater
infrastructure, OT security problems can have major impacts on the society
relying on these infrastructures. This is also why OT security is of ever
increasing importance, not least as several highly sophisticated pieces of
malware have already affected OT system, from the notorious Stuxnet in 2010 to
several power outages in Ukraine since 2015 due to software like BlackEnergy or
Industroyer.

To achieve security in OT systems and devices, several stakeholders have to work
hand in hand. For example, the standards series for security for OT in
automation and control systems IEC 62443 lists the following crucial roles:

- The asset owner that operates the so-called Industrial Automation and Control System (IACS). IACS is a generic term of IEC 62443 that describes a control system and any complementary hardware and software components that have been installed and configured to operate together.
- The maintenance service provider that – as the name implies – maintains an IACS.
- The integration service provider (integrator) that assembles a whole automation solution for a intended environment by combining several components.
- The product supplier that develops and manufactures components like applications, embedded devices, network components or similar.

OT security challenges are different for these stakeholders, which is also
reflected in the different standards of the IEC 62443 series. For example, an
operator does not have access to the development process of the specific
component and thus cannot implement security measures at the source code level.
On the other hand, the operator more or less can shape the intended environment
where the solution is employed and therefor is capable of introducing mitigating
measures like strong network segmentation.

As the impact of security failures in OT can be tremendous, there is an
increasing number of laws and regulations governing the development and
operation of OT systems and devices. Examples are the European NIS2 and the
Cyber Resilience Act (CRA), the US EO14028 or the China Cybersecurity Law.

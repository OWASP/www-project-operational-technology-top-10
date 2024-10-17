# OT vs IT – Differences in Security and Culture

Although there is an increasing convergence of IT and OT and regular IT systems
are just as well used in OT environments, there are nonetheless fundamental
differences in security goals and security culture.

Traditionally, security can be defined by the mixture of the three security
goals confidentiality, integrity, and availability. This is also known as the
CIA triad. While in IT commonly confidentiality and integrity are paramount,
confidentiality is mostly of lesser importance in OT as it is often employed in
more or less physically restricted environments. The most important goal in OT
is safety, as humans can get harmed or even worse get killed when OT systems and
devices malfunction. Besides that, availability is paramount. Be it production
site, be it critical energy infrastructure – many OT environments cannot afford
even the smallest downtime. This also is reflected in security testing of OT,
where many tools that are commonly deployed in IT environments can carry a
significant risk if not used carefully in OT. For example, a simple port and
service scan with the well-known tool _nmap_ is a common approach to start off
the enumeration in a penetration test. While this is totally fine in most IT
systems, there are many PLCs that can crash if they receive such packets. This
is mainly due to their highly specific intended usage in certain processes and
the resource constraints that come with them. Additionally, due to special
requirements like real-time capabilities many proprietary protocols are used to
complement standard protocols. This makes the testing process harder in general
as there is less crossover between different environments.

The focus on safety and availability is also reflected in OT worst-case
scenarios. While in IT loss of data confidentiality or manipulation of data is
often catastrophic, OT worst-cases are loss of view (LOV) and loss of control
(LOC). LOV describes a scenario where the operators do not have visibility or
correct visibility of what is happening with the process. So the systems still
operate, but it is unknown what they are currently doing and if they are
actually doing the right thing. An example for LOV was when Stuxnet manipulated
monitoring of Iranian operators to mislead them thinking that everything was
working correctly. LOC, as the name implies, means that the operators cannot
control the process and its systems anymore more, making them unable to respond
to possible unsafe operations.

While security culture is shifting in OT and is undeniably growing in importance
due to an increasing number of regulations and cyberattacks, this culture shift
unfortunately is quite slow. Unlike IT systems with their short lifetime, OT
systems are used for 15 to 20 years. As patching is often not possible due to
the resource reasons and possible outages mentioned before, there are many
vulnerable legacy systems and insecure protocols in active use for years to
come. Especially those protocols sometimes have to be completely redesigned, as
security was not an issue when they first were conceived. Also the mindset of
the engineers and their organizations often times is not the same yet as of IT
engineers. While having a very good understanding of the prevention of accidents
and therefore required safety measures, the notion that there are indeed
attackers deliberately causing such “accidents” is not as widespread as much as
it is needed yet. Additionally, many companies are not as open to vulnerability
disclosures as most IT companies yet. Fortunately, this is also currently
changing and more and more OT organizations see the value in transparent and
proactive handling of discovered vulnerabilities.
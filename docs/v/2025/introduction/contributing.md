# Community and Contributing

Please don’t hesitate to contact the OWASP OT Top 10 project with your questions, comments, and ideas, either publicly by adding issues or providing commits on [our github page](https://github.com/OWASP/www-project-operational-technology-top-10).

Please join the [OWASP OT Top 10 Slack Channel](https://owasp.slack.com/archives/C07HDTYRA6R) to chat. You can get a free invitation to the OWASP slack server through [this website](https://owasp.org/slack/invite).

We do a video conference every first Monday of the month from 4pm to 5pm CET/CEST using
[https://meet.google.com/gwi-vhxz-rjr](https://meet.google.com/gwi-vhxz-rjr). We also provide a [public ICS calendar series](https://calendar.google.com/calendar/ical/c_7dfb0e972186165865194ec083c325f8a744568c1229e44b6e8a99fc9250944a%40group.calendar.google.com/public/basic.ics) that you can add to your calendar.
    
## How to Contribute?

All development is public and happens on github. If you want to contribute, please fork the repository, make your changes, and then submit a pull request. We will review your changes and provide feedback as needed.


If you plan a larger change, it is always a good idea to talk with us during one of the Monthly meetings first. This way we can discuss your ideas and provide feedback before you start working on the changes. This can save you a lot of time and effort, and it can also help us to ensure that your changes are aligned with the goals of the project.

You find the source code of the current version of the OWASP OT Top 10 in the `docs/` directory within the git repository. When you check [our open issues on github](https://github.com/OWASP/www-project-operational-technology-top-10/issues), you can see that some issues are tagged with `help wanted` or `good first issue`. Choose these if you want to help out the project!

## Empirical Data Contribution

The OWASP OT Top 10 are created by both discussions with experts as well as through analysis of empirical data (e.g., incident reports, vulnerability databases, etc.). We are looking for empirical data that can help us to identify the most relevant risks and vulnerabilities in the OT domain. This includes data from incident reports, vulnerability databases, and other sources that can provide insights into the security landscape of OT systems.

If you have empirical data that you would like to contribute, please contact us through email ([Andreas Happe](mailto:andreas.happe@owasp.org)). If you are able to contribute data, please make sure that it is appropriately anonymized.

## How to Test Your Changes Locally Before Submitting

If you can run python, you can locally run the OWASP OT Top 10 website locally. We recommend this to test your changes before pushing them to github.

To do this, we will use `venv` to create a local python environment to install the needed `mkdocs` package.

```shell
# creates and activates a new python environment in a new `venv` directory
$ python3 -m venv venv
$ source venv/bin/activate

# install the mkdocs package
$ pip install mkdocs-material

# switch into your checked-out OWASP OT Top 10 directory
$ cd owasp-ot-top10

# run the local webserver
$ mkdocs serve

# now you can point your browser to http://localhost:8000 and check
# how your changes will look like
```

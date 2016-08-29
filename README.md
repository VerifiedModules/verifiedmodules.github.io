About the Verified Modules initiative

## *I have a dream...*

That one day our children will be able to install node modules without worrying those modules might run `rm -rf /` in their postinstall script!

*I have a dream...*

That all modules in the registry have unit tests and adhere to semantic versioning!

*I have a dream...*

That modules like `leftpad` don't suddenly get "unpublished" when they were published with an open source license and the community has the right to keep using them!

*I have a dream...*

And so on. You get the drift.

## What is the *Verified Modules Initiative* (working title)?

> Verification: The evaluation of whether or not a product, service, or system complies with a regulation, requirement, specification, or imposed condition.

It's 2016 - we need to build large-scale reliable systems on Nodejs, but the current module registries are a wild west.
Anything goes!

Well not here. We aim to start holding ourselves to a higher standard. We know what best practices look like,
but we don't always practice them like we should. Why? It's not convenient enough. None of the tools for writing quality
modules comes with Node core by default.

*Writing quality modules needs to be simpler.*

The goal is to establish a baseline set of specs that node modules should meet, and provide 
the tools and CI services to programmatically enforce these standards. It will be the ideal registry, where APIs are
always documented, dependencies are always up to date, security fixes are applied instantaneously to everyone's modules
assuming the change doesn't break anyone's tests in CI.

Even if we do not achieve our goal, hopefully our ambition will spark a conversation in the Nodejs community about 
what qualities we really want modules to have, how to ensure our software is secure and maintained, and how
module authors can better cooperate to develop the shared community codebase together.


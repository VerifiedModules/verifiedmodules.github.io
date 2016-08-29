## About the Verified Modules initiative

*I have a dream...* that one day our children will be able to install node modules without worrying those modules might run `rm -rf /` in their postinstall script!

*I have a dream...* that all modules in the registry have unit tests and adhere to semantic versioning!

*I have a dream...* that modules like `leftpad` don't suddenly get "unpublished" when they were published with an open source license and the community has the right to keep using them!

*I have a dream...* And so on. You get the drift.

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

## What's involved?

I've been bookmarking modules for a little over a year now that I think would make sense to apply broadly, either as
default modules, npm prepublish scripts, or to run in bot form like [greenkeeper.io](https://greenkeeper.io). This part is 
very much a work in progress, and is more of a idea list than a fixed plan.

### V&V
- [semantic-release](https://www.npmjs.com/package/semantic-release) - fully automated semver compliant package publishing
- [dont-break](https://www.npmjs.com/package/dont-break) - Checks if the current version of your package would break dependent projects
- [next-update](https://www.npmjs.com/package/next-update) - Tests if module's dependencies can be updated to the newer version without breaking the tests
- [depcheck](https://www.npmjs.com/package/depcheck) - Depcheck is a tool for analyzing the dependencies in a project to see: how each dependency is used, which dependencies are useless, and which dependencies are missing from package.json.

### Security
- [update-notifier](https://www.npmjs.com/package/update-notifier) - Update notifications for your CLI app
- [snyk](https://www.npmjs.com/package/snyk) - Snyk helps you find, fix and monitor for known vulnerabilities in Node.js npm packages, both ad hoc and as part of your CI (Build) system.
- [retire](https://www.npmjs.com/package/retire) - Retire is a tool for detecting use of vulnerable libraries
- [nsp](https://www.npmjs.com/package/nsp) - The Node Security (nodesecurity.io) command line interface
- [auditjs](https://www.npmjs.com/package/auditjs) - Audit dependencies to identify known vulnerabilities and maintenance problems

### Style
- [standard](https://www.npmjs.com/package/standard) - JavaScript Standard Style
- [package-json-to-readme](https://www.npmjs.com/package/package-json-to-readme) - Generate a README.md from package.json contents
- [pretty-error](https://www.npmjs.com/package/pretty-error) - See nodejs errors with less clutter

### Misc
- [license-spelunker](https://www.npmjs.com/package/license-spelunker) - Find the licenses of all of you node.js dependencies recursively and create a simple report that includes the license details
- [david-dm](https://david-dm.org/)

# How you can help
- Contribute knowledge about any of the modules listed above
- Add a module to the list! Or replace modules with ones that are even better!
- Write the code to start glueing these pieces together
- Identify other goals we might have in common
- Spread the word

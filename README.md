# About the Verified Modules initiative

*I have a dream...* that one day our children will be able to install node modules without worrying those modules might run `rm -rf /` in their postinstall script!

*I have a dream...* that all modules in the registry have unit tests and adhere to semantic versioning!

*I have a dream...* that modules like `leftpad` don't suddenly get "unpublished" when they were published with an open source license and the community has the right to keep using them!

*I have a dream...* And so on. You get the drift.

# What is the *Verified Modules Initiative* (working title)?

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

# What's involved?

I've been bookmarking modules for a little over a year now that I think would make sense to apply broadly, either as
default modules, npm prepublish scripts, or to run in bot form like [greenkeeper.io](https://greenkeeper.io). This part is 
very much a work in progress, and is more of a idea list than a fixed plan.

## V&V
- [semantic-release](https://www.npmjs.com/package/semantic-release) (boennemann) - fully automated semver compliant package publishing
- [dont-break](https://www.npmjs.com/package/dont-break) (bahmutov)- Checks if the current version of your package would break dependent projects
- [next-update](https://www.npmjs.com/package/next-update) (bahmutov) - Tests if module's dependencies can be updated to the newer version without breaking the tests
- [depcheck](https://www.npmjs.com/package/depcheck) (lijunle) - Depcheck is a tool for analyzing the dependencies in a project to see: how each dependency is used, which dependencies are useless, and which dependencies are missing from package.json.

## Security
- [snyk](https://www.npmjs.com/package/snyk) (remy) - Snyk helps you find, fix and monitor for known vulnerabilities in Node.js npm packages, both ad hoc and as part of your CI (Build) system.
- [retire](https://www.npmjs.com/package/retire) (eoftedal) - Retire is a tool for detecting use of vulnerable libraries
- [nsp](https://www.npmjs.com/package/nsp) (nlf) - The Node Security (nodesecurity.io) command line interface
- [auditjs](https://www.npmjs.com/package/auditjs) (kenduck) - Audit dependencies to identify known vulnerabilities and maintenance problems

## Style
- [standard](https://www.npmjs.com/package/standard) (feross) - JavaScript Standard Style

## Docs
- `README` candidates - Lets start by mandating a README exists, and then build from there with something like
  - [package-json-to-readme](https://www.npmjs.com/package/package-json-to-readme) (zeke) - Generate a README.md from package.json contents
  - [standard-readme](https://www.npmjs.com/package/standard-readme) (richardlitt) - Readme Standard Style
  - [mos](https://www.npmjs.com/package/mos) (zkochan) - A pluggable module that injects content into your markdown files via hidden JavaScript snippets

## Misc
- `LICENSE` candidates - Let's start by mandating a LICENSE exists, and then maybe we can automatically check for license compatibility (or at least guarantee every dep HAS a license, maybe handle simple cases where all the licenses are MIT / BSD)
  - [license-checker](https://www.npmjs.com/package/license-checker) (davglass) - Check license info for a pacakge
  - [licensecheck](https://www.npmjs.com/package/licensecheck) (marcello3d) - A quick way to see the licenses of modules you depend on—recursively.
- [david-dm](https://david-dm.org/)

## Runtime dependencies?

All of the above are simply devDependencies, so they add zero weight to the finished module. Quality modules can be written using only the Node core, so what can we say about runtime modules? I don't know. But let's list some anyway - no idea is being discarded at this point, we're still brainstorming.

- [update-notifier](https://www.npmjs.com/package/update-notifier) (sboudrias) - Update notifications for your CLI app
- [pretty-error](https://www.npmjs.com/package/pretty-error) (ariaminaei) - See nodejs errors with less clutter

# How you can help
- Contribute knowledge about any of the modules listed above
- Add a module to the list! Or replace modules with ones that are even better!
- Write the code to start glueing these pieces together
- Identify other goals we might have in common
- Spread the word

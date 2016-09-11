<!--
title: About
-->

<article class="ui grid container">
<div class="row">
  <div class="column">
    <img class="ui centered image" alt="Verified Modules Initiative Logo" src="/assets/badge.png">
  </div>
</div>

<section class="ui vertical segment">

<h1 class="ui header">What is the <i>Verified Modules Initiative</i> (working title)?</h1>

<div class="ui segment" style="width: 50%; margin-left: auto; margin-right: auto">
  <div class="ui list">
    <div class="item">
      <i class="book icon"></i>
      <div class="content">
        <span class="header">Verification</span>
        <div class="description">The evaluation of whether or not a product, service, or system complies with a regulation, requirement, specification, or imposed condition.</div>
      </div>
    </div>
  </div>
</div>

It's 2016 - we need to build large-scale reliable systems on Nodejs, but the current module registries are a wild west.
Anything goes!

Well not here. We aim to start holding ourselves to a higher standard. We know what best practices look like,
but we don't always practice them like we should. Why? It's not convenient enough. None of the tools for writing quality
modules comes with Node core by default.

<p style="text-align: center">
  <i class="ui header">Writing quality modules needs to be simpler.</i>
</p>

The goal is to establish a set of specs that node modules should meet, and provide
the tools and CI services to programmatically enforce these standards.
Modules meeting these specs will be featured on a website dedicated to this purpose, and be
eligible for a badge to proudly display. Collectively it will be the very model of a modern major registry, where APIs are
always documented, dependencies are always up to date, security fixes are applied instantaneously to everyone's modules
(assuming the change doesn't break anyone's tests in CI).

Even if we do not achieve our goal, hopefully our ambition will spark a conversation in the Nodejs community about
what qualities we really want modules to have, how to ensure our software is secure and maintained, and how
module authors can better cooperate to develop the shared community codebase together.
</section>

<section class="ui vertical segment">
<h1 class="ui header">What's involved?</h1>

I've been bookmarking modules for a little over a year now that I think would make sense to apply broadly, either as
default modules, npm prepublish scripts, or to run in bot form like [greenkeeper.io](https://greenkeeper.io). This part is
very much a work in progress, and is more of a idea list than a fixed plan.

<div class="ui list">

<div class="item">
<i class="folder icon"></i>
<div class="content">
<div class="header">V&V</div>
<div class="list">

<div class="item">
<i class="cube icon"></i>
<div class="content">
<div class="header">

[semantic-release](https://www.npmjs.com/package/semantic-release) (boennemann)

</div>
<div class="description">

fully automated semver compliant package publishing

</div>
</div>
</div>

<div class="item">
<i class="cube icon"></i>
<div class="content">
<div class="header">

[dont-break](https://www.npmjs.com/package/dont-break) (bahmutov)

</div>
<div class="description">

Checks if the current version of your package would break dependent projects

</div>
</div>
</div>

<div class="item">
<i class="cube icon"></i>
<div class="content">
<div class="header">

[next-update](https://www.npmjs.com/package/next-update) (bahmutov)

</div>
<div class="description">

Tests if module's dependencies can be updated to the newer version without breaking the tests

</div>
</div>
</div>

<div class="item">
<i class="cube icon"></i>
<div class="content">
<div class="header">

[depcheck](https://www.npmjs.com/package/depcheck) (lijunle)

</div>
<div class="description">

Depcheck is a tool for analyzing the dependencies in a project to see: how each dependency is used, which dependencies are useless, and which dependencies are missing from package.json.

</div>
</div>
</div>

</div>
</div>
</div>

<div class="item">
<i class="folder icon"></i>
<div class="content">
<div class="header">Security</div>
<div class="list">

<div class="item">
<i class="cube icon"></i>
<div class="content">
<div class="header">

[snyk](https://www.npmjs.com/package/snyk) (remy)

</div>
<div class="description">

Snyk helps you find, fix and monitor for known vulnerabilities in Node.js npm packages, both ad hoc and as part of your CI (Build) system.

</div>
</div>
</div>

<div class="item">
<i class="cube icon"></i>
<div class="content">
<div class="header">

[retire](https://www.npmjs.com/package/retire) (eoftedal)

</div>
<div class="description">

Retire is a tool for detecting use of vulnerable libraries

</div>
</div>
</div>

<div class="item">
<i class="cube icon"></i>
<div class="content">
<div class="header">

[nsp](https://www.npmjs.com/package/nsp) (nlf)

</div>
<div class="description">

The Node Security (nodesecurity.io) command line interface

</div>
</div>
</div>

<div class="item">
<i class="cube icon"></i>
<div class="content">
<div class="header">

[auditjs](https://www.npmjs.com/package/auditjs) (kenduck)

</div>
<div class="description">

Audit dependencies to identify known vulnerabilities and maintenance problems

</div>
</div>
</div>

</div>
</div>
</div>

<div class="item">
<i class="folder icon"></i>
<div class="content">
<div class="header">Safety</div>
<div class="list">

<div class="item">
<i class="help icon"></i>
<div class="content">
<div class="description">

What can we do about malicious packages? Can we free people from the potential that a postinstall script might run `rm -rf /` (or otherwise tamper with the system)?

</div>
</div>
</div>

</div>

</div>
</div>

<div class="item">
<i class="folder icon"></i>
<div class="content">
<div class="header">Tests</div>
<div class="list">

<div class="item">
<i class="help icon"></i>
<div class="content">
<div class="description">

We need a way to verify that a module has good test coverage. Can we do something similar to [npms.io](npms.io) and use [img.shields.io JSON API](https://img.shields.io/coveralls/IndigoUnited/node-planify.json) for that?

</div>
</div>
</div>

</div>
</div>
</div>

<div class="item">
<i class="folder icon"></i>
<div class="content">
<div class="header">Style</div>
<div class="list">

<div class="item">
<i class="cube icon"></i>
<div class="content">
<div class="header">

[standard](https://www.npmjs.com/package/standard) (feross)

</div>
<div class="description">

JavaScript Standard Style

</div>

<div class="list">
<div class="item">
<i class="help icon"></i>
<div class="content">

Is that controversial? Too limiting?

</div>
</div>
</div>

</div>
</div>
</div>

</div>
</div>


<div class="item">
<i class="folder icon"></i>
<div class="content">
<div class="header">Docs</div>
<div class="list">

<div class="item">
<i class="help icon"></i>
<div class="content">
<div class="description">

`README` candidates - Lets start by mandating a README exists, and then build from there with something like

</div>
<div class="list">

<div class="item">
<i class="cube icon"></i>
<div class="content">
<div class="header">

[package-json-to-readme](https://www.npmjs.com/package/package-json-to-readme) (zeke)

</div>
<div class="description">

Generate a README.md from package.json contents

</div>
</div>
</div>

<div class="item">
<i class="cube icon"></i>
<div class="content">
<div class="header">

[standard-readme](https://www.npmjs.com/package/standard-readme) (richardlitt)

</div>
<div class="description">

Readme Standard Style

</div>
</div>
</div>

<div class="item">
<i class="cube icon"></i>
<div class="content">
<div class="header">

[mos](https://www.npmjs.com/package/mos) (zkochan)

</div>
<div class="description">

A pluggable module that injects content into your markdown files via hidden JavaScript snippets

</div>
</div>
</div>

</div>
</div>
</div>

</div>
</div>
</div>

<div class="item">
<i class="folder icon"></i>
<div class="content">
<div class="header">Misc</div>
<div class="list">

<div class="item">
<i class="help icon"></i>
<div class="content">
<div class="description">

`LICENSE` candidates - Let's start by mandating a LICENSE exists, and then maybe we can automatically check for license compatibility (or at least guarantee every dep HAS a license, maybe handle simple cases where all the licenses are MIT / BSD)

</div>
<div class="list">
<div class="item">
<i class="cube icon"></i>
<div class="content">
<div class="header">

[license-checker](https://www.npmjs.com/package/license-checker) (davglass)

</div>
<div class="description">

Check license info for a package

</div>
</div>
</div>

<div class="item">
<i class="cube icon"></i>
<div class="content">
<div class="header">

[licensecheck](https://www.npmjs.com/package/licensecheck) (marcello3d)

</div>
<div class="description">

A quick way to see the licenses of modules you depend on—recursively.

</div>
</div>
</div>

</div>
</div>
</div>

<div class="item">
<i class="cube icon"></i>
<div class="content">
<div class="header">

[david-dm](https://david-dm.org/)

</div>
</div>
</div>

</div>
</div>
</div>

<div class="item">
<i class="folder icon"></i>
<div class="content">
<div class="header">
Runtime dependencies?
</div>
<div class="description">
All of the above are simply devDependencies, so they add zero weight to the finished module. Quality modules can be written using only the Node core, so what can we say about runtime modules? I don't know. But let's list some anyway - no idea is being discarded at this point, we're still brainstorming.
</div>
<div class="list">
<div class="item">
<i class="cube icon"></i>
<div class="content">
<div class="header">

[update-notifier](https://www.npmjs.com/package/update-notifier) (sboudrias)

</div>
<div class="description">

Update notifications for your CLI app

</div>
</div>
</div>

<div class="item">
<i class="cube icon"></i>
<div class="content">
<div class="header">

[pretty-error](https://www.npmjs.com/package/pretty-error) (ariaminaei)

</div>
<div class="description">

See nodejs errors with less clutter

</div>
</div>
</div>

</div>
</div>
</div>

</div>
</div>
</div>

</div>
</section>

<section class="ui vertical segment">
<h1 class="ui header">How you can help</h1>

- Contribute knowledge about any of the modules listed above
- Add a module to the list! Or replace modules with ones that are even better!
- Write the code to start glueing these pieces together
- Identify other goals we might have in common
- Spread the word

</section>

<section class="ui vertical segment">
<h1 class="ui header">Prototype</h1>

I've started assembling a proof-of-concept module called [exemplar](https://github.com/VerifiedModules/exemplar) that tries to do all the things. Check it out and open a pull request if you're into that kind of thing.

</section>
</article>

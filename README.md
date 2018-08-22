# nim_cjson
Nim_cjson is a [Nim](https://nim-lang.org/) wrapper for the [cjson](https://github.com/DaveGamble/cJSON) library

Nim_cjson is distributed as a [Nimble](https://github.com/nim-lang/nimble) package and depends on [nimgen](https://github.com/genotrance/nimgen) and [c2nim](https://github.com/nim-lang/c2nim/) to generate the wrappers. The rax source code is downloaded using git.

__Installation__

Nim_cjson can be installed via [Nimble](https://github.com/nim-lang/nimble):

```
> nimble install nimgen

> git clone https://github.com/muxueqz/nim_cjson
> cd nim_cjson
> nimble install -y
```

This will download, wrap and install nimrax in the standard Nimble package location, typically ~/.nimble. Once installed, it can be imported into any Nim program.

# bzip2-clib

Bundled sources of the [bzip2 C library](https://sourceware.org/bzip2/) for use with various bzip2 Haskell bindings.

⚠️ This is the least worst option for people who desperately need to provide the C sources as part of the cabal build system. This way, the bundled C code is made explicit in the dependency tree and can be updated if / when CVE are discovered. 
Do not rely on such a mechanism if having the C libraries provided by your package manager is an acceptable solution. 

This is a last recourse option that should not be made a standard practice.

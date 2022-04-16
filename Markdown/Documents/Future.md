# Future of neueCoreutils

## Hurdle 1: Portability

Portability remains one of the most important hurdles in neueCoreutils, as the standard Swift library is only packaged with the Swift toolchain, which is too large and bulky.

### **Proposal NCP-H1-1A: Freestanding Swift Binary**

Make neueCoreutils a freestanding single binary, like `Busybox`.

**Pros:**
* No need to give out Swift object files, ruling out the need of making seperate packages and checking for compatibility test issues among different UNIX systems.

**Cons:**
* Large file size (~50 MB)

### **Proposal NCP-H1-1B - repackage Swift object files**

Package the standard Swift library and give it along with neueCoreutils.

**Pros:**
* Light coreutils binary
* Enables using other Swift apps in a system without the Swift toolchain.

**Cons:**
* Rigorous testing would need to be made
* May or may not be illegal w.r.t. Apple Public Source License <!-- Needs to be checked! -->

A version with the tag `0.2a-PH1A*` shall be initiated for wider testing of both proposals.

#### **Chosen proposal: <!-- TBA -->**
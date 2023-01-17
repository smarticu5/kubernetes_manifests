# example-container-manifests

A collections of some of the things we have seen that are "wrong" or insecure in container (specifically Kubernetes) environments. 

Also some useful manifests to deploy common testing images, or just normal deployments. 

## Attacker Manifests

Several manifests that attempt to create things you probably don't want your devs to be able to do. Some of these create pods that will attempt to do privileged things on nodes, some will modify your RBAC. 

**These manifests actively weaken the security posture of your cluster. Don't deploy these on a production cluster unless you know what you're doing and how to undo it**
# Namespace Labelling

A quick PoC that the ability to PATCH a Namespace through a role, at a namespace scope, allows labelling of the entire ns. 

## Script output

~~~
serviceaccount/labeller configured
pod/labeller configured
Error from server (Forbidden): namespaces "default" is forbidden: User "system:serviceaccount:default:labeller" cannot get resource "namespaces" in API group "" in the namespace "default"
command terminated with exit code 1
Note that didn't work
Apply rbac
role.rbac.authorization.k8s.io/test-allow-get-patch-namespace created
rolebinding.rbac.authorization.k8s.io/test-allow-sa-patch created
namespace/default labeled
~~~

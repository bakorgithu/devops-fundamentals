1. Deployment
Purpose:
Used to deploy stateless applications or services.
Ensures a specified number of identical replicas of a pod are running.
Handles rolling updates, rollbacks, scaling, and self-healing of pods.
Key Features:
Stateless pods: No affinity between pods or reliance on persistent data.
Pods are assigned randomly to nodes.
Rolling updates to deploy new versions of the application.
Easily scales up/down replicas.
Use Cases:
Web servers (e.g., NGINX, Apache).
REST APIs.
Microservices-based applications.

2. DaemonSet
Purpose:
Ensures that a single pod runs on every node (or a subset of nodes based on selectors).
Commonly used for running system-level or cluster-level services.
Key Features:
Pods are scheduled one per node.
Automatically deploys pods on new nodes when they are added to the cluster.
Does not handle scaling (it is tied to the number of nodes).
Use Cases:
Node monitoring (e.g., Prometheus Node Exporter, Datadog agents).
Log collection (e.g., Fluentd, Filebeat).
Networking agents (e.g., Calico, Cilium).

3. StatefulSet
Purpose:
Used to deploy stateful applications that require stable, persistent identities and storage.
Ensures ordered deployment and scaling of pods.
Maintains a stable network identity for each pod (e.g., pod-0, pod-1, pod-2).
Key Features:
Pods have unique, persistent identities (e.g., pod-0, pod-1).
Provides ordered deployment, scaling, and deletion (ensures sequential operations).
Works with PersistentVolumeClaims (PVCs) to ensure each pod has its own storage.
Pods retain their state and identity across restarts.
Use Cases:
Databases (e.g., MySQL, MongoDB, Cassandra).
Distributed systems (e.g., Kafka, Zookeeper).
Stateful applications that rely on unique pod identities.


When to Use Each

Deployment: When you need stateless, scalable, and easily upgradable applications.
DaemonSet: When you need one pod per node for system or cluster-level tasks.
StatefulSet: When you need stable identities, persistent storage, and ordered operations for stateful apps.

Types of Services

1. ClusterIP (Default)

Description:

Exposes the service internally to the cluster.
Pods can communicate with the service using a virtual IP address (ClusterIP) assigned by Kubernetes.
The service is not accessible from outside the cluster.

Use Case:

Internal communication between pods within the cluster (e.g., backend microservices communicating with each other).

Key Points:

Default service type.
Only accessible within the cluster using ClusterIP.

2. NodePort

Description:

Exposes the service on a static port on each node (the same port across all nodes).
Makes the service accessible from outside the cluster using <NodeIP>:<NodePort>.
The NodePort is a port in the range 30000-32767 (configurable in the Kubernetes API server).

Use Case:

Exposing applications for external access without using a load balancer.

Key Points:

Accessible via http://<NodeIP>:<NodePort>.
No built-in load balancing.

3. LoadBalancer

Description:

Exposes the service to the internet using a cloud provider’s load balancer.
Supported in cloud environments like AWS, GCP, and Azure.
Automatically provisions an external load balancer to distribute traffic to backend pods.

Use Case:

Exposing applications to the internet in a cloud environment with automatic load balancing.

Key Points:

Allocates an external IP address.
Provides load balancing capabilities across pods.
Typically used in cloud-based Kubernetes deployments.
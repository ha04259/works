# Below are prerequisites for to launch EKS cluster 
choco install curl -y
curl --version

# https://kubernetes.io/docs/tasks/tools/install-kubectl-windows/#install-nonstandard-package-tools
choco install kubernetes-cli
kubectl version

# https://docs.aws.amazon.com/eks/latest/userguide/eksctl.html
choco install -y eksctl 
eksctl version


# Create cluster using eksctl command (execute this in gitbash)
$ eksctl create cluster \
> --name MyCluster \
> --version 1.24 \
> --region us-west-2 \
> --nodegroup-name linux-nodes \
> --node-type t2.micro \
> --nodes 2

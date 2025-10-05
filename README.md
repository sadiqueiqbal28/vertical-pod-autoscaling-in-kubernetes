# Script to practise Vertical Pod Autscaling
**As vertical pod autoscaler does not come by default with kubernetes (k8s) installation we need to setup manually.**
**clone the GitHub repository for VPA**<br/>
[Repository](https://github.com/kubernetes/autoscaler.git).<br/>
`git clone https://github.com/kubernetes/autoscaler.git`.<br/>
**change directory**</br>
`cd autoscaler/vertical-pod-autoscaler`.</br>
`./hack/vpa-up.sh`.</br>
**upon successfull installation - Execute**<br/>
`kubectl get pods -n kube-system | grep vpa`.<br/>
![Screenshot of successful vpa setup](https://myoctocat.com/assets/images/base-octocat.svg)<br/>
**now clone this GitHub repository and change directory**<br/>
`git clone https://github.com/sadiqueiqbal28/vertical-pod-autoscaling-in-kubernetes.git`
`cd vertical-pod-autoscaling-in-kubernetes`<br/>
**make script executable**
`chmod +x script-vpa.sh`<br/>
**execute the script**<br/>
`./script-vpa.sh`<br/>
![Screenshot of running services](https://myoctocat.com/assets/images/base-octocat.svg)<br/>
**watch the metrics of running pod which is pushing the limit defined in deployment**
![Screenshot of metrics](https://myoctocat.com/assets/images/base-octocat.svg)<br/>
**after practicing make sure to clean the workspace so it should not occupy your system resources**<br/>
`kubectl delete ns prod`.<br/>
#### Thank You
This repo will create a sftp server, dns name for the VPCE endpoint.

To add Ingress IPs to security group, update deploy-sftp-vpce-securitygroup.yaml

To add sftp users, check repo coreservices-sftpusers


For first time setup, need to first comment out in deployspec
deploy-coreservices-sftp-sftpserver-resource
deploy-coreservices-sftp-route53

Once VPCEndpoint created, 
- update the VPCE IPs to deploy-sftp-sftpserver-resources.yaml
- update the VPCE DNS name to deploy-coreservices-sftp-route53.yaml

then uncomment the 2 deploys.


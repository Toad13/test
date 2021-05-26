FROM stakater/base-alpine:3.6

ARG TERRAFORM_VERSION=0.15.4
ARG TERRAFORM_PROVIDER_AWS_VERSION=0.1.4
ARG TERRAFORM_PROVIDER_TERRAFORM_VERSION=0.1.0
ARG TERRAFORM_PROVIDER_TEMPLATE_VERSION=0.1.1
ARG TERRAFORM_PROVIDER_TLS_VERSION=0.1.0

# Install Terraform and terraform provider aws & terraform plugins
RUN apk --update add make jq python py-pip openssh-client unzip git && \
    pip install awscli && \
    wget https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip && \
    unzip terraform_${TERRAFORM_VERSION}_linux_amd64.zip && \
    rm terraform_${TERRAFORM_VERSION}_linux_amd64.zip && \
    mv terraform /bin && \
    wget https://releases.hashicorp.com/terraform-provider-aws/${TERRAFORM_PROVIDER_AWS_VERSION}/terraform-provider-aws_${TERRAFORM_PROVIDER_AWS_VERSION}_linux_amd64.zip && \
    unzip terraform-provider-aws_${TERRAFORM_PROVIDER_AWS_VERSION}_linux_amd64.zip && \
    rm terraform-provider-aws_${TERRAFORM_PROVIDER_AWS_VERSION}_linux_amd64.zip && \
    mv terraform-provider-aws_v${TERRAFORM_PROVIDER_AWS_VERSION}_x4 /bin && \
    wget https://releases.hashicorp.com/terraform-provider-terraform/${TERRAFORM_PROVIDER_TERRAFORM_VERSION}/terraform-provider-terraform_${TERRAFORM_PROVIDER_TERRAFORM_VERSION}_linux_amd64.zip && \
    unzip terraform-provider-terraform_${TERRAFORM_PROVIDER_TERRAFORM_VERSION}_linux_amd64.zip && \
    rm terraform-provider-terraform_${TERRAFORM_PROVIDER_TERRAFORM_VERSION}_linux_amd64.zip && \
    mv terraform-provider-terraform_v${TERRAFORM_PROVIDER_TERRAFORM_VERSION}_x4 /bin && \
    wget https://releases.hashicorp.com/terraform-provider-template/${TERRAFORM_PROVIDER_TEMPLATE_VERSION}/terraform-provider-template_${TERRAFORM_PROVIDER_TEMPLATE_VERSION}_linux_amd64.zip && \
    unzip terraform-provider-template_${TERRAFORM_PROVIDER_TEMPLATE_VERSION}_linux_amd64.zip && \
    rm terraform-provider-template_${TERRAFORM_PROVIDER_TEMPLATE_VERSION}_linux_amd64.zip && \
    mv terraform-provider-template_v${TERRAFORM_PROVIDER_TEMPLATE_VERSION}_x4 /bin && \    
    wget https://releases.hashicorp.com/terraform-provider-tls/${TERRAFORM_PROVIDER_TLS_VERSION}/terraform-provider-tls_${TERRAFORM_PROVIDER_TLS_VERSION}_linux_amd64.zip && \
    unzip terraform-provider-tls_${TERRAFORM_PROVIDER_TLS_VERSION}_linux_amd64.zip && \
    rm terraform-provider-tls_${TERRAFORM_PROVIDER_TLS_VERSION}_linux_amd64.zip && \
    mv terraform-provider-tls_v${TERRAFORM_PROVIDER_TLS_VERSION}_x4 /bin && \    
    apk --purge -v del py-pip wget unzip && \
    rm -rf /var/cache/apk/*
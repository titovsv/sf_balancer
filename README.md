## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_yandex"></a> [yandex](#requirement\_yandex) | 0.61.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_yandex"></a> [yandex](#provider\_yandex) | 0.61.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_ya_balancer"></a> [ya\_balancer](#module\_ya\_balancer) | ./modules/balancer | n/a |
| <a name="module_ya_instance_1"></a> [ya\_instance\_1](#module\_ya\_instance\_1) | ./modules/instance | n/a |
| <a name="module_ya_instance_2"></a> [ya\_instance\_2](#module\_ya\_instance\_2) | ./modules/instance | n/a |
| <a name="module_ya_subnet_1"></a> [ya\_subnet\_1](#module\_ya\_subnet\_1) | ./modules/subnet | n/a |
| <a name="module_ya_subnet_2"></a> [ya\_subnet\_2](#module\_ya\_subnet\_2) | ./modules/subnet | n/a |

## Resources

| Name | Type |
|------|------|
| [yandex_vpc_network.my-network](https://registry.terraform.io/providers/yandex-cloud/yandex/0.61.0/docs/resources/vpc_network) | resource |

## Inputs

No inputs.

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_balancer_ip"></a> [balancer\_ip](#output\_balancer\_ip) | IP address balancer listeners |
| <a name="output_external_ip_address_vm_1"></a> [external\_ip\_address\_vm\_1](#output\_external\_ip\_address\_vm\_1) | External IP address vm 2 |
| <a name="output_external_ip_address_vm_2"></a> [external\_ip\_address\_vm\_2](#output\_external\_ip\_address\_vm\_2) | Internal IP address vm 2 |
| <a name="output_internal_ip_address_vm_1"></a> [internal\_ip\_address\_vm\_1](#output\_internal\_ip\_address\_vm\_1) | External IP address vm 1 |
| <a name="output_internal_ip_address_vm_2"></a> [internal\_ip\_address\_vm\_2](#output\_internal\_ip\_address\_vm\_2) | Internal IP address vm 1 |

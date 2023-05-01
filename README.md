## Terraform Cloud Agent ##

The Terraform Cloud Agent handles auxiliary workloads for Terraform Cloud. Agents connect to the Terraform Cloud API and process work items, allowing specific components such as Terraform plans and applies to run in external infrastructure, rather than on HashiCorp-hosted servers. This enables placing Terraform Cloud workloads in any network context desired.

Further information may be found on the Terraform Cloud Agents documentation page.

Detailed usage information may be obtained by pulling the container and running it with the "help" subcommand. Example:


    docker run eftechcombr/tfc-agent:latest help
1.Download Terraform:

        curl -O https://releases.hashicorp.com/terraform/0.12.13/terraform_0.12.13_linux_amd64.zip
        
2. Check where to unzip package

3. Find out executable path

        [root@localhost]# echo $PATH
        /sbin:/bin:/usr/sbin:/usr/bin
        unzip terraform_0.11.1_linux_amd64.zip -d /usr/bin/
        
4. Verify Installation

        [root@localhost]# terraform -v
        Terraform v0.11.1
        
5. Getting help

$ terraform -help
        Usage: terraform [-version] [-help] <command> [args]

        The available commands for execution are listed below.
        The most common, useful commands are shown first, followed by
        less common or more advanced commands. If you are just getting
        started with Terraform, stick with the common commands. For the
        other commands, please read the help and docs before usage.

        Common commands:
        apply Builds or changes infrastructure
        console Interactive console for Terraform interpolations
        destroy Destroy Terraform-managed infrastructure
        env Workspace management

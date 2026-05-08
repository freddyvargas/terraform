# Terraform Certification Scenario

This scenario demonstrates key Terraform concepts from the Certification 004. It uses the `azurerm` backend from the `backend-state-bootstrap` folder with the backend key: `exercises-questions-terraform-004portal.tfstate`

## Table of Contents

- [Question No. 2](#question-no-2)
- [Question No. 3](#question-no-3)
- [Question No. 4](#question-no-4)
- [Question No. 5](#question-no-5)
- [Question No. 6](#question-no-6)
- [Question No. 7](#question-no-7)
- [Question No. 8](#question-no-8)
- [Question No. 9](#question-no-9)
- [Question No. 10](#question-no-10)
- [Question No. 11](#question-no-11)
- [Question No. 12](#question-no-12)
- [Question No. 13](#question-no-13)
- [Question No. 14](#question-no-14)
- [Question No. 15](#question-no-15)
- [Question No. 16](#question-no-16)
- [Question No. 17](#question-no-17)
- [Question No. 18](#question-no-18)
- [Question No. 19](#question-no-19)
- [Question No. 20](#question-no-20)
- [Question No. 21](#question-no-21)
- [Question No. 22](#question-no-22)
- [Question No. 23](#question-no-23)
- [Question No. 24](#question-no-24)
- [Question No. 25](#question-no-25)
- [Question No. 26](#question-no-26)
- [Question No. 27](#question-no-27)
- [Question No. 28](#question-no-28)
- [Question No. 29](#question-no-29)
- [Question No. 30](#question-no-30)

## Question No. 2

**Question:** You want to create a string that combines a generated random_id and a variable and reuse that string several times in your configuration. What is the simplest correct way to implement this without repeating the random_id and variable?

**Options:**
- A) Use a module.
- B) Add an output value.
- C) Add a local value.
- D) Use a data source.

**Correct Answer:** C

**Explanation:** The simplest and most efficient way to assign a name to an expression for reusing it multiple times within the same module is by using local values (locals). Locals function as constants or temporary variables within the configuration, allowing you to combine values from different sources (such as a random_id resource and an input variable) in a single centralized expression. This improves readability and avoids code duplication, making maintenance easier if the logic of that text string changes in the future.

**Explanation:**

Option A is incorrect: Although modules allow the reuse of complete configurations, using them just to combine two simple values within the same file would result in unnecessary and complex over-engineering for the stated objective.

Option B is incorrect: An output value is used to expose information from a module to the outside (to the user or to other modules), not to perform internal calculations or string combinations meant to be reused within the same configuration block.

Option D is incorrect: A data source is used to query information from infrastructures external to Terraform or already existing resources. It is not a mechanism for performing text string manipulations or internal variable logic.

---

## Question No. 3

**Question:** Which task does terraform init not perform?

**Options:**
- A) Discovers all providers used in the configuration and downloads them.
- B) Validates that values are set for all required input variables.
- C) Connects to the configured backend.
- D) Discovers any remote modules and downloads them.

**Correct Answer:** B

**Explanation:** The terraform init command is used exclusively to initialize a working directory containing Terraform configuration files. Its main function is environment preparation, which includes downloading plugins (plugins) and configuring the backend. However, it does not perform validations on input variable values; this validation and verification process that all required variables have an assigned value occurs during the terraform plan or terraform apply stages.

**Explanation:**

Option A is incorrect: This is one of the main tasks of terraform init. The command scans the configuration, identifies the necessary providers (such as AWS, Azure, GCP) and downloads the corresponding binaries to the local .terraform directory.

Option C is incorrect: terraform init is the command responsible for initializing the backend configured in the terraform block. This includes establishing the connection and, if necessary, migrating existing state to the new backend.

Option D is incorrect: During initialization, Terraform searches for any remote modules referenced in the configuration and downloads the source code of those modules to the local directory so they can be used in the deployment.

---

## Question No. 4

**Question:** What functionality do providers offer in Terraform? (Pick the 3 correct responses below.)

**Options:**
- A) Group a collection of Terraform configuration files that map to a single state file.
- B) Provision resources for on-premises infrastructure services.
- C) Provision resources for public cloud infrastructure services.
- D) Interact with cloud provider APIs.
- E) Enforce security and compliance policies.

**Correct Answer:** B, C, D

**Explanation:** Providers are the foundation of Terraform's extensibility. Their main function is to serve as an abstraction layer that translates HCL code into calls to specific APIs (Option D). Thanks to this plugin architecture, Terraform can manage a vast variety of services, including both public clouds such as AWS, Google Cloud or Azure (Option C), as well as on-premises or local infrastructures such as VMware, OpenStack or Kubernetes (Option B).

**Explanation:**

Option A is incorrect: Grouping a collection of configuration files that map to a state file is the definition of a module (specifically the root module), not a provider.

Option E is incorrect: Although Terraform interacts with security services, the function of enforcing security and compliance policies is the responsibility of Policy as Code tools, such as Sentinel (in HCP Terraform/Enterprise) or OPA (Open Policy Agent), and not of the infrastructure providers themselves.

---

## Question No. 5

**Question:** Exhibit:
```
module "network" {
  source = "terraform-google-modules/network/google"
}
```
What version of the source module does Terraform allow with the module block shown in the exhibit?

**Options:**
- A) Any version of the module > 11.0.
- B) Any version of the module >= 11.0.
- C) Any version of the module >= 11.0 and < 12.0.
- D) Any version of the module >= 11.0.0 and < 11.1.0.

**Correct Answer:** The latest available version (none of the provided options are strictly correct for the exhibit as shown).

**Explanation:** According to the official Terraform documentation, when using a module from a registry (such as the Terraform Registry) and omitting the version argument, Terraform will automatically download the latest available version at the time terraform init is run. In the exhibit shown, the module block only contains the source argument and lacks a version constraint, so it is not limited to a specific range as mentioned in the options (unless the latest version happens to coincide with one of them).

**Explanation:**

Option A is incorrect: This answer would correspond to a configuration that explicitly includes version = "> 11.0". Without this line in the code, Terraform does not apply this specific constraint.

Option B is incorrect: This answer would require the configuration version = ">= 11.0". Although often associated with "any version" in practice exams if 11.0 is assumed as the base, technically Terraform without constraints seeks the absolute latest version, not just those above 11.0.

Option C is incorrect: This range represents the behavior of the pessimistic operator ~> 11.0. If the exhibit had version = "~> 11.0", Terraform would allow incremental updates within major version 11 (minor updates), but not version 12.0 or higher.

Option D is incorrect: This range represents the behavior of the ~> 11.0.0 operator. It would only allow patches within version 11.0 (patch updates), blocking any changes in the minor version (such as 11.1.0).

Note: In many certification exams, this question usually includes an additional line like version = "11.0" or similar in the exhibit. The standard behavior is to download the latest available version.

---

## Question No. 6

**Question:** What's the proper syntax for the plan command?

**Options:**
- A) terraform apply -var-file=tfplan
- B) terraform plan -target=tfplan
- C) terraform plan -generate-config-out=tfplan
- D) terraform plan -out=tfplan

**Correct Answer:** D

**Explanation:** The correct syntax for saving an execution plan to a file is using the -out=path option with the terraform plan command. According to the official documentation, this allows saving the generated plan deterministically so that it can later be executed exactly the same way using terraform apply <PATH>, ensuring no changes occur between the planning and application phases.

**Explanation:**

Option A is incorrect: The terraform apply command is used to apply changes, and the -var-file flag is used to load variable values from an external file (usually .tfvars), not to manage plan files.

Option B is incorrect: The -target flag is used to limit Terraform's operation to a specific resource or module and its dependencies, not to define an output file for the plan.

Option C is incorrect: Although -generate-config-out is a valid option introduced in recent versions for automatic configuration (HCL) generation during import processes, it is not the standard syntax or general purpose for saving an infrastructure execution plan.

---

## Question No. 7

**Question:** Exhibit:

```
Error: Saved plan is stale

The given plan file can no longer be applied because the state was changed by another operation after the plan was created.
```

You have a saved execution plan containing desired changes for infrastructure managed by Terraform. After running terraform apply my.tfplan, you receive the error shown. How can you apply the desired changes? (Pick the 2 correct responses below.)

**Options:**
- A) Generate a new execution plan file with terraform plan, and apply the new plan.
- B) Run terraform apply without the saved execution plan.
- C) Force the apply command by adding the flag -lock=false.
- D) Refresh the current state data using the -refresh-only flag.
- E) Update the current plan file using the terraform state push command.

**Correct Answer:** A, B

**Explanation:** The "Saved plan is stale" error occurs because Terraform detects that the state file (terraform.tfstate) has been modified (either by another execution, a manual change, or a team process) after the plan file (.tfplan) was generated. Terraform uses a serial number in the state to ensure that changes are not applied based on outdated information. The technical solution is to discard the old plan and generate a new one based on the current infrastructure state, which is achieved by generating a new plan file (Option A) or running the apply command directly so that Terraform performs the refresh and planning cycle at the moment (Option B).

**Explanation:**

Option C is incorrect: The -lock=false flag is used to skip state locking when it is suspected that a previous lock was not released correctly, but it does not solve the version discrepancy between a saved plan and the current state.

Option D is incorrect: Although -refresh-only updates the state with the reality of the infrastructure, it does not "fix" an already created plan file; the original plan will remain invalid because it was calculated on a state version that is no longer the latest.

Option E is incorrect: The terraform state push command is used for manual state management (such as migrations or disaster recovery), it has no functionality to update or modify binary execution plan files.

---

## Question No. 8

**Question:** Which are benefits of migrating from a local state backend to a remote backend? (Pick the 2 correct responses below.)

**Options:**
- A) Guarantees that configuration drift cannot occur for the managed infrastructure.
- B) Eliminates the need to manage credentials when deploying infrastructure to multiple cloud providers.
- C) Faster plan and apply execution because the state is cached locally on the cloud provider.
- D) State locking that allows multiple team members to safely work on the same infrastructure.
- E) The ability to enable server-side encryption at rest.

**Correct Answer:** D, E

**Explanation:** Migrating to a remote backend offers critical advantages for security and collaborative work. First, state locking (Option D) is essential in team environments, as it prevents two people from running Terraform at the same time, which could corrupt the state file. Second, remote backends (such as AWS S3, Azure Blob Storage, or HCP Terraform) allow the use of encryption at rest (Option E), protecting sensitive information that Terraform usually stores in plain text within the state file, such as passwords or access keys.

**Explanation:**

Option A is incorrect: The state file only records the last known configuration; it cannot "guarantee" that drift (deviation) cannot occur, as manual changes in the cloud console can happen regardless of the backend used.

Option B is incorrect: Although a remote backend manages the state, the user still needs to configure and manage provider credentials (such as AWS or Azure) to be able to create or modify actual resources on those platforms.

Option C is incorrect: Generally, a remote backend is slower than a local one, as it requires network calls to download and upload the state file in each operation, unlike instant access to a file on local disk.

---

## Question No. 9

**Question:** Which command generates DOT (Document Template) formatted data to visualize Terraform dependencies?

**Options:**
- A) terraform graph
- B) terraform show
- C) terraform refresh
- D) terraform output

**Correct Answer:** A

**Explanation:** The terraform graph command is used to generate a visual representation of the Terraform configuration or an execution plan. According to the official documentation, this command produces output in the DOT graph description language, which can be used by tools like Graphviz to generate diagrams. These diagrams are essential for understanding dependencies between resources and the order in which Terraform plans to create or modify them.

**Explanation:**

Option B is incorrect: The terraform show command is used to display a human-readable version of a state file or execution plan. Although it provides detailed information, it does not generate DOT-formatted data or dependency diagrams.

Option C is incorrect: terraform refresh aims to update the local state file with the actual infrastructure found in the cloud. It has no visualization or graph generation functions.

Option D is incorrect: The terraform output command is specifically used to extract and display the values of output variables that have been defined in the configuration, allowing querying specific data from the state without needing to read the entire file.

---

## Question No. 10

**Question:** Which features do HCP Terraform workspaces provide that are not available in Terraform Community Edition? (Pick the 3 correct responses below.)

**Options:**
- A) State versions and run history.
- B) Automatic detection of common security issues.
- C) Store Terraform and environment variables in variable sets.
- D) Remote execution of Terraform operations.
- E) Store your configuration in a Version Control System (VCS).
- F) Support for multiple cloud providers.

**Correct Answer:** A, C, D

**Explanation:** HCP Terraform workspaces include platform capabilities that go beyond Terraform Community Edition. They keep a complete run history and state versioning (Option A), allow centralized management and reuse of Terraform and environment variables through variable sets (Option C), and provide remote execution of plans/applies in a controlled environment (Option D). These are core collaboration and governance features of HCP Terraform workspaces.

**Explanation:**

Option B is incorrect: While HCP Terraform can integrate policy and security workflows, "automatic detection of common security issues" is not a core workspace feature in the same direct way as state history, variable sets, or remote execution.

Option E is incorrect: Storing configuration in a VCS is a general development practice and is also available when using Terraform Community Edition; it is not exclusive to HCP Terraform workspaces.

Option F is incorrect: Terraform itself (including Community Edition) is multi-cloud by design through providers, so this capability is not unique to HCP Terraform workspaces.

---

## Question No. 11

**Question:** What kind of configuration block will manage an infrastructure object with settings specified within the block?

**Options:**
- A) resource
- B) provider
- C) data
- D) locals

**Correct Answer:** A

**Explanation:** The `resource` block is the primary configuration block in Terraform used to define infrastructure objects that will be created, updated, or destroyed. It specifies the resource type, name, and configuration arguments that define how the infrastructure should be managed. The resource block is where you declare the actual cloud resources (like compute instances, networks, databases, etc.) that Terraform will provision and manage throughout their lifecycle.

**Explanation:**

Option B is incorrect: The `provider` block is used to configure the connection and authentication settings for a cloud provider (like AWS, Azure, or GCP), not to manage individual infrastructure objects.

Option C is incorrect: The `data` block is a data source that queries information about existing infrastructure or external data sources; it does not create or manage new infrastructure objects.

Option D is incorrect: The `locals` block defines local values and expressions that can be reused within the configuration for convenience and readability, but it does not manage or create infrastructure objects.

---

## Question No. 12

**Question:** Which is a benefit of using infrastructure as code (IaC) tools compared to native platform APIs?

**Options:**
- A) IaC allows you to write each API call required to reach the desired configuration.
- B) IaC calls native command line tools, which are more efficient than API calls.
- C) IaC configurations define the current state of infrastructure, which allows you to identify the correct API calls to make changes.
- D) IaC configurations define the end state of infrastructure without having to write API calls to reach the desired configuration.

**Correct Answer:** D

**Explanation:** The primary benefit of using IaC tools like Terraform is that you declare the desired end state of your infrastructure in code, and the tool automatically handles all the necessary API calls and orchestration steps to reach that state. You don't need to manually script each individual API call; instead, you describe what you want, and Terraform figures out how to get there. This declarative approach is more maintainable, repeatable, and less error-prone than manually writing API calls.

**Explanation:**

Option A is incorrect: IaC actually abstracts away the need to write each individual API call. That is the opposite of what IaC provides—it handles the API calls for you based on your declarations.

Option B is incorrect: IaC doesn't inherently call native command line tools or make them more efficient than API calls. IaC tools typically use APIs directly for orchestration.

Option C is incorrect: IaC configurations define the desired end state of infrastructure (declarative), not the current state. While IaC can query the current state to identify drift, the main concept is declaring the target state, not analyzing current state to determine API calls.

---

## Question No. 13

**Question Type:** Single Choice

**Question:** Exhibit:

Root module configuration:
```
output vnet_id {
  value = module.my_network.vnet_id
}
```

Error:
```
Error: Reference to undeclared output value

on main.tf line 12, in output vnet_id:
12: value = module.my_network.vnet_id
```

You are using a networking module in your Terraform configuration with the name `my_network`. Your root module includes the configuration shown. When you run `terraform validate`, you get the error shown. Which option would successfully retrieve this value from your networking module?

**Options:**
- A) Change the referenced value to `module.my_network.outputs.vnet_id`.
- B) Define the attribute `vnet_id` as a variable in the networking module.
- C) Change the referenced value to `my_network.outputs.vnet_id`.
- D) Define the attribute `vnet_id` as an output in the networking module.

**Correct Answer:** D

**Explanation:** The error "Reference to undeclared output value" occurs because the networking module `my_network` does not have an output named `vnet_id` declared. In Terraform, you can only reference module outputs that have been explicitly defined using the `output` block within that module. The syntax `module.my_network.vnet_id` is correct for accessing module outputs, but the module must first declare `vnet_id` as an output. Once you add an `output vnet_id` block to the networking module, the reference in the root module will work correctly.

**Explanation:**

Option A is incorrect: The correct syntax for accessing module outputs is `module.<module_name>.<output_name>`, not `module.<module_name>.outputs.<output_name>`. The `.outputs` syntax is not valid in Terraform.

Option B is incorrect: Defining `vnet_id` as a variable in the networking module does not help retrieve it from the root module. Variables are inputs to a module, not outputs. To expose a value from a module, it must be declared as an output.

Option C is incorrect: The correct way to reference a module output is using the `module.` prefix. Without the `module.` prefix, Terraform would try to find a local value or resource named `my_network`, which does not exist.

---

## Question No. 14

**Question Type:** Single Choice

**Question:** You can define multiple backend blocks in your Terraform configuration to store your state in multiple locations.

**Options:**
- A) True
- B) False

**Correct Answer:** B

**Explanation:** In Terraform, you can only define one backend block per configuration. The backend block specifies where and how Terraform state is stored. If you attempt to define multiple backend blocks in the same configuration, Terraform will return an error. While you can switch between different backend configurations using the `-reconfigure` flag during `terraform init`, only one backend can be active at a time in a given working directory. If you need to manage infrastructure across multiple locations or environments, the recommended approach is to use separate Terraform workspaces or separate configuration directories for each backend target.

**Explanation:**

Option A is incorrect: Terraform only allows a single backend block per configuration. Attempting to define multiple backends will result in a configuration error during initialization.

---

## Question No. 15

**Question Type:** Single Choice

**Question:** You need to destroy all of the resources in your Terraform workspace, except for `aws_instance.ubuntu[1]`, which you want to keep. How can you tell Terraform to stop managing that specific resource without destroying it?

**Options:**
- A) Remove the resource block from your configuration.
- B) Change the value of the count argument on the resource.
- C) Run `terraform state rm aws_instance.ubuntu[1]`.
- D) Use a moved block.

**Correct Answer:** C

**Explanation:** The `terraform state rm` command removes a resource from the Terraform state file without destroying the actual infrastructure resource. This means that Terraform will no longer track or manage that specific resource. When you then run `terraform destroy`, the resources specified in your configuration will be destroyed, but the resource removed from state will be left untouched in your cloud provider. This is the cleanest way to keep a resource alive while removing it from Terraform management, as it doesn't require modifying your configuration.

**Explanation:**

Option A is incorrect: Simply removing the resource block from configuration and running `terraform destroy` or `terraform apply` would destroy the resource, which is the opposite of what you want.

Option B is incorrect: Changing the count argument doesn't stop Terraform from destroying the resource; it would only change which instances are managed by the new count value.

Option D is incorrect: The `moved` block is used to refactor and reorganize resources within state during configuration changes, not to preserve a resource from destruction.

---

## Question No. 16

**Question Type:** Single Choice

**Question:** You've updated your Terraform configuration, and you need to preview the proposed changes to your infrastructure. Which command should you run?

**Options:**
- A) terraform show
- B) terraform plan
- C) terraform validate
- D) terraform get

**Correct Answer:** B

**Explanation:** The `terraform plan` command analyzes your updated configuration and displays a detailed preview of the changes that Terraform would make to your infrastructure. This includes resources that will be created, modified, or destroyed, along with the specific property changes. Running `terraform plan` before `terraform apply` is a best practice that allows you to review and verify all proposed changes before they are actually applied to your infrastructure.

**Explanation:**

Option A is incorrect: The `terraform show` command displays the current state of your infrastructure or a saved plan file, but it does not generate a preview of proposed changes based on your updated configuration.

Option C is incorrect: The `terraform validate` command only checks the syntax and structure of your Terraform configuration for errors, but it does not generate a preview of infrastructure changes.

Option D is incorrect: The `terraform get` command is used to download and update module dependencies from remote sources; it does not generate a preview of proposed changes to infrastructure.

---

## Question No. 17

**Question Type:** Single Choice

**Question:** Exhibit:

```
data vsphere_datacenter dc {}

resource vsphere_folder parent {
  path = Production
  type = vm

  datacenter_id = ________
}
```

You want to pass the id of the `vsphere_datacenter` data source to the `datacenter_id` argument of the `vsphere_folder` resource. Which reference would you use?

**Options:**
- A) `data.vsphere_datacenter.dc.id`
- B) `vsphere_datacenter.dc.id`
- C) `data.vsphere_datacenter.dc`
- D) `data.de.id`

**Correct Answer:** A

**Explanation:** In Terraform, the correct way to reference a data source attribute is `data.<data_source_type>.<name>.<attribute>`. Here, the data source type is `vsphere_datacenter`, the local name is `dc`, and the attribute needed is `id`, so the correct expression is `data.vsphere_datacenter.dc.id`.

**Explanation:**

Option B is incorrect: It is missing the required `data.` prefix that identifies this object as a data source.

Option C is incorrect: This references the full data source object and not the `id` attribute required by `datacenter_id`.

Option D is incorrect: `de` is not the declared name of any data source in the exhibit, so this reference is invalid.

---

## Question No. 18

**Question Type:** Single Choice

**Question:** You can configure multiple cloud blocks in your Terraform configuration to connect your workspace to both HCP Terraform and your Terraform Enterprise instance.

**Options:**
- A) True
- B) False

**Correct Answer:** B

**Explanation:** Terraform allows only one `cloud` block in a given configuration. The `cloud` block configures remote operations for a single HCP Terraform or Terraform Enterprise target. You cannot define multiple `cloud` blocks to connect one configuration to multiple remote Terraform platforms at the same time.

**Explanation:**

Option A is incorrect: Multiple `cloud` blocks in the same configuration are not supported.

---

## Question No. 19

**Question Type:** Single Choice

**Question:** A Terraform local value can reference other Terraform local values.

**Options:**
- A) True
- B) False

**Correct Answer:** A

**Explanation:** In Terraform, local values can reference other local values in the same module, which helps compose reusable expressions and avoid duplication. The only restriction is to avoid circular dependencies.

**Explanation:**

Option B is incorrect: This statement is false because Terraform does allow local-to-local references.

---

## Question No. 20

**Question Type:** Single Choice

**Question:** Exhibit:

```
resource kubernetes_namespace example {
  name = test
}
```

A resource block is shown in the exhibit. How would you reference the name attribute of this resource in HCL?

**Options:**
- A) kubernetes_namespace.example,name
- B) kubernetes_namespace.test.name
- C) data.kubernetes_namespace.name
- D) resource.kubernetes_namespace.example.name

**Correct Answer:** A

**Explanation:** The canonical Terraform reference format for a managed resource attribute is `<resource_type>.<resource_name>.<attribute>`. For this resource, that is `kubernetes_namespace.example.name`. Option A is the intended choice because it references the declared resource type and name.

**Explanation:**

Option B is incorrect: `test` is the value assigned to the `name` argument, not the Terraform resource label.

Option C is incorrect: This uses the `data` prefix for data sources, but the exhibit shows a managed resource block, not a data source.

Option D is incorrect: Terraform resource references do not use a leading `resource.` prefix.

---

## Question No. 21

**Question Type:** Single Choice

**Question:** Exhibit:

```
resource azurerm_linux_web_app app {
  name                = example-app
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  service_plan_id     = azurerm_service_plan.plan.id
  identity {
    type         = UserAssigned
    identity_ids = [azurerm_user_assigned_identity.app.id]
  }
}

resource azurerm_role_assignment kv_access {
  scope                = azurerm_key_vault.kv.id
  role_definition_name = Key Vault Secrets User
  principal_id         = azurerm_user_assigned_identity.app.principal_id
}
```

Two resource blocks are shown: `azurerm_linux_web_app` and `azurerm_role_assignment`. When provisioned, the web app will use the role assignment during creation, so the role assignment must be created first. How do you ensure the `azurerm_role_assignment` resource is created first?

**Options:**
- A) Add a `depends_on` argument to the `azurerm_linux_web_app`.
- B) Add a `create_before_destroy` argument to the `azurerm_role_assignment`.
- C) Change the order of the `azurerm_linux_web_app` and `azurerm_role_assignment` blocks.
- D) Add a `count` argument to both resources.

**Correct Answer:** A

**Explanation:** To guarantee creation order in Terraform when there is a required dependency, use `depends_on`. By adding `depends_on = [azurerm_role_assignment.kv_access]` to the web app resource, Terraform will explicitly create the role assignment first, then create the web app.

**Explanation:**

Option B is incorrect: `create_before_destroy` controls replacement behavior during updates, not initial dependency ordering between two different resources.

Option C is incorrect: The order of blocks in Terraform files does not control resource creation order.

Option D is incorrect: `count` controls how many instances are created, not dependency order.

---

## Question No. 22

**Question Type:** Single Choice

**Question:** Your team is collaborating on infrastructure using Terraform and wants to format code to follow Terraform language style conventions. How can you update your code to meet these requirements?

**Options:**
- A) Run `terraform fmt` to update your Terraform configurations.
- B) Replace all tabs with spaces within your Terraform configuration files.
- C) Run `terraform validate` prior to executing `terraform plan` or `terraform apply`.
- D) Terraform automatically formats configuration on `terraform apply`.

**Correct Answer:** A

**Explanation:** `terraform fmt` is the built-in formatter for Terraform configuration files. It rewrites files to follow canonical Terraform style conventions, ensuring consistent formatting across the team.

**Explanation:**

Option B is incorrect: Manual whitespace replacement does not guarantee full Terraform style compliance.

Option C is incorrect: `terraform validate` checks syntax and validity, but it does not format files.

Option D is incorrect: `terraform apply` does not auto-format configuration files.

---

## Question No. 23

**Question Type:** Single Choice

**Question:** When using multiple configurations of the same Terraform provider, what meta-argument must you include in any non-default provider configurations?

**Options:**
- A) depends_on
- B) alias
- C) name
- D) id

**Correct Answer:** B

**Explanation:** In Terraform, additional configurations of the same provider must use the `alias` meta-argument. This lets you define and reference multiple distinct provider instances.

**Explanation:**

Option A is incorrect: `depends_on` is used for dependency relationships, not to distinguish provider configurations.

Option C is incorrect: `name` is not the meta-argument used for non-default provider instances.

Option D is incorrect: `id` is not a provider configuration meta-argument.

---

## Question No. 24

**Question Type:** Single Choice

**Question:** When declaring a variable, setting the `sensitive` argument to true will prevent the value from being stored in the state file.

**Options:**
- A) True
- B) False

**Correct Answer:** B

**Explanation:** Marking a variable as `sensitive = true` only affects how Terraform displays values in CLI output and logs. It does not prevent the value from being stored in state. Sensitive data can still be present in the state file, so state protection (encryption, access control, secure backend) is still required.

**Explanation:**

Option A is incorrect: Sensitive values are still stored in state; they are just redacted in many outputs.

---

## Question No. 25

**Question Type:** Single Choice

**Question:** The HCP Terraform private registry keeps the module configurations confidential within your organization.

**Options:**
- A) True
- B) False

**Correct Answer:** A

**Explanation:** The HCP Terraform private registry is designed to host and share Terraform modules internally within an organization. Unlike the public Terraform Registry, modules stored in the private registry are only accessible to members of that organization, keeping configurations confidential and preventing external exposure.

**Explanation:**

Option B is incorrect: The private registry explicitly restricts access to within the organization, so modules are not publicly available.

---

## Question No. 26

**Question Type:** Single Choice

**Question:** Which of the following is not a way to trigger terraform destroy?

**Options:**
- A) terraform destroy
- B) All of these will trigger terraform destroy
- C) terraform plan -destroy
- D) terraform destroy -auto-approve

**Correct Answer:** C

**Explanation:** `terraform plan -destroy` generates a destroy execution plan but does **not** execute the destruction. It only previews what would be destroyed. To actually destroy resources, you need `terraform destroy` (with or without `-auto-approve`) or `terraform apply` with a saved destroy plan.

**Explanation:**

Option A is incorrect: `terraform destroy` is the standard command to destroy all managed resources.

Option B is incorrect: Not all options trigger an actual destroy; option C only produces a plan.

Option D is incorrect: `terraform destroy -auto-approve` is a valid destroy command that skips the confirmation prompt.

---

## Question No. 27

**Question Type:** Single Choice

**Question:** The terraform output command shows outputs from child modules.

**Options:**
- A) True
- B) False

**Correct Answer:** B

**Explanation:** The `terraform output` command only shows the output values defined in the **root** module. Child module outputs are not directly exposed unless the root module explicitly re-exports them using its own output blocks that reference the child module outputs.

**Explanation:**

Option A is incorrect: Child module outputs are private to the root module unless explicitly surfaced via root-level output blocks.

---

## Question No. 28

**Question Type:** Single Choice

**Question:** You have a simple Terraform configuration containing one VM (virtual machine) in a cloud provider. You run `terraform apply` and the VM is created successfully. What will happen if you run `terraform apply` again immediately afterwards without changing any Terraform code?

**Options:**
- A) Terraform will terminate and recreate the VM.
- B) Terraform will create another duplicate VM.
- C) Terraform will apply the VM to the state file.
- D) Terraform will take no action.

**Correct Answer:** D

**Explanation:** Terraform is declarative and idempotent. After the first `terraform apply`, the state file records the existing VM. A subsequent `terraform apply` with no code changes compares the desired state (configuration) to the current state (state file + real infrastructure), finds no differences, and takes no action.

**Explanation:**

Option A is incorrect: Terraform does not recreate resources unnecessarily; it only replaces them when configuration changes require it.

Option B is incorrect: Terraform manages resources declared in configuration, not arbitrary duplicates.

Option C is incorrect: The VM is already represented in the state file from the first apply; no update is needed.

---

## Question No. 29

**Question Type:** Single Choice

**Question:** You are creating a reusable Terraform configuration and want to include an optional `billing_dept` tag so your Finance team can track team-specific spending on resources. Which of the following `billing_dept` variable declarations will achieve this?

**Options:**
- A) `variable billing_dept { type = default}`
- B) `variable billing_dept { default =}`
- C) `variable billing_dept { type = optional(string)}`
- D) `variable billing_dept { optional = true}`

**Correct Answer:** B

**Explanation:** To make a variable optional in Terraform, provide a `default` value. When a variable has a `default`, callers are not required to supply it. An empty default (`default = ""`) or a null default (`default = null`) are common patterns for optional string tags.

**Explanation:**

Option A is incorrect: `type = default` is not valid HCL syntax; `default` is a separate argument, not a type.

Option C is incorrect: `optional()` is a type modifier used inside **object** type constraints to mark specific object attributes as optional, not for declaring top-level variables as optional.

Option D is incorrect: `optional = true` is not a recognized argument for variable declarations.

---

## Question No. 30

**Question Type:** Single Choice

**Question:** Which of these workflows is only enabled by the use of Infrastructure as Code?

**Options:**
- A) Automatic scaling of resources based on application load.
- B) Role-based access control of cloud resources.
- C) Cost optimization of infrastructure deployment.
- D) Reviewing the proposed changes for potential security issues.

**Correct Answer:** D

**Explanation:** IaC enables code review workflows, which allow teams to inspect proposed infrastructure changes (via pull requests, for example) before they are applied. This makes it possible to review changes for security issues, compliance, and correctness as part of a standard development pipeline. The other options are capabilities provided by cloud platforms or third-party tools independently of IaC.

**Explanation:**

Option A is incorrect: Autoscaling is a cloud platform feature (e.g., Auto Scaling Groups, VMSS) that operates at runtime, independent of whether IaC is used.

Option B is incorrect: Role-based access control (RBAC) is a cloud provider and identity management feature available without IaC.

Option C is incorrect: Cost optimization can be achieved through cloud-native tools, billing dashboards, and policies, all without IaC.

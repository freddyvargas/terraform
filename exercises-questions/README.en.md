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
- [Question No. 31](#question-no-31)
- [Question No. 32](#question-no-32)
- [Question No. 33](#question-no-33)
- [Question No. 34](#question-no-34)
- [Question No. 35](#question-no-35)
- [Question No. 36](#question-no-36)
- [Question No. 37](#question-no-37)
- [Question No. 38](#question-no-38)
- [Question No. 39](#question-no-39)
- [Question No. 40](#question-no-40)
- [Question No. 41](#question-no-41)
- [Question No. 42](#question-no-42)
- [Question No. 43](#question-no-43)
- [Question No. 44](#question-no-44)
- [Question No. 45](#question-no-45)
- [Question No. 46](#question-no-46)
- [Question No. 47](#question-no-47)
- [Question No. 48](#question-no-48)
- [Question No. 49](#question-no-49)
- [Question No. 50](#question-no-50)
- [Question No. 51](#question-no-51)
- [Question No. 52](#question-no-52)
- [Question No. 53](#question-no-53)
- [Question No. 54](#question-no-54)
- [Question No. 55](#question-no-55)
- [Question No. 56](#question-no-56)
- [Question No. 57](#question-no-57)
- [Question No. 58](#question-no-58)
- [Question No. 59](#question-no-59)
- [Question No. 60](#question-no-60)
- [Question No. 61](#question-no-61)
- [Question No. 62](#question-no-62)
- [Question No. 63](#question-no-63)
- [Question No. 64](#question-no-64)
- [Question No. 65](#question-no-65)
- [Question No. 66](#question-no-66)
- [Question No. 67](#question-no-67)
- [Question No. 68](#question-no-68)
- [Question No. 69](#question-no-69)
- [Question No. 70](#question-no-70)
- [Question No. 71](#question-no-71)
- [Question No. 72](#question-no-72)
- [Question No. 73](#question-no-73)
- [Question No. 74](#question-no-74)
- [Question No. 75](#question-no-75)
- [Question No. 76](#question-no-76)
- [Question No. 77](#question-no-77)
- [Question No. 78](#question-no-78)
- [Question No. 79](#question-no-79)
- [Question No. 80](#question-no-80)

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

---

## Question No. 31

**Question Type:** Single Choice

**Question:** Exhibit:

```
resource 'aws_instance' 'example' {
  ami           = 'ami-0a123456789abcdef'
  instance_type = 't3.micro'
}
```

You are updating a child module with the resource block shown in the exhibit. The `public_ip` attribute of the resource needs to be accessible to the parent module. How do you meet this requirement?

**Options:**
- A) Create an output in the child module.
- B) Add a data source to the parent module.
- C) Add an import block to the parent module.
- D) Create a local value in the child module.

**Correct Answer:** A

**Explanation:** To make values from a child module available to the parent module, you must declare an `output` block in the child module. The parent module can then reference `module.<child_name>.<output_name>`. Exposing `public_ip` this way is the standard Terraform module interface pattern.

**Explanation:**

Option B is incorrect: A parent-level data source does not expose attributes from a resource defined inside the child module interface.

Option C is incorrect: Import blocks are used for bringing existing infrastructure into state, not for exposing child module values.

Option D is incorrect: Local values are only internal to the module and are not accessible from the parent module.

---

## Question No. 32

**Question Type:** Single Choice

**Question:** You corrected a typo in a resource name, changing it from `aws_s3_bucket.photoes` to `aws_s3_bucket.photos`. You want to update the Terraform state so that the existing resource is recognized under the new name, without destroying and recreating it. Which configuration should you use?

**Options:**
- A) Remove the old resource from your configuration and re-import it.
- B) Run `terraform apply -refresh-only`.
- C) Do nothing --- Terraform will automatically update the state.
- D) Add a moved block to your configuration.

**Correct Answer:** D

**Explanation:** A `moved` block tells Terraform that an object tracked at one address has been renamed to another address. This updates state mapping safely without destroying and recreating the infrastructure resource.

**Explanation:**

Option A is incorrect: Re-importing is unnecessary and more error-prone for a simple in-configuration rename.

Option B is incorrect: `-refresh-only` updates state with real-world values but does not remap resource addresses.

Option C is incorrect: Terraform does not automatically infer arbitrary address renames without explicit guidance.

---

## Question No. 33

**Question Type:** Single Choice

**Question:** Which argument can you set on a module block to prevent Terraform from updating the module's configuration during an init or get operation?

**Options:**
- A) version
- B) lifecycle
- C) count
- D) source

**Correct Answer:** A

**Explanation:** Setting the `version` argument (typically to an exact version) constrains which module release Terraform can use, preventing unintended module updates during `terraform init` or `terraform get`.

**Explanation:**

Option B is incorrect: `lifecycle` is not supported for module blocks.

Option C is incorrect: `count` controls module instance quantity, not module version updates.

Option D is incorrect: `source` identifies where the module comes from but does not, by itself, pin a specific module version.

---

## Question No. 34

**Question Type:** Single Choice

**Question:** Why would you use the `-replace` flag for `terraform apply`?

**Options:**
- A) You want to force Terraform to destroy a resource on the next apply.
- B) You want Terraform to ignore a resource on the next apply.
- C) You want to force Terraform to destroy and recreate a resource on the next apply.
- D) You want Terraform to destroy all the infrastructure in your workspace.

**Correct Answer:** C

**Explanation:** The `-replace` flag marks a specific resource instance for replacement, which means Terraform will destroy it and then recreate it during apply.

**Explanation:**

Option A is incorrect: `-replace` does not mean destroy-only; it means replace (destroy + create).

Option B is incorrect: Ignoring resource changes is handled through lifecycle or configuration changes, not `-replace`.

Option D is incorrect: Destroying all infrastructure is done with `terraform destroy`.

---

## Question No. 35

**Question Type:** Single Choice

**Question:** Your Terraform configuration declares a variable. You want to enforce that its value meets your specific requirements, and you want to block the Terraform operation if it does not. What should you add to your configuration?

**Options:**
- A) Add a top-level check block.
- B) Add a validation block to the variable block.
- C) Add a top-level validation block.
- D) Add a check block to the variable block.

**Correct Answer:** B

**Explanation:** Use a `validation` block inside the `variable` block to enforce input constraints. If the condition fails, Terraform raises an error and stops the operation.

**Explanation:**

Option A is incorrect: Top-level `check` blocks are not the standard mechanism for validating variable inputs at declaration time.

Option C is incorrect: There is no top-level `validation` block in Terraform syntax.

Option D is incorrect: `check` is not nested inside variable blocks for variable input validation.

---

## Question No. 36

**Question Type:** Single Choice

**Question:** Exhibit:

```
variable 'sizes' {
  type        = list(string)
  description = 'Valid server sizes'
  default     = ['small', 'medium', 'large']
}
```

A variable declaration is shown in the exhibit. Which is the correct way to get the value of `medium` from this variable?

**Options:**
- A) `var.sizes[0]`
- B) `var.sizes[1]`
- C) `var.sizes[2]`
- D) `var.sizes[3]`

**Correct Answer:** B

**Explanation:** Terraform lists are zero-indexed. For `['small', 'medium', 'large']`, index 0 is `small`, index 1 is `medium`, and index 2 is `large`.

**Explanation:**

Option A is incorrect: Index 0 returns `small`.

Option C is incorrect: Index 2 returns `large`.

Option D is incorrect: Index 3 is out of range for this 3-item list.

---

## Question No. 37

**Question Type:** Multiple Choice

**Question:** Which two steps are required to provision new infrastructure in the Terraform workflow? (Pick the 2 correct responses below.)

**Options:**
- A) Import
- B) Apply
- C) Validate
- D) Plan
- E) Init

**Correct Answer:** B, E

**Explanation:** To provision new infrastructure with Terraform, you must initialize the working directory (`terraform init`) and then apply the configuration (`terraform apply`). `plan` is recommended but not strictly required to perform provisioning.

**Explanation:**

Option A is incorrect: `import` is for bringing existing resources into state, not required for new provisioning.

Option C is incorrect: `validate` is useful for syntax checks but not mandatory for provisioning.

Option D is incorrect: `plan` is a best practice step, but apply can run without explicitly running plan first.

---

## Question No. 38

**Question Type:** Single Choice

**Question:** Exhibit:

```
data 'aws_ami' 'web' {
  most_recent = true
  owners      = ['self']
  tags = {
    Name = 'web-server'
  }
}
```

A data source is shown in the exhibit. How do you reference the `id` attribute of this data source?

**Options:**
- A) `aws_ami.web.id`
- B) `web.id`
- C) `data.aws_ami.web.id`
- D) `data.web.id`

**Correct Answer:** C

**Explanation:** Data source references follow the pattern `data.<type>.<name>.<attribute>`. Therefore, the `id` attribute is referenced as `data.aws_ami.web.id`.

**Explanation:**

Option A is incorrect: This format is for managed resources, not data sources.

Option B is incorrect: It omits both the `data` prefix and data source type.

Option D is incorrect: It omits the data source type `aws_ami`.

---

## Question No. 39

**Question Type:** Single Choice

**Question:** What is an advantage of immutable infrastructure?

**Options:**
- A) In-place infrastructure upgrades
- B) Quicker infrastructure upgrades
- C) Automatic infrastructure upgrades
- D) Less complex infrastructure upgrades

**Correct Answer:** B

**Explanation:** Immutable infrastructure replaces existing components with new versions rather than mutating them in place. This often enables faster and safer rollout patterns by promoting consistent, repeatable deployment artifacts.

**Explanation:**

Option A is incorrect: In-place upgrades are the opposite of immutable infrastructure principles.

Option C is incorrect: Immutability does not inherently make upgrades automatic.

Option D is incorrect: Complexity can shift but the key recognized advantage here is faster, safer replacement-based upgrades.

---

## Question No. 40

**Question Type:** Single Choice

**Question:** Which is a benefit of the Terraform state file?

**Options:**
- A) A state file can schedule recurring infrastructure tasks.
- B) A state file is the desired state expressed by the Terraform code files.
- C) A state file is a source of truth for resources provisioned with Terraform.
- D) A state file is a source of truth for resources provisioned with a public cloud console.

**Correct Answer:** C

**Explanation:** Terraform state tracks the real infrastructure objects managed by Terraform and maps them to configuration addresses. It acts as Terraform's authoritative record for managed resources, enabling accurate diffing, planning, and updates.

**Explanation:**

Option A is incorrect: Scheduling recurring tasks is outside the purpose of state files.

Option B is incorrect: Desired state is defined in configuration code, not in the state file.

Option D is incorrect: State is authoritative for Terraform-managed objects, not a universal source of truth for resources created directly in cloud consoles.

---

## Question No. 41

**Question Type:** Single Choice

**Question:** Your team often uses API calls to create and manage cloud infrastructure. In what ways does Terraform differ from conventional infrastructure management approaches?

**Options:**
- A) Terraform describes infrastructure with version-controlled, repeatable configurations that specify the desired state.
- B) Terraform is merely a wrapper for cloud provider APIs, so there is little to no difference in calling the API directly.
- C) Terraform replaces cloud provider APIs with its own protocols, enabling automated deployments.
- D) Terraform enforces infrastructure through imperative scripts to ensure tasks are completed in the proper order.

**Correct Answer:** A

**Explanation:** Terraform is declarative. You define the desired end state in version-controlled configuration files, and Terraform computes execution steps to reach that state. This enables repeatability, reviewability, and consistent deployments.

**Explanation:**

Option B is incorrect: Terraform does use provider APIs, but its declarative model and state management are major differences from direct API scripting.

Option C is incorrect: Terraform does not replace provider APIs; providers call those APIs.

Option D is incorrect: Terraform is not primarily imperative scripting; it is a declarative desired-state system.

---

## Question No. 42

**Question Type:** Single Choice

**Question:** Your team adopts AWS CloudFormation as the standardized method for provisioning public cloud resources. Which scenario presents a challenge for your team?

**Options:**
- A) Building a reusable code base that can deploy resources into any AWS region.
- B) Managing a new application stack built on AWS-native services.
- C) Automating a manual, web console-based provisioning process.
- D) Deploying new infrastructure into Microsoft Azure.

**Correct Answer:** D

**Explanation:** AWS CloudFormation is AWS-specific. Deploying to Microsoft Azure requires a different IaC tool or platform (for example, Terraform, Bicep, ARM templates), so cross-cloud provisioning to Azure is the key challenge here.

**Explanation:**

Option A is incorrect: CloudFormation supports multi-region AWS deployment patterns.

Option B is incorrect: Managing AWS-native stacks is CloudFormation's primary use case.

Option C is incorrect: CloudFormation can automate infrastructure that was previously manual in AWS.

---

## Question No. 43

**Question Type:** Multiple Choice

**Question:** Which parameters does the import block require? (Pick the 2 correct responses below.)

**Options:**
- A) The resource ID
- B) Provider
- C) The target resource address
- D) Backend

**Correct Answer:** A, C

**Explanation:** Terraform import blocks require `id` (the provider-specific resource identifier) and `to` (the target resource address in configuration). These two values tell Terraform what existing object to import and where to map it in state.

**Explanation:**

Option B is incorrect: Provider selection is inferred from the target resource configuration and is not a required import block parameter.

Option D is incorrect: Backend configuration is unrelated to import block parameters.

---

## Question No. 44

**Question Type:** Single Choice

**Question:** You've enabled DEBUG-level logging for Terraform, and you'd like to send the log data to a file. Which action should you take?

**Options:**
- A) Set the `TF_LOG_PATH` environment variable.
- B) Update the Terraform CLI configuration file.
- C) Add a path argument to the terraform block.
- D) Run the terraform output command.

**Correct Answer:** A

**Explanation:** `TF_LOG_PATH` tells Terraform where to write log output. Combined with `TF_LOG` (for example `DEBUG`), it sends logs to the specified file.

**Explanation:**

Option B is incorrect: This is not how Terraform directs runtime log output to a file.

Option C is incorrect: The terraform block has no generic path argument for logging.

Option D is incorrect: `terraform output` displays root module outputs, not logs.

---

## Question No. 45

**Question Type:** Single Choice

**Question:** Where in your Terraform configuration do you specify remote state storage settings?

**Options:**
- A) The resource block
- B) The provider block
- C) The data block
- D) The terraform block

**Correct Answer:** D

**Explanation:** Remote state storage is configured in a `backend` block nested under the top-level `terraform` block.

**Explanation:**

Option A is incorrect: Resource blocks define managed infrastructure objects.

Option B is incorrect: Provider blocks configure provider authentication and behavior.

Option C is incorrect: Data blocks read external or existing information.

---

## Question No. 46

**Question Type:** Single Choice

**Question:** The `-refresh-only` parameter will update your state file when used with `terraform plan`.

**Options:**
- A) True
- B) False

**Correct Answer:** B

**Explanation:** `terraform plan -refresh-only` creates a plan that *proposes* state/output updates based on real infrastructure, but plan by itself does not persist those updates to state. The state is updated when that plan is applied.

**Explanation:**

Option A is incorrect: Planning alone does not commit state changes.

---

## Question No. 47

**Question Type:** Single Choice

**Question:** Running terraform fmt without any flags in a directory with Terraform configuration files will check the formatting of those files, but will never change their contents.

**Options:**
- A) True
- B) False

**Correct Answer:** B

**Explanation:** By default, `terraform fmt` rewrites files in place to canonical format. To only check formatting without changing files, use check-oriented options such as `-check`.

**Explanation:**

Option A is incorrect: Default `terraform fmt` behavior does modify files when formatting changes are needed.

---

## Question No. 48

**Question Type:** Multiple Choice

**Question:** You want to use API tokens and other secrets within your team's Terraform workspaces. Where does HashiCorp recommend you store these sensitive values? (Pick 3 correct responses)

**Options:**
- A) In a plaintext document on a shared drive.
- B) In a terraform.tfvars file, checked into version control.
- C) In a terraform.tfvars file, securely managed and shared with your team.
- D) In an HCP Terraform/Terraform Cloud variable, with the sensitive option checked.
- E) In HashiCorp Vault.

**Correct Answer:** C, D, E

**Explanation:** Recommended secret storage options include secure tfvars handling (outside VCS), sensitive workspace variables in HCP Terraform/Terraform Cloud, and dedicated secret managers like HashiCorp Vault.

**Explanation:**

Option A is incorrect: Plaintext shared documents are not secure secret storage.

Option B is incorrect: Checking secrets into version control is not recommended.

---

## Question No. 49

**Question Type:** Single Choice

**Question:** Which of the following is not an action performed by terraform init?

**Options:**
- A) Initialize a configured backend.
- B) Create template configuration files.
- C) Load required provider plugins.
- D) Retrieve the source code for all referenced modules.

**Correct Answer:** B

**Explanation:** `terraform init` initializes backend settings, downloads/installs required provider plugins, and fetches module source code. It does not scaffold or create template Terraform configuration files.

**Explanation:**

Option A is incorrect: Backend initialization is a core init action.

Option C is incorrect: Provider plugin installation is a core init action.

Option D is incorrect: Module download is a core init action.

---

## Question No. 50

**Question Type:** Single Choice

**Question:** What does terraform destroy do?

**Options:**
- A) Destroys all infrastructure in the Terraform state file.
- B) Destroys all Terraform code files in the current directory, leaving the state file intact.
- C) Destroys all infrastructure in the configured Terraform provider.
- D) Destroys the Terraform state file, leaving the infrastructure intact.

**Correct Answer:** A

**Explanation:** `terraform destroy` removes all resources currently managed in the active state for the workspace/configuration. It does not destroy all resources in the entire provider account, and it does not delete Terraform source code files.

**Explanation:**

Option B is incorrect: Terraform never deletes your configuration files as part of destroy.

Option C is incorrect: Destroy targets managed resources in state, not everything in the provider account.

Option D is incorrect: Destroy removes infrastructure resources; deleting state is a separate operation.

---

## Question No. 51

**Question Type:** Single Choice

**Question:** Refer to the exhibit.

```
resource "aws_instance" "web" {
  count = 2
  name  = "terraform-${count.index}"
}
```

A resource block is shown in the Exhibit space of this page. How would you reference the name value of the second instance of this resource?

**Options:**
- A) `aws_instance.web[2].name`
- B) `aws_instance.web.*.name`
- C) `aws_instance.web[1].name`
- D) `aws_instance.web[]`
- E) `element(aws_instance.web, 2)`

**Correct Answer:** C

**Explanation:** Resources created with `count` are indexed from zero. With `count = 2`, instances are `[0]` and `[1]`, so the second instance is `aws_instance.web[1]`. Its name attribute is referenced as `aws_instance.web[1].name`.

**Explanation:**

Option A is incorrect: Index 2 would refer to a third instance, which does not exist.

Option B is incorrect: This is a splat expression returning all names, not the second instance only.

Option D is incorrect: Empty index syntax is invalid.

Option E is incorrect: `element` here is incomplete/incorrect for directly selecting the resource attribute value.

---

## Question No. 52

**Question Type:** Single Choice

**Question:** You have a simple Terraform configuration containing one virtual machine (VM) in a cloud provider. You run terraform apply and the VM is created successfully. What will happen if you delete the VM using the cloud provider console, then run terraform apply again without changing any Terraform code?

**Options:**
- A) Terraform will recreate the VM.
- B) Terraform will report an error.
- C) Terraform will remove the VM from the state file.
- D) Terraform will not make any changes.

**Correct Answer:** A

**Explanation:** Terraform compares desired state (configuration) with real infrastructure. If the VM was deleted outside Terraform, drift exists and Terraform will plan/apply actions to recreate the missing managed resource.

**Explanation:**

Option B is incorrect: This drift scenario is usually remediated by recreation, not a hard failure.

Option C is incorrect: Terraform does not simply remove desired resources from state when they are missing; it tries to reconcile to desired state.

Option D is incorrect: There is a detected difference, so Terraform will plan changes.

---

## Question No. 53

**Question Type:** Single Choice

**Question:** Refer to the exhibit.

```
resource "azurerm_resource_group" "dev" {
  name     = "test"
  location = "westus"
}
```

A resource block is shown in the Exhibit space of this page. What is the Terraform resource name of that resource block?

**Options:**
- A) azurerm
- B) azurerm_resource_group
- C) ev
- D) test

**Correct Answer:** B

**Explanation:** In a resource block, the first label is the resource type (commonly referred to as the resource name in many exam questions): `azurerm_resource_group`. The second label is the local instance name (`dev`), and `test` is an argument value.

**Explanation:**

Option A is incorrect: `azurerm` is the provider namespace prefix, not the full resource type.

Option C is incorrect: `ev` is not present as a valid label in the block.

Option D is incorrect: `test` is the value of the `name` argument, not the resource type/label.

---

## Question No. 54

**Question Type:** Single Choice

**Question:** Exhibit:

```
provider "aws" {
  region = "us-east-1"
}

provider "aws" {
  alias  = "west"
  region = "us-west-2"
}
```

You need to deploy resources into two different regions in the same Terraform configuration. To do this, you declare multiple provider configurations as shown in the Exhibit space on this page.

What meta-argument do you need to configure in a resource block to deploy the resource to the us-west-2 AWS region?

**Options:**
- A) `provider = aws.west`
- B) `alias = aws.west`
- C) `provider = west`
- D) `alias = west`

**Correct Answer:** A

**Explanation:** To select a non-default provider configuration for a resource, use the `provider` meta-argument with `<provider>.<alias>`, which here is `aws.west`.

**Explanation:**

Option B is incorrect: `alias` is declared in provider blocks, not resource blocks.

Option C is incorrect: The provider reference must include both provider name and alias (`aws.west`).

Option D is incorrect: `alias` is not a resource meta-argument.

---

## Question No. 55

**Question Type:** Multiple Choice

**Question:** You want to use API tokens and other secrets within your team's Terraform workspaces. Where does HashiCorp recommend you store these sensitive values? (Pick 3)

**Options:**
- A) In a plaintext document on a shared drive.
- B) In a terraform.tfvars file, checked into version control.
- C) In a terraform.tfvars file, securely managed and shared with your team.
- D) In an HCP Terraform/Terraform Cloud variable, with the sensitive option checked.
- E) In HashiCorp Vault.

**Correct Answer:** C, D, E

**Explanation:** Secure tfvars handling (outside VCS), sensitive workspace variables in HCP Terraform/Terraform Cloud, and dedicated secret managers like HashiCorp Vault are recommended patterns.

**Explanation:**

Option A is incorrect: Plaintext shared documents are not secure storage for secrets.

Option B is incorrect: Secrets should not be committed to version control.

---

## Question No. 56

**Question Type:** Single Choice

**Question:** When you use a backend that requires authentication, it is best practice to:

**Options:**
- A) Run all Terraform commands on a shared server or container.
- B) Configure the authentication credentials in your Terraform configuration files, and store them in version control.
- C) Use environment variables to configure authentication credentials outside of your Terraform configuration.
- D) None of the above.

**Correct Answer:** C

**Explanation:** Credentials should be kept out of Terraform code and out of VCS. Environment variables (or external secret stores) are standard secure patterns for backend auth.

**Explanation:**

Option A is incorrect: Shared execution environments do not by themselves address secure credential handling.

Option B is incorrect: Storing credentials in code/version control is insecure.

Option D is incorrect: Option C is a valid best practice.

---

## Question No. 57

**Question Type:** Single Choice

**Question:** Which of the following should you add in the required_providers block to define a provider version constraint?

**Options:**
- A) `version ~> 3.1`
- B) `version >= 3.1`
- C) `version = ">= 3.1"`

**Correct Answer:** C

**Explanation:** In `required_providers`, version constraints must be assigned as a string expression, for example `version = ">= 3.1"`.

**Explanation:**

Option A is incorrect: Missing assignment/operator context as valid HCL argument syntax.

Option B is incorrect: Missing assignment and string formatting expected in provider constraint declarations.

---

## Question No. 58

**Question Type:** Single Choice

**Question:** You are tasked with making a change to an infrastructure stack running in a public cloud using HCP Terraform/Terraform Cloud. Which pattern follows IaC best practices?

**Options:**
- A) Make the change via the public cloud API endpoint.
- B) Submit a pull request and wait for an approved merge of the proposed changes.
- C) Clone the repository containing your infrastructure code and then run the code.
- D) Use the public cloud console to make the change after approval.
- E) Make the change programmatically via the cloud CLI.

**Correct Answer:** B

**Explanation:** IaC best practice is change-through-code with review and approval workflows (PR + merge), producing an auditable and repeatable process.

**Explanation:**

Option A is incorrect: Direct API changes bypass review/governance workflows.

Option C is incorrect: Running code directly is not the primary governance pattern unless coupled with reviewed/approved workflow.

Option D is incorrect: Console changes introduce drift and bypass IaC controls.

Option E is incorrect: Direct CLI changes bypass the desired code-review pipeline.

---

## Question No. 59

**Question Type:** Single Choice

**Question:** You're writing a Terraform configuration that needs to read input from a local file called id_rsa.pub. Which built-in Terraform function can you use to import the file's contents as a string?

**Options:**
- A) `fileset('id_rsa.pub')`
- B) `file('id_rsa.pub')`
- C) `filebase64('id_rsa.pub')`
- D) `templatefile('id_rsa.pub')`

**Correct Answer:** B

**Explanation:** The `file()` function reads a file and returns its contents as a string.

**Explanation:**

Option A is incorrect: `fileset` returns a set of matching file names, not file content.

Option C is incorrect: `filebase64` returns base64-encoded content, not plain string content.

Option D is incorrect: `templatefile` expects a template file and variables map for rendering.

---

## Question No. 60

**Question Type:** Single Choice

**Question:** Only the user that generated a terraform plan may apply it.

**Options:**
- A) True
- B) False

**Correct Answer:** B

**Explanation:** A saved plan file can be applied by another user/environment with proper access and compatible context; Terraform does not require it to be applied by the same human who created it.

**Explanation:**

Option A is incorrect: Terraform does not enforce a same-user-only rule for applying saved plans.

---

## Question No. 61

**Question Type:** Single Choice

**Question:** A developer launched a VM outside of the Terraform workflow and ended up with two servers with the same name. They are unsure which VM is managed with Terraform, but they do have a list of all active VM IDs. Which method could you use to determine which instance Terraform manages?

**Options:**
- A) Modify the Terraform configuration to add an import block for both virtual machines.
- B) Run a terraform apply -refresh to identify the virtual machine IDs that are already managed by Terraform.
- C) Run terraform state rm on both VMs, then terraform apply to recreate the correct one.
- D) Run terraform state list to find the names of all VMs, then run terraform state show for each of them to find which VM ID Terraform manages.

**Correct Answer:** D

**Explanation:** The safest way to identify what Terraform currently manages is to inspect state. `terraform state list` shows managed addresses and `terraform state show` reveals their attributes, including IDs, letting you match against active VM IDs.

**Explanation:**

Option A is incorrect: Importing both resources is unnecessary and can create state conflicts for already managed resources.

Option B is incorrect: Refresh/apply is not the direct inspection method for mapping exact managed IDs.

Option C is incorrect: Removing resources from state is destructive to tracking and unnecessary for identification.

---

## Question No. 62

**Question Type:** Single Choice

**Question:** If one of your modules uses a local value, you can expose that value to callers of the module by defining a Terraform output in the module's configuration.

**Options:**
- A) True
- B) False

**Correct Answer:** A

**Explanation:** A local value can be referenced by an `output` block inside the module, and that output becomes available to callers via `module.<name>.<output>`.

**Explanation:**

Option B is incorrect: Module outputs are exactly how internal module values (including locals) are exposed to callers.

---

## Question No. 63

**Question Type:** Single Choice

**Question:** If a module declares a variable without a default value, you must pass the value of the variable within the module block when you call the module in your configuration.

**Options:**
- A) True
- B) False

**Correct Answer:** A

**Explanation:** Module input variables without defaults are required. If not provided by the caller, Terraform fails with a missing required argument/input error.

**Explanation:**

Option B is incorrect: Required module variables must be set unless a default exists.

---

## Question No. 64

**Question Type:** Single Choice

**Question:** One cloud block always maps to a single HCP Terraform/Terraform Cloud workspace.

**Options:**
- A) True
- B) False

**Correct Answer:** B

**Explanation:** A `cloud` block can map to a single named workspace or to multiple workspaces using tags. Therefore, it does not always map to exactly one workspace.

**Explanation:**

Option A is incorrect: The tags-based workspace mapping supports multiple workspaces.

---

## Question No. 65

**Question Type:** Single Choice

**Question:** Which of the following should you add in the required_providers block to define a provider version constraint?

**Options:**
- A) version
- B) version = '3.1'
- C) version: 3.1
- D) version - 3.1

**Correct Answer:** B

**Explanation:** In `required_providers`, version constraints are assigned to the `version` argument. Among the provided options, `version = '3.1'` is the valid constraint assignment form.

**Explanation:**

Option A is incorrect: It lacks an assigned value.

Option C is incorrect: Colon syntax is not valid for Terraform argument assignment.

Option D is incorrect: Hyphen syntax is invalid.

---

## Question No. 66

**Question Type:** Single Choice

**Question:** You modified your Terraform configuration to fix a typo in the resource ID by renaming it from photoes to photos. What configuration will you add to update the resource ID in state without destroying the existing resource?

Original configuration:
```
resource 'aws_s3_bucket' 'photoes' {
  bucket_prefix = 'images'
}
```

Updated configuration:
```
resource 'aws_s3_bucket' 'photos' {
  bucket_prefix = 'images'
}
```

**Options:**
- A) 
```
moved {
  from = aws_s3_bucket.photoes
  to   = aws_s3_bucket.photos
}
```
- B)
```
moved {
  bucket.photoes = aws_s3_bucket.photos
}
```
- C)
```
moved {
  aws_s3_bucket.photoes = aws_s3_bucket.photos
}
```
- D) None. Terraform will automatically update the resource ID.

**Correct Answer:** A

**Explanation:** The correct `moved` block uses explicit `from` and `to` addresses. This remaps state from old resource address to new resource address without replacement.

**Explanation:**

Option B is incorrect: Invalid moved block syntax and wrong address format.

Option C is incorrect: Invalid moved block syntax because it lacks `from`/`to` arguments.

Option D is incorrect: Terraform does not automatically infer arbitrary address renames.

---

## Question No. 67

**Question Type:** Single Choice

**Question:** When you use a backend that requires authentication, it is best practice to:

**Options:**
- A) Run all of your Terraform commands on a shared server or container.
- B) Configure the authentication credentials in your Terraform configuration files, and store them in a private version control system.
- C) Use environment variables to configure authentication credentials outside of your Terraform configuration.
- D) None of the above.

**Correct Answer:** C

**Explanation:** Credentials should be kept out of configuration files and VCS. Environment variables (or secret managers) are standard best practice for backend authentication.

**Explanation:**

Option A is incorrect: Shared runtime location is not a credential-management best practice by itself.

Option B is incorrect: Storing credentials in code repositories is insecure.

Option D is incorrect: Option C is the recommended pattern.

---

## Question No. 68

**Question Type:** Single Choice

**Question:** When you run terraform apply, the Terraform CLI will print output values from both the root module and any child modules.

**Options:**
- A) True
- B) False

**Correct Answer:** B

**Explanation:** Terraform displays root module outputs. Child module outputs are shown only if re-exposed through root module output blocks.

**Explanation:**

Option A is incorrect: Child outputs are not automatically printed unless surfaced at root.

---

## Question No. 69

**Question Type:** Single Choice

**Question:** What type of information can be found on the Terraform Registry when using published modules?

**Options:**
- A) Required input variables.
- B) Outputs.
- C) Optional input variables and default values.
- D) All of the above.

**Correct Answer:** D

**Explanation:** Module registry pages typically document required/optional inputs (including defaults) and outputs.

**Explanation:**

Option A is incorrect: This is included, but not the full answer.

Option B is incorrect: This is included, but not the full answer.

Option C is incorrect: This is included, but not the full answer.

---

## Question No. 70

**Question Type:** Multiple Choice

**Question:** Which of the following can you do with terraform plan? (Pick 2 correct responses)

**Options:**
- A) Schedule Terraform to run at a planned time in the future.
- B) View the execution plan and check if the changes match your expectations.
- C) Save a generated execution plan to apply later.
- D) Execute a plan in a different workspace.

**Correct Answer:** B, C

**Explanation:** `terraform plan` lets you preview intended actions and, with `-out`, save a plan file for later apply.

**Explanation:**

Option A is incorrect: Scheduling is handled by external orchestrators/pipelines, not by plan itself.

Option D is incorrect: Executing plans is done with `terraform apply`; workspace targeting is a separate concern.

---

## Question No. 71

**Question Type:** Single Choice

**Question:** What task does the terraform import command perform?

**Options:**
- A) Imports resources from one Terraform state file to another.
- B) Imports existing resources into Terraform's state file.
- C) Imports a new Terraform module into Terraform's state file.
- D) Imports all infrastructure from the configured cloud provider.
- E) Imports provider configuration from one state file to another.

**Correct Answer:** B

**Explanation:** `terraform import` maps an existing real-world resource to a Terraform resource address and records it in state, allowing Terraform to begin managing it.

**Explanation:**

Option A is incorrect: Import does not move resources between state files.

Option C is incorrect: Modules are downloaded via `terraform init`, not imported.

Option D is incorrect: Import targets specific named resources, not all infrastructure at once.

Option E is incorrect: Provider configuration is not moved between state files via import.

---

## Question No. 72

**Question Type:** Single Choice

**Question:** What is the purpose of the terraform.lock.hcl file in Terraform?

**Options:**
- A) There is no such file.
- B) Storing references to workspaces, which are locked.
- C) Preventing Terraform runs from occurring.
- D) Tracking specific provider dependencies.

**Correct Answer:** D

**Explanation:** The `.terraform.lock.hcl` file records the exact provider versions and checksums selected during `terraform init`. It ensures consistent provider versions across team members and CI runs.

**Explanation:**

Option A is incorrect: The file does exist and is created by `terraform init`.

Option B is incorrect: It does not store workspace lock references.

Option C is incorrect: It does not prevent Terraform from running.

---

## Question No. 73

**Question Type:** Single Choice

**Question:** What is a Terraform provider not responsible for?

**Options:**
- A) Provisioning infrastructure in multiple cloud providers.
- B) Managing actions to take based on resource differences.
- C) Managing resources and data sources based on an API.
- D) Understanding API interactions with a hosted service.

**Correct Answer:** B

**Explanation:** Determining what actions to take based on resource differences (plan/apply logic) is Terraform core's responsibility, not the provider's. Providers are responsible for translating resource configurations into API calls.

**Explanation:**

Option A is incorrect: A single provider can be scoped to one cloud, but provisioning across multiple providers is achievable by using multiple providers; however the provider itself does not span multi-cloud natively.

Option C is incorrect: Managing resources and data sources via API is exactly the provider's role.

Option D is incorrect: Understanding API interactions with its service is the provider's role.

---

## Question No. 74

**Question Type:** Single Choice

**Question:** You have developed a new cloud-based service that uses proprietary APIs and want to use Terraform to create, manage, and delete users from the service. How can Terraform interact with the service?

**Options:**
- A) Terraform can manage users for any service that is hosted on a public cloud provider.
- B) Develop and publish a custom provider to interact with the service using its proprietary APIs.

**Correct Answer:** B

**Explanation:** Terraform's provider plugin architecture allows anyone to write a custom provider that wraps proprietary APIs. Once published, the provider enables Terraform to manage those resources.

**Explanation:**

Option A is incorrect: Terraform does not automatically manage arbitrary services just because they run on a public cloud; a provider must explicitly support the service's API.

---

## Question No. 75

**Question Type:** Single Choice

**Question:** By default, if you do not define a backend for your configuration, where does Terraform store information about the resources that it manages?

**Options:**
- A) A subdirectory of your home directory named .terraform.d
- B) A file in your configuration's directory named terraform.tfstate
- C) A file in your configuration's directory named .terraform.lock.hcl
- D) A subdirectory of your configuration named .terraform

**Correct Answer:** B

**Explanation:** Without a configured backend, Terraform uses the local backend and stores state in `terraform.tfstate` in the working directory.

**Explanation:**

Option A is incorrect: `.terraform.d` stores CLI configuration and plugins, not workspace state.

Option C is incorrect: `.terraform.lock.hcl` records provider version locks, not state.

Option D is incorrect: The `.terraform` subdirectory holds provider plugins and modules, not state.

---

## Question No. 76

**Question Type:** Multiple Choice

**Question:** Which of the following locations can Terraform use as a private source for modules? (Pick 2 correct responses)

**Options:**
- A) Public repository on GitHub.
- B) Public Terraform Registry.
- C) Internally hosted VCS (Version Control System) platform.
- D) Private repository on GitHub.

**Correct Answer:** C, D

**Explanation:** Terraform supports private module sources including private Git repositories (such as private GitHub repos) and internally hosted VCS platforms (GitLab, Bitbucket, Azure DevOps, etc.).

**Explanation:**

Option A is incorrect: A public GitHub repo is a public source, not private.

Option B is incorrect: The public Terraform Registry is a public source, not private.

---

## Question No. 77

**Question Type:** Single Choice

**Question:** What is modified when executing Terraform in refresh-only mode?

**Options:**
- A) Your Terraform configuration.
- B) Your Terraform plan.
- C) Your state file.
- D) Your cloud infrastructure.

**Correct Answer:** C

**Explanation:** `terraform apply -refresh-only` updates the state file to reflect the real current state of managed resources without making any infrastructure changes.

**Explanation:**

Option A is incorrect: Refresh-only mode never modifies configuration files.

Option B is incorrect: A plan is an ephemeral artifact; refresh-only modifies state.

Option D is incorrect: Refresh-only does not create, update, or destroy cloud resources.

---

## Question No. 78

**Question Type:** Single Choice

**Question:** Terraform requires the Go runtime as a prerequisite for installation.

**Options:**
- A) True
- B) False

**Correct Answer:** B

**Explanation:** Terraform is distributed as a single pre-compiled binary. End users do not need the Go runtime or any other runtime to install or run Terraform.

**Explanation:**

Option A is incorrect: Go is required to build Terraform from source, but not to install or run the pre-built binary.

---

## Question No. 79

**Question Type:** Single Choice

**Question:** Which of the following is not an advantage of using Infrastructure as Code (IaC) operations?

**Options:**
- A) Self-service infrastructure deployment.
- B) Modify a count parameter to scale resources.
- C) API-driven workflows.
- D) Troubleshoot via a Linux diff command.
- E) Public cloud console configuration workflows.

**Correct Answer:** E

**Explanation:** Public cloud console workflows are manual, GUI-driven operations, the opposite of IaC's programmatic approach. They introduce drift, are not version-controlled, and are not repeatable in the same way IaC is.

**Explanation:**

Option A is incorrect: Self-service deployment is a recognized IaC advantage.

Option B is incorrect: Scaling via code parameters is an IaC advantage.

Option C is incorrect: API-driven workflows are an IaC advantage.

Option D is incorrect: Reviewing diffs (code changes) is an IaC advantage that enables auditability.

---

## Question No. 80

**Question Type:** Single Choice

**Question:** terraform validate confirms the syntax of Terraform files.

**Options:**
- A) True
- B) False

**Correct Answer:** A

**Explanation:** `terraform validate` checks the configuration for syntax errors and internal consistency (valid argument names, types, required fields, etc.) without accessing any remote services or state.

**Explanation:**

Option B is incorrect: `terraform validate` does confirm syntax and basic correctness of configuration files.

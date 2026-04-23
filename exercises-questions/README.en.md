# Terraform Certification Scenario: Questions 2, 3, 4, and 5

This scenario demonstrates key Terraform concepts from the Certification 004. It uses the `azurerm` backend from the `backend-state-bootstrap` folder with the backend key: `exercises-questions-terraform-004portal.tfstate`

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

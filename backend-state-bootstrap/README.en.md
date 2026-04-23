# Terraform Backend Bootstrap for Azure

This Terraform configuration creates the necessary Azure resources to set up a remote backend for Terraform state files. It provisions:

- A resource group
- A storage account with blob storage
- A blob container for storing Terraform state files

This allows multiple Terraform projects and tests to share the same backend infrastructure, using different keys in the container.

## Usage

1. Ensure you are logged in to Azure CLI: `az login`

2. Initialize Terraform:
   ```
   terraform init
   ```

3. Plan the deployment:
   ```
   terraform plan
   ```

4. Apply the configuration:
   ```
   terraform apply
   ```

5. Note the output values (resource group name, storage account name, container name) for use in other Terraform projects.

## Configuring Backend in Other Projects

In your main Terraform projects, add the following backend configuration in a `terraform` block:

```hcl
terraform {
  backend "azurerm" {
    resource_group_name  = "<output_resource_group_name>"
    storage_account_name = "<output_storage_account_name>"
    container_name       = "<output_container_name>"
    key                  = "project-name.tfstate"  # Unique key for each project
  }
}
```

Replace the placeholders with the actual output values from this bootstrap.

## Variables

- `resource_group_location`: Azure region (default: eastus)
- `resource_group_name_prefix`: Prefix for RG name (default: rg)
- `storage_account_name`: Name of storage account (must be globally unique, default: tfbackendstorage)
- `container_name`: Name of blob container (default: tfstate)

## Question No. 1

**Question:** If you don't use the local Terraform backend, where else can Terraform save resource state?

**Options:**
- A) In a remote location configured in the terraform block, such as HCP Terraform or a cloud storage system.
- B) In a remote location configured in the .terraformrc file, such as HCP Terraform or a cloud storage system.
- C) In memory.
- D) In an environment variable.

**Correct Answer:** A

**Explanation:** Terraform utiliza el concepto de backends para determinar dónde se almacena el archivo de estado (terraform.tfstate). Por defecto, se usa un backend local, pero para entornos colaborativos se recomienda un backend remoto. Esta configuración se define explícitamente dentro del bloque de configuración terraform en los archivos .tf del proyecto. Esto permite que el estado se guarde en servicios como HCP Terraform, AWS S3, Azure Blob Storage o Google Cloud Storage, facilitando el bloqueo de estado y el trabajo en equipo.

**Explanation:**

Opción B es incorrecta: El archivo .terraformrc (o terraform.rc en Windows) se utiliza para configurar el comportamiento global del CLI de Terraform (como el uso de proxies o credenciales de API), pero no para definir el almacenamiento del estado de un proyecto específico.

Opción C es incorrecta: Almacenar el estado solo en memoria significaría que los datos se perderían tan pronto como finalice la ejecución del comando. El estado debe ser persistente para que Terraform pueda comparar la infraestructura real con la configuración en futuras ejecuciones.

Opción D es incorrecta: Aunque las variables de entorno pueden usarse para proporcionar credenciales o ciertos parámetros de configuración al backend, el archivo de estado en sí no se almacena dentro de una variable de entorno debido a limitaciones de tamaño y la necesidad de persistencia y concurrencia.
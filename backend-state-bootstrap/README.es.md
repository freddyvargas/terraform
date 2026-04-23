# Bootstrap del Backend de Terraform para Azure

Esta configuración de Terraform crea los recursos necesarios de Azure para configurar un backend remoto para los archivos de estado de Terraform. Provisiona:

- Un grupo de recursos
- Una cuenta de almacenamiento con almacenamiento de blobs
- Un contenedor de blobs para almacenar los archivos de estado de Terraform

Esto permite que múltiples proyectos y pruebas de Terraform compartan la misma infraestructura de backend, utilizando diferentes claves en el contenedor.

## Uso

1. Asegúrate de estar conectado a Azure CLI: `az login`

2. Inicializa Terraform:
   ```
   terraform init
   ```

3. Planifica el despliegue:
   ```
   terraform plan
   ```

4. Aplica la configuración:
   ```
   terraform apply
   ```

5. Anota los valores de salida (nombre del grupo de recursos, nombre de la cuenta de almacenamiento, nombre del contenedor) para usarlos en otros proyectos de Terraform.

## Configurando el Backend en Otros Proyectos

En tus proyectos principales de Terraform, agrega la siguiente configuración de backend en un bloque `terraform`:

```hcl
terraform {
  backend "azurerm" {
    resource_group_name  = "<output_resource_group_name>"
    storage_account_name = "<output_storage_account_name>"
    container_name       = "<output_container_name>"
    key                  = "project-name.tfstate"  # Clave única para cada proyecto
  }
}
```

Reemplaza los marcadores de posición con los valores de salida reales de este bootstrap.

## Variables

- `resource_group_location`: Región de Azure (predeterminado: eastus)
- `resource_group_name_prefix`: Prefijo para el nombre del RG (predeterminado: rg)
- `storage_account_name`: Nombre de la cuenta de almacenamiento (debe ser globalmente único, predeterminado: tfbackendstorage)
- `container_name`: Nombre del contenedor de blobs (predeterminado: tfstate)

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
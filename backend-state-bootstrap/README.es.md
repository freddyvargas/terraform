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
# Escenario de Terraform: Pregunta No. 2

Este escenario muestra la implementación más sencilla y correcta para reutilizar una cadena combinada creada a partir de un `random_id` generado y una variable, sin repetir ninguna de las dos expresiones.

## Escenario
- Usa el backend `azurerm` de la carpeta `backend-state-bootstrap`
- Key del estado: `exercises-questions-terraform-004portal.tfstate`
- Demuestra la reutilización de la cadena combinada mediante un valor `local`

## Pregunta/respuesta exacta del prompt

Question No. 2
Question: You want to create a string that combines a generated random_id and a variable and reuse that string several times in your configuration. What is the simplest correct way to implement this without repeating the random_id and variable?
Options:
A) Use a module.
B) Add an output value.
C) Add a local value.
D) Use a data source.
Correct Answer: C
Explanation: La forma más sencilla y eficiente de asignar un nombre a una expresión para reutilizarla múltiples veces dentro de un mismo módulo es mediante el uso de valores locales (locals)
. Los locals funcionan como constantes o variables temporales dentro de la configuración, permitiendo combinar valores de diferentes fuentes (como un recurso random_id y una variable de entrada) en una sola expresión centralizada. Esto mejora la legibilidad y evita la duplicación de código, facilitando el mantenimiento si la lógica de esa cadena de texto llega a cambiar en el futuro.
Explanation:
Opción A es incorrecta: Aunque los módulos permiten la reutilización de configuraciones completas, utilizarlos solo para combinar dos valores simples dentro de un mismo archivo resultaría en una sobreingeniería innecesaria y compleja para el objetivo planteado
. Opción B es incorrecta: Un valor de salida (output) se utiliza para exponer información de un módulo hacia el exterior (al usuario o a otros módulos), no para realizar cálculos internos o combinaciones de cadenas destinadas a ser reutilizadas dentro del mismo bloque de configuración
. Opción D es incorrecta: Una fuente de datos (data source) se utiliza para consultar información de infraestructuras externas a Terraform o recursos ya existentes. No es un mecanismo para realizar manipulaciones de cadenas de texto o lógica interna de variables

---

## Pregunta/respuesta exacta del prompt

Question No. 3
Question: Which task does terraform init not perform?
Options:
A) Discovers all providers used in the configuration and downloads them.
B) Validates that values are set for all required input variables.
C) Connects to the configured backend.
D) Discovers any remote modules and downloads them.
Correct Answer: B
Explanation: El comando terraform init se utiliza exclusivamente para inicializar un directorio de trabajo que contiene archivos de configuración de Terraform
. Su función principal es la preparación del entorno, lo cual incluye la descarga de complementos (plugins) y la configuración del backend. Sin embargo, no realiza validaciones sobre los valores de las variables de entrada; ese proceso de validación y verificación de que todas las variables requeridas tengan un valor asignado ocurre durante las etapas de terraform plan o terraform apply.
Explanation:
Opción A es incorrecta: Esta es una de las tareas principales de terraform init. El comando escanea la configuración, identifica los proveedores necesarios (como AWS, Azure, GCP) y descarga los binarios correspondientes en el directorio local .terraform
. Opción C es incorrecta: terraform init es el comando responsable de inicializar el backend configurado en el bloque terraform. Esto incluye establecer la conexión y, si es necesario, migrar el estado existente al nuevo backend
. Opción D es incorrecta: Durante la inicialización, Terraform busca cualquier módulo remoto referenciado en la configuración y descarga el código fuente de dichos módulos al directorio local para que puedan ser utilizados en la implementación

---

## Pregunta/respuesta exacta del prompt

Question No. 4
Question: What functionality do providers offer in Terraform? (Pick the 3 correct responses below.)
Options:
A) Group a collection of Terraform configuration files that map to a single state file.
B) Provision resources for on-premises infrastructure services.
C) Provision resources for public cloud infrastructure services.
D) Interact with cloud provider APIs.
E) Enforce security and compliance policies.
Correct Answer: B, C, D
Explanation: Los proveedores (providers) son la base de la extensibilidad de Terraform. Su función principal es servir como una capa de abstracción que traduce el código HCL en llamadas a APIs específicas (Opción D)
. Gracias a esta arquitectura de plugins, Terraform puede gestionar una variedad inmensa de servicios, incluyendo tanto nubes públicas como AWS, Google Cloud o Azure (Opción C), como infraestructuras locales o on-premises como VMware, OpenStack o Kubernetes (Opción B)
. Explanation:
La Opción A es incorrecta: Agrupar una colección de archivos de configuración que mapean a un archivo de estado es la definición de un módulo (específicamente el módulo raíz o root module), no de un proveedor
. La Opción E es incorrecta: Aunque Terraform interactúa con servicios de seguridad, la función de obligar o "hacer cumplir" (enforce) políticas de seguridad y cumplimiento es responsabilidad de herramientas de Policy as Code, como Sentinel (en HCP Terraform/Enterprise) o OPA (Open Policy Agent), y no de los proveedores de infraestructura en sí mismos

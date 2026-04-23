# Escenario de Certificación de Terraform: Preguntas 2, 3 y 4

Este escenario demuestra conceptos clave de Terraform de la Certificación 004. Utiliza el backend `azurerm` de la carpeta `backend-state-bootstrap` con la clave del estado: `exercises-questions-terraform-004portal.tfstate`

## Question No. 2

**Pregunta:** Deseas crear una cadena que combine un random_id generado y una variable y reutilizar esa cadena varias veces en tu configuración. ¿Cuál es la forma más simple y correcta de implementar esto sin repetir el random_id y la variable?

**Opciones:**
- A) Usar un módulo.
- B) Agregar un valor de salida.
- C) Agregar un valor local.
- D) Usar una fuente de datos.

**Respuesta Correcta:** C

**Explicación:** La forma más sencilla y eficiente de asignar un nombre a una expresión para reutilizarla múltiples veces dentro de un mismo módulo es mediante el uso de valores locales (locals). Los locals funcionan como constantes o variables temporales dentro de la configuración, permitiendo combinar valores de diferentes fuentes (como un recurso random_id y una variable de entrada) en una sola expresión centralizada. Esto mejora la legibilidad y evita la duplicación de código, facilitando el mantenimiento si la lógica de esa cadena de texto llega a cambiar en el futuro.

**Explicación:**

Opción A es incorrecta: Aunque los módulos permiten la reutilización de configuraciones completas, utilizarlos solo para combinar dos valores simples dentro de un mismo archivo resultaría en una sobreingeniería innecesaria y compleja para el objetivo planteado.

Opción B es incorrecta: Un valor de salida (output) se utiliza para exponer información de un módulo hacia el exterior (al usuario o a otros módulos), no para realizar cálculos internos o combinaciones de cadenas destinadas a ser reutilizadas dentro del mismo bloque de configuración.

Opción D es incorrecta: Una fuente de datos (data source) se utiliza para consultar información de infraestructuras externas a Terraform o recursos ya existentes. No es un mecanismo para realizar manipulaciones de cadenas de texto o lógica interna de variables.

---

## Question No. 3

**Pregunta:** ¿Cuál es la tarea que terraform init NO realiza?

**Opciones:**
- A) Descubre todos los proveedores usados en la configuración y los descarga.
- B) Valida que se establezcan valores para todas las variables de entrada requeridas.
- C) Se conecta al backend configurado.
- D) Descubre cualquier módulo remoto y descarga su código.

**Respuesta Correcta:** B

**Explicación:** El comando terraform init se utiliza exclusivamente para inicializar un directorio de trabajo que contiene archivos de configuración de Terraform. Su función principal es la preparación del entorno, lo cual incluye la descarga de complementos (plugins) y la configuración del backend. Sin embargo, no realiza validaciones sobre los valores de las variables de entrada; ese proceso de validación y verificación de que todas las variables requeridas tengan un valor asignado ocurre durante las etapas de terraform plan o terraform apply.

**Explicación:**

Opción A es incorrecta: Esta es una de las tareas principales de terraform init. El comando escanea la configuración, identifica los proveedores necesarios (como AWS, Azure, GCP) y descarga los binarios correspondientes en el directorio local .terraform.

Opción C es incorrecta: terraform init es el comando responsable de inicializar el backend configurado en el bloque terraform. Esto incluye establecer la conexión y, si es necesario, migrar el estado existente al nuevo backend.

Opción D es incorrecta: Durante la inicialización, Terraform busca cualquier módulo remoto referenciado en la configuración y descarga el código fuente de dichos módulos al directorio local para que puedan ser utilizados en la implementación.

---

## Question No. 4

**Pregunta:** ¿Qué funcionalidad ofrecen los proveedores en Terraform? (Selecciona las 3 respuestas correctas.)

**Opciones:**
- A) Agrupar una colección de archivos de configuración de Terraform que mapean a un archivo de estado.
- B) Provisionar recursos para servicios de infraestructura on-premises.
- C) Provisionar recursos para servicios de infraestructura en la nube pública.
- D) Interactuar con las APIs de los proveedores de nube.
- E) Aplicar políticas de seguridad y cumplimiento normativo.

**Respuesta Correcta:** B, C, D

**Explicación:** Los proveedores (providers) son la base de la extensibilidad de Terraform. Su función principal es servir como una capa de abstracción que traduce el código HCL en llamadas a APIs específicas (Opción D). Gracias a esta arquitectura de plugins, Terraform puede gestionar una variedad inmensa de servicios, incluyendo tanto nubes públicas como AWS, Google Cloud o Azure (Opción C), como infraestructuras locales u on-premises como VMware, OpenStack o Kubernetes (Opción B).

**Explicación:**

Opción A es incorrecta: Agrupar una colección de archivos de configuración que mapean a un archivo de estado es la definición de un módulo (específicamente el módulo raíz o root module), no de un proveedor.

Opción E es incorrecta: Aunque Terraform interactúa con servicios de seguridad, la función de obligar o "hacer cumplir" (enforce) políticas de seguridad y cumplimiento es responsabilidad de herramientas de Policy as Code, como Sentinel (en HCP Terraform/Enterprise) u OPA (Open Policy Agent), y no de los proveedores de infraestructura en sí mismos.

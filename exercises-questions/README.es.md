# Escenario de Certificación de Terraform: Preguntas 2, 3, 4, 5, 6, 7 y 8

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

---

## Question No. 5

**Pregunta:** Exhibit:
```
module "network" {
  source = "terraform-google-modules/network/google"
}
```
¿Qué versión del módulo fuente permite Terraform con el bloque module mostrado en el exhibit?

**Opciones:**
- A) Cualquier versión del módulo > 11.0.
- B) Cualquier versión del módulo >= 11.0.
- C) Cualquier versión del módulo >= 11.0 y < 12.0.
- D) Cualquier versión del módulo >= 11.0.0 y < 11.1.0.

**Respuesta Correcta:** La última versión disponible (ninguna de las opciones proporcionadas es estrictamente correcta para el exhibit como se muestra).

**Explicación:** Según la documentación oficial de Terraform, cuando se utiliza un módulo proveniente de un registro (como el Terraform Registry) y se omite el argumento version, Terraform descargará automáticamente la versión más reciente (latest) disponible en el momento de ejecutar terraform init. En el recorte de pantalla proporcionado, el bloque module solo contiene el argumento source y carece de una restricción de versión, por lo que no se limita a un rango específico como los mencionados en las opciones (a menos que la versión más reciente coincida casualmente con uno de ellos).

**Explicación:**

Opción A es incorrecta: Esta respuesta correspondería a una configuración que incluya explícitamente version = "> 11.0". Sin esta línea en el código, Terraform no aplica esta restricción específica.

Opción B es incorrecta: Esta respuesta requeriría la configuración version = ">= 11.0". Aunque a menudo se asocia con "cualquier versión" en exámenes de práctica si se asume que 11.0 es la base, técnicamente Terraform sin restricciones busca la última versión absoluta, no solo las superiores a la 11.0.

Opción C es incorrecta: Este rango representa el comportamiento del operador pesimista ~> 11.0. Si el exhibit tuviera version = "~> 11.0", Terraform permitiría actualizaciones incrementales dentro de la versión mayor 11 (minor updates), pero no la versión 12.0 o superior.

Opción D es incorrecta: Este rango representa el comportamiento del operador ~> 11.0.0. Solo permitiría parches dentro de la versión 11.0 (patch updates), bloqueando cualquier cambio en la versión menor (como la 11.1.0).

Nota: En muchos exámenes de certificación, esta pregunta suele incluir una línea adicional version = "11.0" o similar en el exhibit. El comportamiento estándar es descargar la versión más reciente disponible.

---

## Question No. 6

**Pregunta:** ¿Cuál es la sintaxis correcta para el comando plan?

**Opciones:**
- A) terraform apply -var-file=tfplan
- B) terraform plan -target=tfplan
- C) terraform plan -generate-config-out=tfplan
- D) terraform plan -out=tfplan

**Respuesta Correcta:** D

**Explicación:** La sintaxis correcta para guardar un plan de ejecución en un archivo es utilizando la opción -out=path con el comando terraform plan. Según la documentación oficial, esto permite guardar el plan generado de forma determinista para que, posteriormente, pueda ser ejecutado exactamente igual mediante terraform apply <PATH>, asegurando que no haya cambios entre la fase de planificación y la de aplicación.

**Explicación:**

Opción A es incorrecta: El comando terraform apply se usa para aplicar cambios, y el flag -var-file se utiliza para cargar valores de variables desde un archivo externo (usualmente .tfvars), no para gestionar archivos de plan.

Opción B es incorrecta: El flag -target se utiliza para limitar la operación de Terraform a un recurso o módulo específico y sus dependencias, no para definir un archivo de salida para el plan.

Opción C es incorrecta: Aunque -generate-config-out es una opción válida introducida en versiones recientes para la generación automática de configuración (HCL) durante procesos de importación, no es la sintaxis estándar ni el propósito general para guardar un plan de ejecución de infraestructura.

---

## Question No. 7

**Pregunta:** Exhibit:

```
Error: Saved plan is stale

The given plan file can no longer be applied because the state was changed by another operation after the plan was created.
```

Tienes un plan de ejecución guardado que contiene cambios deseados para la infraestructura administrada por Terraform. Después de ejecutar terraform apply my.tfplan, recibes el error mostrado. ¿Cómo puedes aplicar los cambios deseados? (Selecciona las 2 respuestas correctas.)

**Opciones:**
- A) Genera un nuevo archivo de plan de ejecución con terraform plan, y aplica el nuevo plan.
- B) Ejecuta terraform apply sin el plan de ejecución guardado.
- C) Fuerza el comando apply agregando el flag -lock=false.
- D) Actualiza los datos del estado actual usando el flag -refresh-only.
- E) Actualiza el archivo de plan actual usando el comando terraform state push.

**Respuesta Correcta:** A, B

**Explicación:** El error "Saved plan is stale" ocurre porque Terraform detecta que el archivo de estado (terraform.tfstate) ha sido modificado (ya sea por otra ejecución, un cambio manual o un proceso de equipo) después de que se generó el archivo de plan (.tfplan). Terraform utiliza un número de serie en el estado para garantizar que no se apliquen cambios basados en información obsoleta. La solución técnica es descartar el plan viejo y generar uno nuevo que se base en el estado actual de la infraestructura, lo cual se logra generando un nuevo archivo de plan (Opción A) o ejecutando el comando de aplicación directamente para que Terraform realice el ciclo de refresco y planificación en el momento (Opción B).

**Explicación:**

Opción C es incorrecta: El flag -lock=false se utiliza para omitir el bloqueo del estado cuando se sospecha que un bloqueo previo no se liberó correctamente, pero no soluciona la discrepancia de versiones entre un plan guardado y el estado actual.

Opción D es incorrecta: Aunque -refresh-only actualiza el estado con la realidad de la infraestructura, no "arregla" un archivo de plan ya creado; el plan original seguirá siendo inválido porque fue calculado sobre una versión de estado que ya no es la última.

Opción E es incorrecta: El comando terraform state push se utiliza para la gestión manual del estado (como migraciones o recuperaciones de desastres), no tiene ninguna funcionalidad para actualizar o modificar archivos de plan de ejecución binarios.

---

## Question No. 8

**Pregunta:** ¿Cuáles son beneficios de migrar de un backend de estado local a un backend remoto? (Selecciona las 2 respuestas correctas.)

**Opciones:**
- A) Garantiza que el drift de configuración no pueda ocurrir para la infraestructura administrada.
- B) Elimina la necesidad de gestionar credenciales al desplegar infraestructura a múltiples proveedores de nube.
- C) Ejecución más rápida de plan y apply porque el estado se cachea localmente en el proveedor de nube.
- D) Bloqueo de estado que permite a múltiples miembros del equipo trabajar de forma segura en la misma infraestructura.
- E) La capacidad de habilitar cifrado del lado del servidor en reposo.

**Respuesta Correcta:** D, E

**Explicación:** Migrar a un backend remoto ofrece ventajas críticas para la seguridad y el trabajo colaborativo. Primero, el bloqueo de estado (State Locking) (Opción D) es fundamental en entornos de equipo, ya que evita que dos personas ejecuten Terraform al mismo tiempo, lo que podría corromper el archivo de estado. Segundo, los backends remotos (como AWS S3, Azure Blob Storage o HCP Terraform) permiten utilizar cifrado en reposo (Encryption at rest) (Opción E), protegiendo la información sensible que Terraform suele almacenar en texto plano dentro del archivo de estado, como contraseñas o claves de acceso.

**Explicación:**

Opción A es incorrecta: El archivo de estado solo registra la última configuración conocida; no puede "garantizar" que no ocurra un drift (desviación), ya que los cambios manuales en la consola de la nube pueden suceder independientemente del backend utilizado.

Opción B es incorrecta: Aunque un backend remoto gestiona el estado, el usuario todavía necesita configurar y gestionar las credenciales de los proveedores (como AWS o Azure) para poder crear o modificar los recursos reales en esas plataformas.

Opción C es incorrecta: Generalmente, un backend remoto es más lento que uno local, ya que requiere realizar llamadas de red para descargar y subir el archivo de estado en cada operación, a diferencia del acceso instantáneo a un archivo en el disco local.

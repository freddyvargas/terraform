# Escenario de Certificación de Terraform

Este escenario demuestra conceptos clave de Terraform de la Certificación 004. Utiliza el backend `azurerm` de la carpeta `backend-state-bootstrap` con la clave del estado: `exercises-questions-terraform-004portal.tfstate`

## Tabla de Contenido

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

---

## Question No. 9

**Pregunta:** ¿Cuál comando genera datos formateados en DOT (Document Template) para visualizar las dependencias de Terraform?

**Opciones:**
- A) terraform graph
- B) terraform show
- C) terraform refresh
- D) terraform output

**Respuesta Correcta:** A

**Explicación:** El comando terraform graph se utiliza para generar una representación visual de la configuración de Terraform o de un plan de ejecución. Según la documentación oficial, este comando produce una salida en el lenguaje de descripción de gráficos DOT, que puede ser utilizada por herramientas como Graphviz para generar diagramas. Estos diagramas son fundamentales para entender las dependencias entre los recursos y el orden en que Terraform planea crearlos o modificarlos.

**Explicación:**

Opción B es incorrecta: El comando terraform show se utiliza para mostrar una versión legible por humanos de un archivo de estado o de un plan de ejecución. Aunque proporciona información detallada, no genera datos en formato DOT ni diagramas de dependencias.

Opción C es incorrecta: terraform refresh tiene como objetivo actualizar el archivo de estado local con la infraestructura real que se encuentra en la nube. No tiene funciones de visualización ni generación de gráficos.

Opción D es incorrecta: El comando terraform output se usa específicamente para extraer y mostrar los valores de las variables de salida que se han definido en la configuración, permitiendo consultar datos específicos del estado sin necesidad de leer todo el archivo.

---

## Question No. 10

**Pregunta:** Which features do HCP Terraform workspaces provide that are not available in Terraform Community Edition? (Pick the 3 correct responses below.)

**Opciones:**
- A) State versions and run history.
- B) Automatic detection of common security issues.
- C) Store Terraform and environment variables in variable sets.
- D) Remote execution of Terraform operations.
- E) Store your configuration in a Version Control System (VCS).
- F) Support for multiple cloud providers.

**Respuesta Correcta:** A, C, D

**Explicación:** Los workspaces de HCP Terraform incluyen capacidades de plataforma que van más allá de Terraform Community Edition. Mantienen historial completo de ejecuciones y versionado del estado (Opción A), permiten gestionar y reutilizar variables de Terraform y de entorno mediante variable sets (Opción C), y habilitan la ejecución remota de planes y applies en un entorno controlado (Opción D). Estas son funciones clave de colaboración y gobernanza propias de los workspaces de HCP Terraform.

**Explicación:**

Opción B es incorrecta: Aunque HCP Terraform puede integrarse con flujos de políticas y seguridad, la "detección automática de problemas comunes de seguridad" no es una capacidad base del workspace de la misma forma directa que historial de estado, variable sets o ejecución remota.

Opción E es incorrecta: Almacenar la configuración en un VCS es una práctica general de desarrollo y también está disponible con Terraform Community Edition; no es exclusivo de los workspaces de HCP Terraform.

Opción F es incorrecta: Terraform en sí (incluyendo Community Edition) es multi-cloud por diseño mediante providers, por lo que esta capacidad no es exclusiva de HCP Terraform workspaces.

---

## Question No. 11

**Pregunta:** ¿Qué tipo de bloque de configuración gestiona un objeto de infraestructura con configuraciones especificadas dentro del bloque?

**Opciones:**
- A) resource
- B) provider
- C) data
- D) locals

**Respuesta Correcta:** A

**Explicación:** El bloque `resource` es el bloque de configuración principal en Terraform utilizado para definir objetos de infraestructura que serán creados, actualizados o destruidos. Especifica el tipo de recurso, su nombre y los argumentos de configuración que definen cómo debe gestionarse la infraestructura. El bloque resource es donde declaras los recursos reales de la nube (como instancias de computación, redes, bases de datos, etc.) que Terraform provisionará y gestionará a lo largo de su ciclo de vida.

**Explicación:**

Opción B es incorrecta: El bloque `provider` se utiliza para configurar la conexión y autenticación con un proveedor de nube (como AWS, Azure o GCP), no para gestionar objetos individuales de infraestructura.

Opción C es incorrecta: El bloque `data` es una fuente de datos (data source) que consulta información sobre infraestructura existente o fuentes de datos externas; no crea ni gestiona nuevos objetos de infraestructura.

Opción D es incorrecta: El bloque `locals` define valores locales y expresiones que pueden reutilizarse dentro de la configuración por conveniencia y legibilidad, pero no gestiona ni crea objetos de infraestructura.

---

## Question No. 12

**Pregunta:** ¿Cuál es un beneficio de usar herramientas de infraestructura como código (IaC) comparado con APIs de plataforma nativas?

**Opciones:**
- A) IaC te permite escribir cada llamada API requerida para alcanzar la configuración deseada.
- B) IaC llama herramientas nativas de línea de comandos, que son más eficientes que las llamadas API.
- C) Las configuraciones de IaC definen el estado actual de la infraestructura, lo que te permite identificar las llamadas API correctas para hacer cambios.
- D) Las configuraciones de IaC definen el estado final de la infraestructura sin tener que escribir llamadas API para alcanzar la configuración deseada.

**Respuesta Correcta:** D

**Explicación:** El beneficio principal de usar herramientas IaC como Terraform es que declaras el estado final deseado de tu infraestructura en código, y la herramienta maneja automáticamente todas las llamadas API y pasos de orquestación necesarios para alcanzar ese estado. No necesitas escribir manualmente cada llamada API individual; en cambio, describes lo que quieres y Terraform determina cómo lograrlo. Este enfoque declarativo es más mantenible, repetible y menos propenso a errores que escribir manualmente las llamadas API.

**Explicación:**

Opción A es incorrecta: IaC en realidad abstrae la necesidad de escribir cada llamada API individual. Eso es lo opuesto de lo que IaC proporciona: maneja las llamadas API por ti en función de tus declaraciones.

Opción B es incorrecta: IaC no inherentemente llama herramientas nativas de línea de comandos ni las hace más eficientes que las llamadas API. Las herramientas IaC típicamente usan APIs directamente para orquestación.

Opción C es incorrecta: Las configuraciones de IaC definen el estado deseado final de la infraestructura (enfoque declarativo), no el estado actual. Aunque IaC puede consultar el estado actual para identificar drift, el concepto principal es declarar el estado objetivo, no analizar el estado actual para determinar llamadas API.

---

## Question No. 13

**Tipo de Pregunta:** Opción Única

**Pregunta:** Exhibit:

Configuración del módulo raíz:
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

Estás usando un módulo de networking en tu configuración de Terraform con el nombre `my_network`. Tu módulo raíz incluye la configuración mostrada. Cuando ejecutas `terraform validate`, obtienes el error mostrado. ¿Cuál opción recuperaría exitosamente este valor de tu módulo de networking?

**Opciones:**
- A) Cambia el valor referenciado a `module.my_network.outputs.vnet_id`.
- B) Define el atributo `vnet_id` como una variable en el módulo de networking.
- C) Cambia el valor referenciado a `my_network.outputs.vnet_id`.
- D) Define el atributo `vnet_id` como un output en el módulo de networking.

**Respuesta Correcta:** D

**Explicación:** El error "Reference to undeclared output value" (Referencia a un valor de salida no declarado) ocurre porque el módulo de networking `my_network` no tiene un output llamado `vnet_id` declarado. En Terraform, solo puedes referenciar outputs de módulos que hayan sido explícitamente definidos usando el bloque `output` dentro de ese módulo. La sintaxis `module.my_network.vnet_id` es correcta para acceder a outputs de módulos, pero el módulo debe primero declarar `vnet_id` como un output. Una vez que agregues un bloque `output vnet_id` al módulo de networking, la referencia en el módulo raíz funcionará correctamente.

**Explicación:**

Opción A es incorrecta: La sintaxis correcta para acceder a outputs de módulos es `module.<nombre_módulo>.<nombre_output>`, no `module.<nombre_módulo>.outputs.<nombre_output>`. La sintaxis `.outputs` no es válida en Terraform.

Opción B es incorrecta: Definir `vnet_id` como una variable en el módulo de networking no ayuda a recuperarlo desde el módulo raíz. Las variables son entradas a un módulo, no salidas. Para exponer un valor de un módulo, debe ser declarado como un output.

Opción C es incorrecta: La forma correcta de referenciar un output de módulo es usando el prefijo `module.`. Sin el prefijo `module.`, Terraform intentaría encontrar un valor local o recurso llamado `my_network`, que no existe.

---

## Question No. 14

**Tipo de Pregunta:** Opción Única

**Pregunta:** Puedes definir múltiples bloques backend en tu configuración de Terraform para almacenar tu estado en múltiples ubicaciones.

**Opciones:**
- A) Verdadero
- B) Falso

**Respuesta Correcta:** B

**Explicación:** En Terraform, solo puedes definir un bloque backend por configuración. El bloque backend especifica dónde y cómo se almacena el estado de Terraform. Si intentas definir múltiples bloques backend en la misma configuración, Terraform retornará un error. Aunque puedes cambiar entre diferentes configuraciones de backend usando el flag `-reconfigure` durante `terraform init`, solo un backend puede estar activo a la vez en un directorio de trabajo dado. Si necesitas gestionar infraestructura en múltiples ubicaciones o entornos, el enfoque recomendado es usar workspaces separados de Terraform o directorios de configuración separados para cada destino de backend.

**Explicación:**

Opción A es incorrecta: Terraform solo permite un único bloque backend por configuración. Intentar definir múltiples backends resultará en un error de configuración durante la inicialización.

---

## Question No. 15

**Tipo de Pregunta:** Opción Única

**Pregunta:** Necesitas destruir todos los recursos en tu workspace de Terraform, excepto por `aws_instance.ubuntu[1]`, que quieres mantener. ¿Cómo puedes decirle a Terraform que deje de gestionar ese recurso específico sin destruirlo?

**Opciones:**
- A) Elimina el bloque de recurso de tu configuración.
- B) Cambia el valor del argumento count en el recurso.
- C) Ejecuta `terraform state rm aws_instance.ubuntu[1]`.
- D) Usa un bloque moved.

**Respuesta Correcta:** C

**Explicación:** El comando `terraform state rm` elimina un recurso del archivo de estado de Terraform sin destruir el recurso de infraestructura actual. Esto significa que Terraform ya no rastreará ni gestionará ese recurso específico. Cuando luego ejecutes `terraform destroy`, los recursos especificados en tu configuración serán destruidos, pero el recurso eliminado del estado se dejará intacto en tu proveedor de nube. Esta es la forma más limpia de mantener un recurso vivo mientras lo eliminas de la gestión de Terraform, ya que no requiere modificar tu configuración.

**Explicación:**

Opción A es incorrecta: Simplemente eliminar el bloque de recurso de la configuración y ejecutar `terraform destroy` o `terraform apply` destruiría el recurso, que es lo opuesto a lo que quieres.

Opción B es incorrecta: Cambiar el argumento count no evita que Terraform destruya el recurso; solo cambiaría cuáles instancias son gestionadas por el nuevo valor de count.

Opción D es incorrecta: El bloque `moved` se utiliza para refactorizar y reorganizar recursos dentro del estado durante cambios de configuración, no para preservar un recurso de la destrucción.

---

## Question No. 16

**Tipo de Pregunta:** Opción Única

**Pregunta:** Actualizaste tu configuración de Terraform y necesitas obtener una vista previa de los cambios propuestos a tu infraestructura. ¿Qué comando deberías ejecutar?

**Opciones:**
- A) terraform show
- B) terraform plan
- C) terraform validate
- D) terraform get

**Respuesta Correcta:** B

**Explicación:** El comando `terraform plan` analiza tu configuración actualizada y muestra una vista previa detallada de los cambios que Terraform haría en tu infraestructura. Esto incluye recursos que serán creados, modificados o destruidos, junto con los cambios específicos de propiedades. Ejecutar `terraform plan` antes de `terraform apply` es una mejor práctica que te permite revisar y verificar todos los cambios propuestos antes de que sean aplicados realmente a tu infraestructura.

**Explicación:**

Opción A es incorrecta: El comando `terraform show` muestra el estado actual de tu infraestructura o un archivo de plan guardado, pero no genera una vista previa de cambios propuestos basado en tu configuración actualizada.

Opción C es incorrecta: El comando `terraform validate` solo verifica la sintaxis y estructura de tu configuración de Terraform buscando errores, pero no genera una vista previa de cambios de infraestructura.

Opción D es incorrecta: El comando `terraform get` se utiliza para descargar y actualizar dependencias de módulos desde fuentes remotas; no genera una vista previa de cambios propuestos a la infraestructura.

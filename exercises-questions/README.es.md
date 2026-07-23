# Escenario de Certificación de Terraform

Este escenario demuestra conceptos clave de Terraform de la Certificación 004. Utiliza el backend `azurerm` de la carpeta `backend-state-bootstrap` con la clave del estado: `exercises-questions-terraform-004portal.tfstate`

## Tabla de Contenido

<table>
<tr>
<td colspan="6"><strong>Sección 1 — Preguntas 2 a 301</strong></td>
</tr>
<tr>
<td valign="top" width="16%">
<a href="#question-no-2">Question No. 2</a><br>
<a href="#question-no-3">Question No. 3</a><br>
<a href="#question-no-4">Question No. 4</a><br>
<a href="#question-no-5">Question No. 5</a><br>
<a href="#question-no-6">Question No. 6</a><br>
<a href="#question-no-7">Question No. 7</a><br>
<a href="#question-no-8">Question No. 8</a><br>
<a href="#question-no-9">Question No. 9</a><br>
<a href="#question-no-10">Question No. 10</a><br>
<a href="#question-no-11">Question No. 11</a><br>
<a href="#question-no-12">Question No. 12</a><br>
<a href="#question-no-13">Question No. 13</a><br>
<a href="#question-no-14">Question No. 14</a><br>
<a href="#question-no-15">Question No. 15</a><br>
<a href="#question-no-16">Question No. 16</a><br>
<a href="#question-no-17">Question No. 17</a><br>
<a href="#question-no-18">Question No. 18</a><br>
<a href="#question-no-19">Question No. 19</a><br>
<a href="#question-no-20">Question No. 20</a><br>
<a href="#question-no-21">Question No. 21</a><br>
<a href="#question-no-22">Question No. 22</a><br>
<a href="#question-no-23">Question No. 23</a><br>
<a href="#question-no-24">Question No. 24</a><br>
<a href="#question-no-25">Question No. 25</a><br>
<a href="#question-no-26">Question No. 26</a><br>
<a href="#question-no-27">Question No. 27</a><br>
<a href="#question-no-28">Question No. 28</a><br>
<a href="#question-no-29">Question No. 29</a><br>
<a href="#question-no-30">Question No. 30</a><br>
<a href="#question-no-31">Question No. 31</a><br>
<a href="#question-no-32">Question No. 32</a><br>
<a href="#question-no-33">Question No. 33</a><br>
<a href="#question-no-34">Question No. 34</a><br>
<a href="#question-no-35">Question No. 35</a><br>
<a href="#question-no-36">Question No. 36</a><br>
<a href="#question-no-37">Question No. 37</a><br>
<a href="#question-no-38">Question No. 38</a><br>
<a href="#question-no-39">Question No. 39</a><br>
<a href="#question-no-40">Question No. 40</a><br>
<a href="#question-no-41">Question No. 41</a><br>
<a href="#question-no-42">Question No. 42</a><br>
<a href="#question-no-43">Question No. 43</a><br>
<a href="#question-no-44">Question No. 44</a><br>
<a href="#question-no-45">Question No. 45</a><br>
<a href="#question-no-46">Question No. 46</a><br>
<a href="#question-no-47">Question No. 47</a><br>
<a href="#question-no-48">Question No. 48</a><br>
<a href="#question-no-49">Question No. 49</a><br>
<a href="#question-no-50">Question No. 50</a><br>
<a href="#question-no-51">Question No. 51</a>
</td>
<td valign="top" width="16%">
<a href="#question-no-52">Question No. 52</a><br>
<a href="#question-no-53">Question No. 53</a><br>
<a href="#question-no-54">Question No. 54</a><br>
<a href="#question-no-55">Question No. 55</a><br>
<a href="#question-no-56">Question No. 56</a><br>
<a href="#question-no-57">Question No. 57</a><br>
<a href="#question-no-58">Question No. 58</a><br>
<a href="#question-no-59">Question No. 59</a><br>
<a href="#question-no-60">Question No. 60</a><br>
<a href="#question-no-61">Question No. 61</a><br>
<a href="#question-no-62">Question No. 62</a><br>
<a href="#question-no-63">Question No. 63</a><br>
<a href="#question-no-64">Question No. 64</a><br>
<a href="#question-no-65">Question No. 65</a><br>
<a href="#question-no-66">Question No. 66</a><br>
<a href="#question-no-67">Question No. 67</a><br>
<a href="#question-no-68">Question No. 68</a><br>
<a href="#question-no-69">Question No. 69</a><br>
<a href="#question-no-70">Question No. 70</a><br>
<a href="#question-no-71">Question No. 71</a><br>
<a href="#question-no-72">Question No. 72</a><br>
<a href="#question-no-73">Question No. 73</a><br>
<a href="#question-no-74">Question No. 74</a><br>
<a href="#question-no-75">Question No. 75</a><br>
<a href="#question-no-76">Question No. 76</a><br>
<a href="#question-no-77">Question No. 77</a><br>
<a href="#question-no-78">Question No. 78</a><br>
<a href="#question-no-79">Question No. 79</a><br>
<a href="#question-no-80">Question No. 80</a><br>
<a href="#question-no-81">Question No. 81</a><br>
<a href="#question-no-82">Question No. 82</a><br>
<a href="#question-no-83">Question No. 83</a><br>
<a href="#question-no-84">Question No. 84</a><br>
<a href="#question-no-85">Question No. 85</a><br>
<a href="#question-no-86">Question No. 86</a><br>
<a href="#question-no-87">Question No. 87</a><br>
<a href="#question-no-88">Question No. 88</a><br>
<a href="#question-no-89">Question No. 89</a><br>
<a href="#question-no-90">Question No. 90</a><br>
<a href="#question-no-91">Question No. 91</a><br>
<a href="#question-no-92">Question No. 92</a><br>
<a href="#question-no-93">Question No. 93</a><br>
<a href="#question-no-94">Question No. 94</a><br>
<a href="#question-no-95">Question No. 95</a><br>
<a href="#question-no-96">Question No. 96</a><br>
<a href="#question-no-97">Question No. 97</a><br>
<a href="#question-no-98">Question No. 98</a><br>
<a href="#question-no-99">Question No. 99</a><br>
<a href="#question-no-100">Question No. 100</a><br>
<a href="#question-no-101">Question No. 101</a>
</td>
<td valign="top" width="16%">
<a href="#question-no-102">Question No. 102</a><br>
<a href="#question-no-103">Question No. 103</a><br>
<a href="#question-no-104">Question No. 104</a><br>
<a href="#question-no-105">Question No. 105</a><br>
<a href="#question-no-106">Question No. 106</a><br>
<a href="#question-no-107">Question No. 107</a><br>
<a href="#question-no-108">Question No. 108</a><br>
<a href="#question-no-109">Question No. 109</a><br>
<a href="#question-no-110">Question No. 110</a><br>
<a href="#question-no-111">Question No. 111</a><br>
<a href="#question-no-112">Question No. 112</a><br>
<a href="#question-no-113">Question No. 113</a><br>
<a href="#question-no-114">Question No. 114</a><br>
<a href="#question-no-115">Question No. 115</a><br>
<a href="#question-no-116">Question No. 116</a><br>
<a href="#question-no-117">Question No. 117</a><br>
<a href="#question-no-118">Question No. 118</a><br>
<a href="#question-no-119">Question No. 119</a><br>
<a href="#question-no-120">Question No. 120</a><br>
<a href="#question-no-121">Question No. 121</a><br>
<a href="#question-no-122">Question No. 122</a><br>
<a href="#question-no-123">Question No. 123</a><br>
<a href="#question-no-124">Question No. 124</a><br>
<a href="#question-no-125">Question No. 125</a><br>
<a href="#question-no-126">Question No. 126</a><br>
<a href="#question-no-127">Question No. 127</a><br>
<a href="#question-no-128">Question No. 128</a><br>
<a href="#question-no-129">Question No. 129</a><br>
<a href="#question-no-130">Question No. 130</a><br>
<a href="#question-no-131">Question No. 131</a><br>
<a href="#question-no-132">Question No. 132</a><br>
<a href="#question-no-133">Question No. 133</a><br>
<a href="#question-no-134">Question No. 134</a><br>
<a href="#question-no-135">Question No. 135</a><br>
<a href="#question-no-136">Question No. 136</a><br>
<a href="#question-no-137">Question No. 137</a><br>
<a href="#question-no-138">Question No. 138</a><br>
<a href="#question-no-139">Question No. 139</a><br>
<a href="#question-no-140">Question No. 140</a><br>
<a href="#question-no-141">Question No. 141</a><br>
<a href="#question-no-142">Question No. 142</a><br>
<a href="#question-no-143">Question No. 143</a><br>
<a href="#question-no-144">Question No. 144</a><br>
<a href="#question-no-145">Question No. 145</a><br>
<a href="#question-no-146">Question No. 146</a><br>
<a href="#question-no-147">Question No. 147</a><br>
<a href="#question-no-148">Question No. 148</a><br>
<a href="#question-no-149">Question No. 149</a><br>
<a href="#question-no-150">Question No. 150</a><br>
<a href="#question-no-151">Question No. 151</a>
</td>
<td valign="top" width="16%">
<a href="#question-no-152">Question No. 152</a><br>
<a href="#question-no-153">Question No. 153</a><br>
<a href="#question-no-154">Question No. 154</a><br>
<a href="#question-no-155">Question No. 155</a><br>
<a href="#question-no-156">Question No. 156</a><br>
<a href="#question-no-157">Question No. 157</a><br>
<a href="#question-no-158">Question No. 158</a><br>
<a href="#question-no-159">Question No. 159</a><br>
<a href="#question-no-160">Question No. 160</a><br>
<a href="#question-no-161">Question No. 161</a><br>
<a href="#question-no-162">Question No. 162</a><br>
<a href="#question-no-163">Question No. 163</a><br>
<a href="#question-no-164">Question No. 164</a><br>
<a href="#question-no-165">Question No. 165</a><br>
<a href="#question-no-166">Question No. 166</a><br>
<a href="#question-no-167">Question No. 167</a><br>
<a href="#question-no-168">Question No. 168</a><br>
<a href="#question-no-169">Question No. 169</a><br>
<a href="#question-no-170">Question No. 170</a><br>
<a href="#question-no-171">Question No. 171</a><br>
<a href="#question-no-172">Question No. 172</a><br>
<a href="#question-no-173">Question No. 173</a><br>
<a href="#question-no-174">Question No. 174</a><br>
<a href="#question-no-175">Question No. 175</a><br>
<a href="#question-no-176">Question No. 176</a><br>
<a href="#question-no-177">Question No. 177</a><br>
<a href="#question-no-178">Question No. 178</a><br>
<a href="#question-no-179">Question No. 179</a><br>
<a href="#question-no-180">Question No. 180</a><br>
<a href="#question-no-181">Question No. 181</a><br>
<a href="#question-no-182">Question No. 182</a><br>
<a href="#question-no-183">Question No. 183</a><br>
<a href="#question-no-184">Question No. 184</a><br>
<a href="#question-no-185">Question No. 185</a><br>
<a href="#question-no-186">Question No. 186</a><br>
<a href="#question-no-187">Question No. 187</a><br>
<a href="#question-no-188">Question No. 188</a><br>
<a href="#question-no-189">Question No. 189</a><br>
<a href="#question-no-190">Question No. 190</a><br>
<a href="#question-no-191">Question No. 191</a><br>
<a href="#question-no-192">Question No. 192</a><br>
<a href="#question-no-193">Question No. 193</a><br>
<a href="#question-no-194">Question No. 194</a><br>
<a href="#question-no-195">Question No. 195</a><br>
<a href="#question-no-196">Question No. 196</a><br>
<a href="#question-no-197">Question No. 197</a><br>
<a href="#question-no-198">Question No. 198</a><br>
<a href="#question-no-199">Question No. 199</a><br>
<a href="#question-no-200">Question No. 200</a><br>
<a href="#question-no-201">Question No. 201</a>
</td>
<td valign="top" width="16%">
<a href="#question-no-202">Question No. 202</a><br>
<a href="#question-no-203">Question No. 203</a><br>
<a href="#question-no-204">Question No. 204</a><br>
<a href="#question-no-205">Question No. 205</a><br>
<a href="#question-no-206">Question No. 206</a><br>
<a href="#question-no-207">Question No. 207</a><br>
<a href="#question-no-208">Question No. 208</a><br>
<a href="#question-no-209">Question No. 209</a><br>
<a href="#question-no-210">Question No. 210</a><br>
<a href="#question-no-211">Question No. 211</a><br>
<a href="#question-no-212">Question No. 212</a><br>
<a href="#question-no-213">Question No. 213</a><br>
<a href="#question-no-214">Question No. 214</a><br>
<a href="#question-no-215">Question No. 215</a><br>
<a href="#question-no-216">Question No. 216</a><br>
<a href="#question-no-217">Question No. 217</a><br>
<a href="#question-no-218">Question No. 218</a><br>
<a href="#question-no-219">Question No. 219</a><br>
<a href="#question-no-220">Question No. 220</a><br>
<a href="#question-no-221">Question No. 221</a><br>
<a href="#question-no-222">Question No. 222</a><br>
<a href="#question-no-223">Question No. 223</a><br>
<a href="#question-no-224">Question No. 224</a><br>
<a href="#question-no-225">Question No. 225</a><br>
<a href="#question-no-226">Question No. 226</a><br>
<a href="#question-no-227">Question No. 227</a><br>
<a href="#question-no-228">Question No. 228</a><br>
<a href="#question-no-229">Question No. 229</a><br>
<a href="#question-no-230">Question No. 230</a><br>
<a href="#question-no-231">Question No. 231</a><br>
<a href="#question-no-232">Question No. 232</a><br>
<a href="#question-no-233">Question No. 233</a><br>
<a href="#question-no-234">Question No. 234</a><br>
<a href="#question-no-235">Question No. 235</a><br>
<a href="#question-no-236">Question No. 236</a><br>
<a href="#question-no-237">Question No. 237</a><br>
<a href="#question-no-238">Question No. 238</a><br>
<a href="#question-no-239">Question No. 239</a><br>
<a href="#question-no-240">Question No. 240</a><br>
<a href="#question-no-241">Question No. 241</a><br>
<a href="#question-no-242">Question No. 242</a><br>
<a href="#question-no-243">Question No. 243</a><br>
<a href="#question-no-244">Question No. 244</a><br>
<a href="#question-no-245">Question No. 245</a><br>
<a href="#question-no-246">Question No. 246</a><br>
<a href="#question-no-247">Question No. 247</a><br>
<a href="#question-no-248">Question No. 248</a><br>
<a href="#question-no-249">Question No. 249</a><br>
<a href="#question-no-250">Question No. 250</a><br>
<a href="#question-no-251">Question No. 251</a>
</td>
<td valign="top" width="16%">
<a href="#question-no-252">Question No. 252</a><br>
<a href="#question-no-253">Question No. 253</a><br>
<a href="#question-no-254">Question No. 254</a><br>
<a href="#question-no-255">Question No. 255</a><br>
<a href="#question-no-256">Question No. 256</a><br>
<a href="#question-no-257">Question No. 257</a><br>
<a href="#question-no-258">Question No. 258</a><br>
<a href="#question-no-259">Question No. 259</a><br>
<a href="#question-no-260">Question No. 260</a><br>
<a href="#question-no-261">Question No. 261</a><br>
<a href="#question-no-262">Question No. 262</a><br>
<a href="#question-no-263">Question No. 263</a><br>
<a href="#question-no-264">Question No. 264</a><br>
<a href="#question-no-265">Question No. 265</a><br>
<a href="#question-no-266">Question No. 266</a><br>
<a href="#question-no-267">Question No. 267</a><br>
<a href="#question-no-268">Question No. 268</a><br>
<a href="#question-no-269">Question No. 269</a><br>
<a href="#question-no-270">Question No. 270</a><br>
<a href="#question-no-271">Question No. 271</a><br>
<a href="#question-no-272">Question No. 272</a><br>
<a href="#question-no-273">Question No. 273</a><br>
<a href="#question-no-274">Question No. 274</a><br>
<a href="#question-no-275">Question No. 275</a><br>
<a href="#question-no-276">Question No. 276</a><br>
<a href="#question-no-277">Question No. 277</a><br>
<a href="#question-no-278">Question No. 278</a><br>
<a href="#question-no-279">Question No. 279</a><br>
<a href="#question-no-280">Question No. 280</a><br>
<a href="#question-no-281">Question No. 281</a><br>
<a href="#question-no-282">Question No. 282</a><br>
<a href="#question-no-283">Question No. 283</a><br>
<a href="#question-no-284">Question No. 284</a><br>
<a href="#question-no-285">Question No. 285</a><br>
<a href="#question-no-286">Question No. 286</a><br>
<a href="#question-no-287">Question No. 287</a><br>
<a href="#question-no-288">Question No. 288</a><br>
<a href="#question-no-289">Question No. 289</a><br>
<a href="#question-no-290">Question No. 290</a><br>
<a href="#question-no-291">Question No. 291</a><br>
<a href="#question-no-292">Question No. 292</a><br>
<a href="#question-no-293">Question No. 293</a><br>
<a href="#question-no-294">Question No. 294</a><br>
<a href="#question-no-295">Question No. 295</a><br>
<a href="#question-no-296">Question No. 296</a><br>
<a href="#question-no-297">Question No. 297</a><br>
<a href="#question-no-298">Question No. 298</a><br>
<a href="#question-no-299">Question No. 299</a><br>
<a href="#question-no-300">Question No. 300</a><br>
<a href="#question-no-301">Question No. 301</a>
</td>
</tr>
<tr>
<td colspan="6"><strong>Sección 2 — Preguntas 302 a 321</strong></td>
</tr>
<tr>
<td valign="top" width="16%">
<a href="#question-no-302">Question No. 302</a><br>
<a href="#question-no-303">Question No. 303</a><br>
<a href="#question-no-304">Question No. 304</a><br>
<a href="#question-no-305">Question No. 305</a><br>
<a href="#question-no-306">Question No. 306</a><br>
<a href="#question-no-307">Question No. 307</a><br>
<a href="#question-no-308">Question No. 308</a><br>
<a href="#question-no-309">Question No. 309</a><br>
<a href="#question-no-310">Question No. 310</a><br>
<a href="#question-no-311">Question No. 311</a><br>
<a href="#question-no-312">Question No. 312</a><br>
<a href="#question-no-313">Question No. 313</a><br>
<a href="#question-no-314">Question No. 314</a><br>
<a href="#question-no-315">Question No. 315</a><br>
<a href="#question-no-316">Question No. 316</a><br>
<a href="#question-no-317">Question No. 317</a><br>
<a href="#question-no-318">Question No. 318</a><br>
</td>
</tr>
</table>

## Question No. 2

**Pregunta:** Deseas crear una cadena que combine un random_id generado y una variable y reutilizar esa cadena varias veces en tu configuración. ¿Cuál es la forma más simple y correcta de implementar esto sin repetir el random_id y la variable?

**Opciones:**
- A) Usar un módulo.
- B) Agregar un valor de salida.
- C) Agregar un valor local.
- D) Usar una fuente de datos.

**Respuesta Correcta:** C

**Explicación:** La forma más sencilla y eficiente de asignar un nombre a una expresión para reutilizarla múltiples veces dentro de un mismo módulo es mediante el uso de valores locales (locals). Los locals funcionan como constantes o variables temporales dentro de la configuración, permitiendo combinar valores de diferentes fuentes (como un recurso random_id y una variable de entrada) en una sola expresión centralizada. Esto mejora la legibilidad y evita la duplicación de código, facilitando el mantenimiento si la lógica de esa cadena de texto llega a cambiar en el futuro.

**Explicación de opciones incorrectas:**

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

---

## Question No. 17

**Tipo de Pregunta:** Opción Única

**Pregunta:** Exhibit:

```
data vsphere_datacenter dc {}

resource vsphere_folder parent {
  path = Production
  type = vm

  datacenter_id = ________
}
```

Quieres pasar el id del data source `vsphere_datacenter` al argumento `datacenter_id` del recurso `vsphere_folder`. ¿Qué referencia usarías?

**Opciones:**
- A) `data.vsphere_datacenter.dc.id`
- B) `vsphere_datacenter.dc.id`
- C) `data.vsphere_datacenter.dc`
- D) `data.de.id`

**Respuesta Correcta:** A

**Explicación:** En Terraform, la forma correcta de referenciar un atributo de un data source es `data.<tipo_data_source>.<nombre>.<atributo>`. Aquí, el tipo de data source es `vsphere_datacenter`, el nombre local es `dc`, y el atributo requerido es `id`, por lo tanto la expresión correcta es `data.vsphere_datacenter.dc.id`.

**Explicación:**

Opción B es incorrecta: Le falta el prefijo obligatorio `data.` que identifica que se trata de un data source.

Opción C es incorrecta: Esto referencia el objeto completo del data source y no el atributo `id` que requiere `datacenter_id`.

Opción D es incorrecta: `de` no es el nombre declarado de ningún data source en el exhibit, por lo que la referencia es inválida.

---

## Question No. 18

**Tipo de Pregunta:** Opción Única

**Pregunta:** Puedes configurar múltiples bloques cloud en tu configuración de Terraform para conectar tu workspace tanto a HCP Terraform como a tu instancia de Terraform Enterprise.

**Opciones:**
- A) Verdadero
- B) Falso

**Respuesta Correcta:** B

**Explicación:** Terraform permite solo un bloque `cloud` en una configuración dada. El bloque `cloud` configura operaciones remotas para un único destino de HCP Terraform o Terraform Enterprise. No puedes definir múltiples bloques `cloud` para conectar una misma configuración a múltiples plataformas remotas de Terraform al mismo tiempo.

**Explicación:**

Opción A es incorrecta: No está soportado usar múltiples bloques `cloud` en la misma configuración.

---

## Question No. 19

**Tipo de Pregunta:** Opción Única

**Pregunta:** Un valor local de Terraform puede referenciar otros valores locales de Terraform.

**Opciones:**
- A) Verdadero
- B) Falso

**Respuesta Correcta:** A

**Explicación:** En Terraform, los valores locales pueden referenciar otros valores locales dentro del mismo módulo, lo cual ayuda a componer expresiones reutilizables y evitar duplicación. La única restricción es evitar dependencias circulares.

**Explicación:**

Opción B es incorrecta: Esta afirmación es falsa porque Terraform sí permite referencias entre valores locales.

---

## Question No. 20

**Tipo de Pregunta:** Opción Única

**Pregunta:** Exhibit:

```
resource kubernetes_namespace example {
  name = test
}
```

Se muestra un bloque de recurso en el exhibit. ¿Cómo referenciarías el atributo name de este recurso en HCL?

**Opciones:**
- A) kubernetes_namespace.example,name
- B) kubernetes_namespace.test.name
- C) data.kubernetes_namespace.name
- D) resource.kubernetes_namespace.example.name

**Respuesta Correcta:** A

**Explicación:** El formato canónico de Terraform para referenciar un atributo de un recurso administrado es `<tipo_recurso>.<nombre_recurso>.<atributo>`. Para este recurso, sería `kubernetes_namespace.example.name`. La opción A es la opción intencionada porque referencia el tipo y nombre del recurso declarado.

**Explicación:**

Opción B es incorrecta: `test` es el valor asignado al argumento `name`, no la etiqueta del recurso en Terraform.

Opción C es incorrecta: Esto usa el prefijo `data` para data sources, pero el exhibit muestra un recurso administrado, no un data source.

Opción D es incorrecta: Las referencias de recursos en Terraform no usan el prefijo inicial `resource.`.

---

## Question No. 21

**Tipo de Pregunta:** Opción Única

**Pregunta:** Exhibit:

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

Se muestran dos bloques de recurso: `azurerm_linux_web_app` y `azurerm_role_assignment`. Al aprovisionar, la web app usara el role assignment durante la creacion, por lo que el role assignment debe crearse primero. ¿Como aseguras que el recurso `azurerm_role_assignment` se cree primero?

**Opciones:**
- A) Agregar un argumento `depends_on` a `azurerm_linux_web_app`.
- B) Agregar un argumento `create_before_destroy` a `azurerm_role_assignment`.
- C) Cambiar el orden de los bloques `azurerm_linux_web_app` y `azurerm_role_assignment`.
- D) Agregar un argumento `count` a ambos recursos.

**Respuesta Correcta:** A

**Explicacion:** Para garantizar el orden de creacion en Terraform cuando existe una dependencia requerida, se usa `depends_on`. Al agregar `depends_on = [azurerm_role_assignment.kv_access]` al recurso de la web app, Terraform creara primero el role assignment y luego la web app.

**Explicacion:**

Opcion B es incorrecta: `create_before_destroy` controla el comportamiento de reemplazo durante actualizaciones, no el orden de dependencia inicial entre recursos distintos.

Opcion C es incorrecta: El orden de los bloques en archivos Terraform no controla el orden de creacion de recursos.

Opcion D es incorrecta: `count` controla cuantas instancias se crean, no el orden de dependencias.

---

## Question No. 22

**Tipo de Pregunta:** Opcion Unica

**Pregunta:** Tu equipo colabora en infraestructura usando Terraform y quiere dar formato al codigo para seguir las convenciones de estilo del lenguaje Terraform. ¿Como puedes actualizar tu codigo para cumplir estos requisitos?

**Opciones:**
- A) Ejecutar `terraform fmt` para actualizar tus configuraciones Terraform.
- B) Reemplazar todos los tabs por espacios en tus archivos de configuracion Terraform.
- C) Ejecutar `terraform validate` antes de ejecutar `terraform plan` o `terraform apply`.
- D) Terraform formatea automaticamente la configuracion en `terraform apply`.

**Respuesta Correcta:** A

**Explicacion:** `terraform fmt` es el formateador integrado para archivos de configuracion Terraform. Reescribe los archivos para seguir el estilo canonico de Terraform y asegurar formato consistente en el equipo.

**Explicacion:**

Opcion B es incorrecta: Reemplazar espacios o tabs manualmente no garantiza cumplimiento completo del estilo Terraform.

Opcion C es incorrecta: `terraform validate` verifica sintaxis y validez, pero no formatea archivos.

Opcion D es incorrecta: `terraform apply` no formatea automaticamente archivos de configuracion.

---

## Question No. 23

**Tipo de Pregunta:** Opcion Unica

**Pregunta:** Al usar multiples configuraciones del mismo provider de Terraform, ¿que meta-argumento debes incluir en cualquier configuracion no predeterminada del provider?

**Opciones:**
- A) depends_on
- B) alias
- C) name
- D) id

**Respuesta Correcta:** B

**Explicacion:** En Terraform, las configuraciones adicionales del mismo provider deben usar el meta-argumento `alias`. Esto permite definir y referenciar multiples instancias distintas del provider.

**Explicacion:**

Opcion A es incorrecta: `depends_on` se usa para relaciones de dependencia, no para distinguir configuraciones de provider.

Opcion C es incorrecta: `name` no es el meta-argumento usado para instancias no predeterminadas de provider.

Opcion D es incorrecta: `id` no es un meta-argumento de configuracion de provider.

---

## Question No. 24

**Tipo de Pregunta:** Opcion Unica

**Pregunta:** Al declarar una variable, establecer el argumento `sensitive` en true evitara que el valor se almacene en el archivo de estado.

**Opciones:**
- A) Verdadero
- B) Falso

**Respuesta Correcta:** B

**Explicacion:** Marcar una variable como `sensitive = true` solo afecta como Terraform muestra valores en la salida de CLI y logs. No evita que el valor se almacene en el estado. Los datos sensibles aun pueden estar en el archivo de estado, por lo que sigue siendo necesario proteger el estado (cifrado, control de acceso, backend seguro).

**Explicacion:**

Opcion A es incorrecta: Los valores sensibles se siguen almacenando en el estado; solo se ocultan en muchas salidas.

---

## Question No. 25

**Tipo de Pregunta:** Opción Única

**Pregunta:** El registro privado de HCP Terraform mantiene las configuraciones de módulos confidenciales dentro de tu organización.

**Opciones:**
- A) Verdadero
- B) Falso

**Respuesta Correcta:** A

**Explicación:** El registro privado de HCP Terraform está diseñado para alojar y compartir módulos de Terraform internamente dentro de una organización. A diferencia del Terraform Registry público, los módulos almacenados en el registro privado solo son accesibles para los miembros de esa organización, manteniendo las configuraciones confidenciales y evitando la exposición externa.

**Explicación:**

Opción B es incorrecta: El registro privado restringe explícitamente el acceso al interior de la organización, por lo que los módulos no están disponibles públicamente.

---

## Question No. 26

**Tipo de Pregunta:** Opción Única

**Pregunta:** ¿Cuál de las siguientes opciones no es una forma de ejecutar terraform destroy?

**Opciones:**
- A) terraform destroy
- B) Todas estas opciones ejecutan terraform destroy
- C) terraform plan -destroy
- D) terraform destroy -auto-approve

**Respuesta Correcta:** C

**Explicación:** `terraform plan -destroy` genera un plan de ejecución de destrucción pero **no** ejecuta la destrucción. Solo muestra una vista previa de lo que sería destruido. Para destruir recursos realmente se necesita `terraform destroy` (con o sin `-auto-approve`) o `terraform apply` con un plan de destrucción guardado.

**Explicación:**

Opción A es incorrecta: `terraform destroy` es el comando estándar para destruir todos los recursos administrados.

Opción B es incorrecta: No todas las opciones ejecutan una destrucción real; la opción C solo produce un plan.

Opción D es incorrecta: `terraform destroy -auto-approve` es un comando de destrucción válido que omite el prompt de confirmación.

---

## Question No. 27

**Tipo de Pregunta:** Opción Única

**Pregunta:** El comando terraform output muestra los outputs de los módulos hijo.

**Opciones:**
- A) Verdadero
- B) Falso

**Respuesta Correcta:** B

**Explicación:** El comando `terraform output` solo muestra los valores de salida definidos en el módulo **raíz**. Los outputs de módulos hijo no se exponen directamente a menos que el módulo raíz los reexporte explícitamente mediante sus propios bloques output que referencian los outputs del módulo hijo.

**Explicación:**

Opción A es incorrecta: Los outputs de módulos hijo son privados al módulo raíz a menos que se surfaceen explícitamente mediante bloques output a nivel de raíz.

---

## Question No. 28

**Tipo de Pregunta:** Opción Única

**Pregunta:** Tienes una configuración simple de Terraform que contiene una VM en un proveedor de nube. Ejecutas `terraform apply` y la VM se crea exitosamente. ¿Qué sucederá si ejecutas `terraform apply` nuevamente de inmediato sin cambiar ningún código de Terraform?

**Opciones:**
- A) Terraform terminará y recreará la VM.
- B) Terraform creará otra VM duplicada.
- C) Terraform aplicará la VM al archivo de estado.
- D) Terraform no tomará ninguna acción.

**Respuesta Correcta:** D

**Explicación:** Terraform es declarativo e idempotente. Después del primer `terraform apply`, el archivo de estado registra la VM existente. Un `terraform apply` posterior sin cambios en el código compara el estado deseado (configuración) con el estado actual (archivo de estado + infraestructura real), no encuentra diferencias y no toma ninguna acción.

**Explicación:**

Opción A es incorrecta: Terraform no recrea recursos innecesariamente; solo los reemplaza cuando los cambios de configuración lo requieren.

Opción B es incorrecta: Terraform gestiona los recursos declarados en la configuración, no crea duplicados arbitrarios.

Opción C es incorrecta: La VM ya está representada en el archivo de estado desde el primer apply; no se necesita ninguna actualización.

---

## Question No. 29

**Tipo de Pregunta:** Opción Única

**Pregunta:** Estás creando una configuración de Terraform reutilizable y quieres incluir una etiqueta `billing_dept` opcional para que tu equipo de Finanzas pueda rastrear el gasto específico por equipo en los recursos. ¿Cuál de las siguientes declaraciones de la variable `billing_dept` logrará esto?

**Opciones:**
- A) `variable billing_dept { type = default}`
- B) `variable billing_dept { default =}`
- C) `variable billing_dept { type = optional(string)}`
- D) `variable billing_dept { optional = true}`

**Respuesta Correcta:** B

**Explicación:** Para hacer una variable opcional en Terraform, se proporciona un valor `default`. Cuando una variable tiene un `default`, los que la llaman no están obligados a suministrarla. Un default vacío (`default = ""`) o nulo (`default = null`) son patrones comunes para etiquetas de cadena opcionales.

**Explicación:**

Opción A es incorrecta: `type = default` no es sintaxis HCL válida; `default` es un argumento separado, no un tipo.

Opción C es incorrecta: `optional()` es un modificador de tipo usado dentro de restricciones de tipo **object** para marcar atributos específicos del objeto como opcionales, no para declarar variables de nivel superior como opcionales.

Opción D es incorrecta: `optional = true` no es un argumento reconocido para declaraciones de variables.

---

## Question No. 30

**Tipo de Pregunta:** Opción Única

**Pregunta:** ¿Cuál de estos flujos de trabajo está habilitado únicamente por el uso de Infraestructura como Código?

**Opciones:**
- A) Escalado automático de recursos basado en la carga de la aplicación.
- B) Control de acceso basado en roles de los recursos de nube.
- C) Optimización de costos del despliegue de infraestructura.
- D) Revisar los cambios propuestos para detectar posibles problemas de seguridad.

**Respuesta Correcta:** D

**Explicación:** IaC habilita flujos de trabajo de revisión de código, que permiten a los equipos inspeccionar los cambios de infraestructura propuestos (mediante pull requests, por ejemplo) antes de aplicarlos. Esto hace posible revisar cambios por problemas de seguridad, cumplimiento y corrección como parte de un pipeline estándar de desarrollo. Las otras opciones son capacidades proporcionadas por plataformas de nube o herramientas de terceros de forma independiente a IaC.

**Explicación:**

Opción A es incorrecta: El autoescalado es una característica de la plataforma de nube (por ejemplo, Auto Scaling Groups, VMSS) que opera en tiempo de ejecución, independientemente de si se usa IaC.

Opción B es incorrecta: El control de acceso basado en roles (RBAC) es una característica del proveedor de nube y de gestión de identidades disponible sin IaC.

Opción C es incorrecta: La optimización de costos puede lograrse mediante herramientas nativas de la nube, dashboards de facturación y políticas, todo sin IaC.

---

## Question No. 31

**Tipo de Pregunta:** Opción Única

**Pregunta:** Exhibit:

```
resource 'aws_instance' 'example' {
  ami           = 'ami-0a123456789abcdef'
  instance_type = 't3.micro'
}
```

Estás actualizando un módulo hijo con el bloque de recurso mostrado en el exhibit. El atributo `public_ip` del recurso debe ser accesible para el módulo padre. ¿Cómo cumples este requisito?

**Opciones:**
- A) Crear un output en el módulo hijo.
- B) Agregar un data source al módulo padre.
- C) Agregar un bloque import al módulo padre.
- D) Crear un valor local en el módulo hijo.

**Respuesta Correcta:** A

**Explicación:** Para hacer que valores de un módulo hijo estén disponibles al módulo padre, debes declarar un bloque `output` en el módulo hijo. Luego el módulo padre puede referenciar `module.<nombre_hijo>.<nombre_output>`. Exponer `public_ip` de esta forma es el patrón estándar de interfaz de módulos en Terraform.

**Explicación:**

Opción B es incorrecta: Un data source en el padre no expone atributos de un recurso definido dentro de la interfaz del módulo hijo.

Opción C es incorrecta: Los bloques import se usan para incorporar infraestructura existente al estado, no para exponer valores del módulo hijo.

Opción D es incorrecta: Los valores locales son internos al módulo y no son accesibles desde el módulo padre.

---

## Question No. 32

**Tipo de Pregunta:** Opción Única

**Pregunta:** Corregiste un typo en el nombre de un recurso, cambiándolo de `aws_s3_bucket.photoes` a `aws_s3_bucket.photos`. Quieres actualizar el estado de Terraform para que el recurso existente sea reconocido con el nuevo nombre, sin destruirlo ni recrearlo. ¿Qué configuración debes usar?

**Opciones:**
- A) Remover el recurso anterior de tu configuración y volver a importarlo.
- B) Ejecutar `terraform apply -refresh-only`.
- C) No hacer nada --- Terraform actualizará el estado automáticamente.
- D) Agregar un bloque moved a tu configuración.

**Respuesta Correcta:** D

**Explicación:** Un bloque `moved` le indica a Terraform que un objeto rastreado en una dirección fue renombrado a otra dirección. Esto actualiza el mapeo del estado de forma segura sin destruir y recrear el recurso de infraestructura.

**Explicación:**

Opción A es incorrecta: Reimportar es innecesario y más propenso a errores para un simple renombre en configuración.

Opción B es incorrecta: `-refresh-only` actualiza el estado con valores reales, pero no remapea direcciones de recursos.

Opción C es incorrecta: Terraform no infiere automáticamente renombres arbitrarios de direcciones sin guía explícita.

---

## Question No. 33

**Tipo de Pregunta:** Opción Única

**Pregunta:** ¿Qué argumento puedes establecer en un bloque module para evitar que Terraform actualice la configuración del módulo durante una operación init o get?

**Opciones:**
- A) version
- B) lifecycle
- C) count
- D) source

**Respuesta Correcta:** A

**Explicación:** Establecer el argumento `version` (normalmente con una versión exacta) restringe qué release de módulo puede usar Terraform, evitando actualizaciones no intencionadas del módulo durante `terraform init` o `terraform get`.

**Explicación:**

Opción B es incorrecta: `lifecycle` no está soportado para bloques module.

Opción C es incorrecta: `count` controla la cantidad de instancias del módulo, no sus actualizaciones de versión.

Opción D es incorrecta: `source` identifica de dónde proviene el módulo, pero por sí solo no fija una versión específica del módulo.

---

## Question No. 34

**Tipo de Pregunta:** Opción Única

**Pregunta:** ¿Por qué usarías el flag `-replace` con `terraform apply`?

**Opciones:**
- A) Quieres forzar a Terraform a destruir un recurso en el próximo apply.
- B) Quieres que Terraform ignore un recurso en el próximo apply.
- C) Quieres forzar a Terraform a destruir y recrear un recurso en el próximo apply.
- D) Quieres que Terraform destruya toda la infraestructura en tu workspace.

**Respuesta Correcta:** C

**Explicación:** El flag `-replace` marca una instancia específica de recurso para reemplazo, lo que significa que Terraform la destruirá y luego la recreará durante el apply.

**Explicación:**

Opción A es incorrecta: `-replace` no significa solo destruir; significa reemplazar (destruir + crear).

Opción B es incorrecta: Ignorar cambios de recursos se maneja mediante lifecycle o cambios en configuración, no con `-replace`.

Opción D es incorrecta: Destruir toda la infraestructura se hace con `terraform destroy`.

---

## Question No. 35

**Tipo de Pregunta:** Opción Única

**Pregunta:** Tu configuración de Terraform declara una variable. Quieres forzar que su valor cumpla requisitos específicos y bloquear la operación de Terraform si no se cumplen. ¿Qué debes agregar en tu configuración?

**Opciones:**
- A) Agregar un check block de nivel superior.
- B) Agregar un validation block al bloque variable.
- C) Agregar un validation block de nivel superior.
- D) Agregar un check block dentro del bloque variable.

**Respuesta Correcta:** B

**Explicación:** Usa un bloque `validation` dentro del bloque `variable` para imponer restricciones de entrada. Si la condición falla, Terraform genera un error y detiene la operación.

**Explicación:**

Opción A es incorrecta: Los bloques `check` de nivel superior no son el mecanismo estándar para validar entradas de variables en el momento de declaración.

Opción C es incorrecta: No existe un bloque `validation` de nivel superior en la sintaxis de Terraform.

Opción D es incorrecta: `check` no se anida dentro de bloques variable para validación de inputs.

---

## Question No. 36

**Tipo de Pregunta:** Opción Única

**Pregunta:** Exhibit:

```
variable 'sizes' {
  type        = list(string)
  description = 'Valid server sizes'
  default     = ['small', 'medium', 'large']
}
```

Se muestra una declaración de variable en el exhibit. ¿Cuál es la forma correcta de obtener el valor `medium` de esta variable?

**Opciones:**
- A) `var.sizes[0]`
- B) `var.sizes[1]`
- C) `var.sizes[2]`
- D) `var.sizes[3]`

**Respuesta Correcta:** B

**Explicación:** Las listas en Terraform están indexadas desde cero. Para `['small', 'medium', 'large']`, el índice 0 es `small`, el índice 1 es `medium` y el índice 2 es `large`.

**Explicación:**

Opción A es incorrecta: El índice 0 retorna `small`.

Opción C es incorrecta: El índice 2 retorna `large`.

Opción D es incorrecta: El índice 3 está fuera de rango para esta lista de 3 elementos.

---

## Question No. 37

**Tipo de Pregunta:** Opción Múltiple

**Pregunta:** ¿Qué dos pasos son requeridos para aprovisionar nueva infraestructura en el workflow de Terraform? (Selecciona las 2 respuestas correctas.)

**Opciones:**
- A) Import
- B) Apply
- C) Validate
- D) Plan
- E) Init

**Respuesta Correcta:** B, E

**Explicación:** Para aprovisionar infraestructura nueva con Terraform, debes inicializar el directorio de trabajo (`terraform init`) y luego aplicar la configuración (`terraform apply`). `plan` es recomendado pero no estrictamente obligatorio para ejecutar el aprovisionamiento.

**Explicación:**

Opción A es incorrecta: `import` es para incorporar recursos existentes al estado, no es requerido para aprovisionamiento nuevo.

Opción C es incorrecta: `validate` es útil para revisión sintáctica, pero no obligatorio para aprovisionar.

Opción D es incorrecta: `plan` es buena práctica, pero apply puede ejecutarse sin correr plan explícitamente antes.

---

## Question No. 38

**Tipo de Pregunta:** Opción Única

**Pregunta:** Exhibit:

```
data 'aws_ami' 'web' {
  most_recent = true
  owners      = ['self']
  tags = {
    Name = 'web-server'
  }
}
```

Se muestra un data source en el exhibit. ¿Cómo referenciarías el atributo `id` de este data source?

**Opciones:**
- A) `aws_ami.web.id`
- B) `web.id`
- C) `data.aws_ami.web.id`
- D) `data.web.id`

**Respuesta Correcta:** C

**Explicación:** Las referencias de data source siguen el patrón `data.<tipo>.<nombre>.<atributo>`. Por lo tanto, el atributo `id` se referencia como `data.aws_ami.web.id`.

**Explicación:**

Opción A es incorrecta: Ese formato es para recursos administrados, no para data sources.

Opción B es incorrecta: Omite el prefijo `data` y también el tipo del data source.

Opción D es incorrecta: Omite el tipo de data source `aws_ami`.

---

## Question No. 39

**Tipo de Pregunta:** Opción Única

**Pregunta:** ¿Cuál es una ventaja de la infraestructura inmutable?

**Opciones:**
- A) Actualizaciones in-place de infraestructura
- B) Actualizaciones de infraestructura más rápidas
- C) Actualizaciones automáticas de infraestructura
- D) Actualizaciones de infraestructura menos complejas

**Respuesta Correcta:** B

**Explicación:** La infraestructura inmutable reemplaza componentes existentes por nuevas versiones en lugar de mutarlos in-place. Esto con frecuencia permite despliegues más rápidos y seguros al promover artefactos de despliegue consistentes y repetibles.

**Explicación:**

Opción A es incorrecta: Las actualizaciones in-place son lo opuesto a los principios de infraestructura inmutable.

Opción C es incorrecta: La inmutabilidad no vuelve automáticamente las actualizaciones automáticas.

Opción D es incorrecta: La complejidad puede desplazarse, pero la ventaja más reconocida aquí es la rapidez y seguridad del enfoque de reemplazo.

---

## Question No. 40

**Tipo de Pregunta:** Opción Única

**Pregunta:** ¿Cuál es un beneficio del archivo de estado de Terraform?

**Opciones:**
- A) Un state file puede programar tareas recurrentes de infraestructura.
- B) Un state file es el estado deseado expresado por los archivos de código Terraform.
- C) Un state file es una fuente de verdad para recursos aprovisionados con Terraform.
- D) Un state file es una fuente de verdad para recursos aprovisionados con una consola pública de nube.

**Respuesta Correcta:** C

**Explicación:** El estado de Terraform rastrea los objetos reales de infraestructura administrados por Terraform y los mapea a direcciones de configuración. Actúa como registro autoritativo de Terraform para recursos gestionados, permitiendo diffs, planes y actualizaciones precisas.

**Explicación:**

Opción A es incorrecta: Programar tareas recurrentes está fuera del propósito de los state files.

Opción B es incorrecta: El estado deseado se define en el código de configuración, no en el state file.

Opción D es incorrecta: El estado es autoritativo para objetos gestionados por Terraform, no una fuente universal de verdad para recursos creados directamente en consolas de nube.

---

## Question No. 41

**Tipo de Pregunta:** Opción Única

**Pregunta:** Tu equipo suele usar llamadas API para crear y administrar infraestructura en la nube. ¿En qué se diferencia Terraform de los enfoques convencionales de gestión de infraestructura?

**Opciones:**
- A) Terraform describe infraestructura con configuraciones repetibles y versionadas que especifican el estado deseado.
- B) Terraform es solo un wrapper de las APIs del proveedor, por lo que casi no hay diferencia frente a llamarlas directamente.
- C) Terraform reemplaza las APIs del proveedor con sus propios protocolos, habilitando despliegues automáticos.
- D) Terraform impone infraestructura mediante scripts imperativos para asegurar el orden correcto de tareas.

**Respuesta Correcta:** A

**Explicación:** Terraform es declarativo. Defines el estado final deseado en archivos de configuración versionados, y Terraform calcula los pasos de ejecución para llegar a ese estado. Esto habilita repetibilidad, revisión de cambios y despliegues consistentes.

**Explicación:**

Opción B es incorrecta: Terraform sí usa APIs, pero su modelo declarativo y manejo de estado lo diferencian de scripts API directos.

Opción C es incorrecta: Terraform no reemplaza APIs del proveedor; los providers invocan esas APIs.

Opción D es incorrecta: Terraform no se basa principalmente en scripting imperativo; es un sistema declarativo de estado deseado.

---

## Question No. 42

**Tipo de Pregunta:** Opción Única

**Pregunta:** Tu equipo adopta AWS CloudFormation como método estandarizado para aprovisionar recursos de nube pública. ¿Qué escenario representa un desafío para tu equipo?

**Opciones:**
- A) Construir una base de código reutilizable que pueda desplegar recursos en cualquier región de AWS.
- B) Administrar un nuevo stack de aplicación construido sobre servicios nativos de AWS.
- C) Automatizar un proceso de aprovisionamiento manual basado en consola web.
- D) Desplegar nueva infraestructura en Microsoft Azure.

**Respuesta Correcta:** D

**Explicación:** AWS CloudFormation es específico de AWS. Desplegar en Microsoft Azure requiere otra herramienta o plataforma IaC (por ejemplo, Terraform, Bicep o ARM), por eso ese escenario representa el principal desafío.

**Explicación:**

Opción A es incorrecta: CloudFormation soporta patrones multi-región dentro de AWS.

Opción B es incorrecta: Gestionar stacks AWS-nativos es el caso de uso principal de CloudFormation.

Opción C es incorrecta: CloudFormation puede automatizar infraestructura que antes era manual en AWS.

---

## Question No. 43

**Tipo de Pregunta:** Opción Múltiple

**Pregunta:** ¿Qué parámetros requiere el bloque import? (Selecciona las 2 respuestas correctas.)

**Opciones:**
- A) El ID del recurso
- B) Provider
- C) La dirección objetivo del recurso
- D) Backend

**Respuesta Correcta:** A, C

**Explicación:** Los bloques import de Terraform requieren `id` (identificador del recurso en el proveedor) y `to` (dirección objetivo del recurso en la configuración). Estos dos valores indican qué objeto existente importar y dónde mapearlo en el estado.

**Explicación:**

Opción B es incorrecta: La selección del provider se infiere de la configuración del recurso objetivo y no es un parámetro obligatorio del bloque import.

Opción D es incorrecta: La configuración de backend no forma parte de los parámetros del bloque import.

---

## Question No. 44

**Tipo de Pregunta:** Opción Única

**Pregunta:** Habilitaste logging nivel DEBUG para Terraform y quieres enviar los logs a un archivo. ¿Qué acción debes tomar?

**Opciones:**
- A) Establecer la variable de entorno `TF_LOG_PATH`.
- B) Actualizar el archivo de configuración de Terraform CLI.
- C) Agregar un argumento path al bloque terraform.
- D) Ejecutar el comando terraform output.

**Respuesta Correcta:** A

**Explicación:** `TF_LOG_PATH` indica a Terraform dónde escribir los logs. Combinada con `TF_LOG` (por ejemplo `DEBUG`), envía los logs al archivo especificado.

**Explicación:**

Opción B es incorrecta: Esta no es la forma de dirigir la salida de logs de ejecución a un archivo.

Opción C es incorrecta: El bloque terraform no tiene un argumento path genérico para logging.

Opción D es incorrecta: `terraform output` muestra outputs del módulo raíz, no logs.

---

## Question No. 45

**Tipo de Pregunta:** Opción Única

**Pregunta:** ¿Dónde especificas la configuración de almacenamiento remoto de estado en Terraform?

**Opciones:**
- A) En el bloque resource
- B) En el bloque provider
- C) En el bloque data
- D) En el bloque terraform

**Respuesta Correcta:** D

**Explicación:** El almacenamiento remoto de estado se configura en un bloque `backend` anidado bajo el bloque de nivel superior `terraform`.

**Explicación:**

Opción A es incorrecta: Los bloques resource definen objetos de infraestructura administrada.

Opción B es incorrecta: Los bloques provider configuran autenticación y comportamiento del provider.

Opción C es incorrecta: Los bloques data leen información externa o existente.

---

## Question No. 46

**Tipo de Pregunta:** Opción Única

**Pregunta:** El parámetro `-refresh-only` actualizará tu archivo de estado cuando se use con `terraform plan`.

**Opciones:**
- A) Verdadero
- B) Falso

**Respuesta Correcta:** B

**Explicación:** `terraform plan -refresh-only` crea un plan que *propone* actualizaciones de estado/output según la infraestructura real, pero plan por sí solo no persiste esos cambios en el estado. El estado se actualiza cuando se aplica ese plan.

**Explicación:**

Opción A es incorrecta: Hacer plan únicamente no confirma cambios en el estado.

---

## Question No. 47

**Tipo de Pregunta:** Opción Única

**Pregunta:** Ejecutar terraform fmt sin flags en un directorio con archivos Terraform solo revisará el formato de esos archivos, pero nunca cambiará su contenido.

**Opciones:**
- A) Verdadero
- B) Falso

**Respuesta Correcta:** B

**Explicación:** Por defecto, `terraform fmt` reescribe archivos en sitio al formato canónico. Para solo verificar formato sin modificar archivos, se usan opciones de chequeo como `-check`.

**Explicación:**

Opción A es incorrecta: El comportamiento por defecto de `terraform fmt` sí modifica archivos cuando hace falta formateo.

---

## Question No. 48

**Tipo de Pregunta:** Opción Múltiple

**Pregunta:** Quieres usar API tokens y otros secretos dentro de los workspaces Terraform de tu equipo. ¿Dónde recomienda HashiCorp almacenar estos valores sensibles? (Selecciona 3 respuestas correctas.)

**Opciones:**
- A) En un documento de texto plano en un disco compartido.
- B) En un archivo terraform.tfvars versionado en control de código fuente.
- C) En un archivo terraform.tfvars gestionado de forma segura y compartido con tu equipo.
- D) En una variable de HCP Terraform/Terraform Cloud con la opción sensitive activada.
- E) En HashiCorp Vault.

**Respuesta Correcta:** C, D, E

**Explicación:** Las opciones recomendadas para secretos incluyen tfvars gestionados de forma segura (fuera de VCS), variables sensibles de workspace en HCP Terraform/Terraform Cloud y gestores de secretos dedicados como HashiCorp Vault.

**Explicación:**

Opción A es incorrecta: Documentos en texto plano compartidos no son un almacenamiento seguro para secretos.

Opción B es incorrecta: Versionar secretos en control de código fuente no es recomendable.

---

## Question No. 49

**Tipo de Pregunta:** Opción Única

**Pregunta:** ¿Cuál de las siguientes NO es una acción que realiza terraform init?

**Opciones:**
- A) Inicializar un backend configurado.
- B) Crear archivos de configuración de plantilla.
- C) Cargar los plugins de provider requeridos.
- D) Obtener el código fuente de todos los módulos referenciados.

**Respuesta Correcta:** B

**Explicación:** `terraform init` inicializa backend, descarga/instala plugins de provider requeridos y obtiene el código fuente de módulos. No crea plantillas de archivos de configuración Terraform.

**Explicación:**

Opción A es incorrecta: La inicialización del backend es una acción central de init.

Opción C es incorrecta: La instalación de plugins de provider es una acción central de init.

Opción D es incorrecta: La descarga de módulos es una acción central de init.

---

## Question No. 50

**Tipo de Pregunta:** Opción Única

**Pregunta:** ¿Qué hace terraform destroy?

**Opciones:**
- A) Destruye toda la infraestructura en el archivo de estado de Terraform.
- B) Destruye todos los archivos de código Terraform del directorio actual, dejando intacto el state file.
- C) Destruye toda la infraestructura en el provider configurado.
- D) Destruye el state file de Terraform, dejando intacta la infraestructura.

**Respuesta Correcta:** A

**Explicación:** `terraform destroy` elimina todos los recursos actualmente gestionados en el estado activo para ese workspace/configuración. No destruye todos los recursos de toda la cuenta del provider, ni elimina archivos de código Terraform.

**Explicación:**

Opción B es incorrecta: Terraform nunca elimina tus archivos de configuración como parte de destroy.

Opción C es incorrecta: Destroy apunta a recursos gestionados en estado, no a todo lo que existe en la cuenta del provider.

Opción D es incorrecta: Destroy elimina recursos de infraestructura; borrar el estado es una operación separada.

---

## Question No. 51

**Tipo de Pregunta:** Opción Única

**Pregunta:** Refer to the exhibit.

```
resource "aws_instance" "web" {
  count = 2
  name  = "terraform-${count.index}"
}
```

Se muestra un bloque de recurso en el espacio Exhibit. ¿Cómo referenciarías el valor `name` de la segunda instancia de este recurso?

**Opciones:**
- A) `aws_instance.web[2].name`
- B) `aws_instance.web.*.name`
- C) `aws_instance.web[1].name`
- D) `aws_instance.web[]`
- E) `element(aws_instance.web, 2)`

**Respuesta Correcta:** C

**Explicación:** Los recursos creados con `count` se indexan desde cero. Con `count = 2`, las instancias son `[0]` y `[1]`, así que la segunda instancia es `aws_instance.web[1]`. Su atributo name se referencia como `aws_instance.web[1].name`.

**Explicación:**

Opción A es incorrecta: El índice 2 referiría a una tercera instancia, que no existe.

Opción B es incorrecta: Es una expresión splat que devuelve todos los nombres, no solo el de la segunda instancia.

Opción D es incorrecta: La sintaxis de índice vacío es inválida.

Opción E es incorrecta: `element` aquí está incompleto/incorrecto para seleccionar directamente el valor del atributo del recurso.

---

## Question No. 52

**Tipo de Pregunta:** Opción Única

**Pregunta:** Tienes una configuración simple de Terraform con una VM en un proveedor cloud. Ejecutas terraform apply y la VM se crea correctamente. ¿Qué pasa si borras la VM desde la consola del proveedor y luego ejecutas terraform apply de nuevo sin cambiar código Terraform?

**Opciones:**
- A) Terraform recreará la VM.
- B) Terraform reportará un error.
- C) Terraform eliminará la VM del state file.
- D) Terraform no hará cambios.

**Respuesta Correcta:** A

**Explicación:** Terraform compara el estado deseado (configuración) con la infraestructura real. Si la VM fue eliminada fuera de Terraform, existe drift y Terraform planificará/aplicará acciones para recrear el recurso gestionado faltante.

**Explicación:**

Opción B es incorrecta: Este tipo de drift normalmente se corrige con recreación, no con un fallo definitivo.

Opción C es incorrecta: Terraform no elimina simplemente recursos deseados del estado cuando faltan; intenta reconciliar al estado deseado.

Opción D es incorrecta: Existe diferencia detectada, por lo tanto Terraform planificará cambios.

---

## Question No. 53

**Tipo de Pregunta:** Opción Única

**Pregunta:** Refer to the exhibit.

```
resource "azurerm_resource_group" "dev" {
  name     = "test"
  location = "westus"
}
```

Se muestra un bloque de recurso en el espacio Exhibit. ¿Cuál es el nombre del recurso Terraform de ese bloque?

**Opciones:**
- A) azurerm
- B) azurerm_resource_group
- C) ev
- D) test

**Respuesta Correcta:** B

**Explicación:** En un bloque resource, la primera etiqueta es el tipo de recurso (frecuentemente llamado resource name en este tipo de examen): `azurerm_resource_group`. La segunda etiqueta es el nombre local de instancia (`dev`) y `test` es un valor de argumento.

**Explicación:**

Opción A es incorrecta: `azurerm` es el prefijo/namespace del provider, no el tipo completo de recurso.

Opción C es incorrecta: `ev` no aparece como etiqueta válida en el bloque.

Opción D es incorrecta: `test` es el valor del argumento `name`, no el tipo/etiqueta del recurso.

---

## Question No. 54

**Tipo de Pregunta:** Opción Única

**Pregunta:** Exhibit:

```
provider "aws" {
  region = "us-east-1"
}

provider "aws" {
  alias  = "west"
  region = "us-west-2"
}
```

Necesitas desplegar recursos en dos regiones diferentes en la misma configuración Terraform. Para hacerlo, declaras múltiples configuraciones de provider como se muestra en el Exhibit.

¿Qué meta-argumento debes configurar en un bloque resource para desplegar el recurso en la región AWS us-west-2?

**Opciones:**
- A) `provider = aws.west`
- B) `alias = aws.west`
- C) `provider = west`
- D) `alias = west`

**Respuesta Correcta:** A

**Explicación:** Para seleccionar una configuración no predeterminada de provider en un resource, se usa el meta-argumento `provider` con `<provider>.<alias>`, que aquí es `aws.west`.

**Explicación:**

Opción B es incorrecta: `alias` se declara en bloques provider, no en bloques resource.

Opción C es incorrecta: La referencia del provider debe incluir nombre y alias (`aws.west`).

Opción D es incorrecta: `alias` no es un meta-argumento de resource.

---

## Question No. 55

**Tipo de Pregunta:** Opción Múltiple

**Pregunta:** Quieres usar API tokens y otros secretos dentro de los workspaces Terraform de tu equipo. ¿Dónde recomienda HashiCorp almacenar estos valores sensibles? (Pick 3)

**Opciones:**
- A) En un documento de texto plano en un disco compartido.
- B) En un archivo terraform.tfvars, versionado en control de código.
- C) En un archivo terraform.tfvars, gestionado de forma segura y compartido con tu equipo.
- D) En una variable de HCP Terraform/Terraform Cloud con la opción sensitive activada.
- E) En HashiCorp Vault.

**Respuesta Correcta:** C, D, E

**Explicación:** Las prácticas recomendadas incluyen tfvars gestionados de forma segura (fuera de VCS), variables sensibles en HCP Terraform/Terraform Cloud y gestores de secretos dedicados como HashiCorp Vault.

**Explicación:**

Opción A es incorrecta: Documentos en texto plano compartidos no son almacenamiento seguro de secretos.

Opción B es incorrecta: Los secretos no deben versionarse en control de código.

---

## Question No. 56

**Tipo de Pregunta:** Opción Única

**Pregunta:** Cuando usas un backend que requiere autenticación, la mejor práctica es:

**Opciones:**
- A) Ejecutar todos los comandos Terraform en un servidor o contenedor compartido.
- B) Configurar las credenciales de autenticación en archivos de configuración Terraform y almacenarlas en control de código.
- C) Usar variables de entorno para configurar credenciales fuera de tu configuración Terraform.
- D) Ninguna de las anteriores.

**Respuesta Correcta:** C

**Explicación:** Las credenciales deben mantenerse fuera del código Terraform y fuera de VCS. Variables de entorno (o gestores externos de secretos) son patrones seguros estándar para autenticación de backend.

**Explicación:**

Opción A es incorrecta: Un entorno compartido no resuelve por sí mismo la gestión segura de credenciales.

Opción B es incorrecta: Guardar credenciales en código/control de versiones es inseguro.

Opción D es incorrecta: La opción C sí es una buena práctica.

---

## Question No. 57

**Tipo de Pregunta:** Opción Única

**Pregunta:** ¿Cuál de las siguientes opciones deberías agregar en el bloque required_providers para definir una restricción de versión del provider?

**Opciones:**
- A) `version ~> 3.1`
- B) `version >= 3.1`
- C) `version = ">= 3.1"`

**Respuesta Correcta:** C

**Explicación:** En `required_providers`, las restricciones de versión se asignan como expresión de cadena, por ejemplo `version = ">= 3.1"`.

**Explicación:**

Opción A es incorrecta: Falta la asignación/contexto de argumento válido en sintaxis HCL.

Opción B es incorrecta: Falta la asignación y el formato de cadena esperado para declarar restricciones de versión de provider.

---

## Question No. 58

**Tipo de Pregunta:** Opción Única

**Pregunta:** Debes realizar un cambio en un stack de infraestructura en nube pública usando HCP Terraform/Terraform Cloud. ¿Qué patrón sigue las mejores prácticas de IaC?

**Opciones:**
- A) Hacer el cambio vía endpoint API de la nube pública.
- B) Enviar un pull request y esperar merge aprobado de los cambios propuestos.
- C) Clonar el repositorio de infraestructura y luego ejecutar el código.
- D) Usar la consola cloud para hacer el cambio después de aprobación.
- E) Hacer el cambio programáticamente vía CLI cloud.

**Respuesta Correcta:** B

**Explicación:** La mejor práctica IaC es cambio-vía-código con workflow de revisión y aprobación (PR + merge), lo que produce un proceso auditable y repetible.

**Explicación:**

Opción A es incorrecta: Cambios directos por API evitan revisión/gobernanza.

Opción C es incorrecta: Ejecutar código directamente no es el patrón principal de gobernanza si no pasa por revisión/aprobación.

Opción D es incorrecta: Cambios por consola introducen drift y evitan controles IaC.

Opción E es incorrecta: Cambios directos por CLI evitan el pipeline deseado de revisión de código.

---

## Question No. 59

**Tipo de Pregunta:** Opción Única

**Pregunta:** Estás escribiendo una configuración Terraform que necesita leer entrada desde un archivo local llamado id_rsa.pub. ¿Qué función built-in de Terraform puedes usar para importar el contenido del archivo como string?

**Opciones:**
- A) `fileset('id_rsa.pub')`
- B) `file('id_rsa.pub')`
- C) `filebase64('id_rsa.pub')`
- D) `templatefile('id_rsa.pub')`

**Respuesta Correcta:** B

**Explicación:** La función `file()` lee un archivo y devuelve su contenido como string.

**Explicación:**

Opción A es incorrecta: `fileset` devuelve un conjunto de nombres de archivos coincidentes, no el contenido.

Opción C es incorrecta: `filebase64` devuelve el contenido codificado en base64, no texto plano.

Opción D es incorrecta: `templatefile` espera un archivo plantilla y un mapa de variables para renderizar.

---

## Question No. 60

**Tipo de Pregunta:** Opción Única

**Pregunta:** Solo el usuario que generó un terraform plan puede aplicarlo.

**Opciones:**
- A) Verdadero
- B) Falso

**Respuesta Correcta:** B

**Explicación:** Un plan guardado puede ser aplicado por otro usuario/entorno con acceso adecuado y contexto compatible; Terraform no exige que lo aplique exactamente la misma persona que lo creó.

**Explicación:**

Opción A es incorrecta: Terraform no impone una regla de "mismo usuario" para aplicar planes guardados.

---

## Question No. 61

**Tipo de Pregunta:** Opción Única

**Pregunta:** Un desarrollador lanzó una VM fuera del flujo de Terraform y terminó con dos servidores con el mismo nombre. No tiene claro cuál VM está gestionada por Terraform, pero sí tiene una lista de todos los IDs activos de VM. ¿Qué método puedes usar para determinar qué instancia gestiona Terraform?

**Opciones:**
- A) Modificar la configuración Terraform para agregar un bloque import para ambas máquinas virtuales.
- B) Ejecutar terraform apply -refresh para identificar los IDs de máquina virtual que Terraform ya gestiona.
- C) Ejecutar terraform state rm en ambas VMs y luego terraform apply para recrear la correcta.
- D) Ejecutar terraform state list para encontrar los nombres de todas las VMs y luego terraform state show para cada una para identificar qué VM ID gestiona Terraform.

**Respuesta Correcta:** D

**Explicación:** La forma más segura de identificar qué gestiona Terraform es inspeccionar el estado. `terraform state list` muestra las direcciones gestionadas y `terraform state show` expone atributos, incluidos IDs, permitiendo compararlos con los IDs activos de VM.

**Explicación:**

Opción A es incorrecta: Importar ambas es innecesario y puede provocar conflictos de estado para recursos ya gestionados.

Opción B es incorrecta: Refresh/apply no es el método directo de inspección para mapear IDs gestionados con precisión.

Opción C es incorrecta: Quitar recursos del estado es destructivo para el tracking y no es necesario para identificación.

---

## Question No. 62

**Tipo de Pregunta:** Opción Única

**Pregunta:** Si uno de tus módulos usa un valor local, puedes exponer ese valor a los consumidores del módulo definiendo un output de Terraform en la configuración del módulo.

**Opciones:**
- A) Verdadero
- B) Falso

**Respuesta Correcta:** A

**Explicación:** Un valor local puede ser referenciado por un bloque `output` dentro del módulo, y ese output queda disponible para los consumidores vía `module.<nombre>.<output>`.

**Explicación:**

Opción B es incorrecta: Los outputs de módulo son precisamente el mecanismo para exponer valores internos (incluyendo locals) a los callers.

---

## Question No. 63

**Tipo de Pregunta:** Opción Única

**Pregunta:** Si un módulo declara una variable sin valor por defecto, debes pasar el valor de esa variable dentro del bloque module cuando llamas al módulo en tu configuración.

**Opciones:**
- A) Verdadero
- B) Falso

**Respuesta Correcta:** A

**Explicación:** Las variables de entrada de módulo sin default son obligatorias. Si el caller no las define, Terraform falla con error de argumento/input requerido faltante.

**Explicación:**

Opción B es incorrecta: Las variables requeridas deben suministrarse a menos que exista default.

---

## Question No. 64

**Tipo de Pregunta:** Opción Única

**Pregunta:** Un bloque cloud siempre se mapea a un único workspace de HCP Terraform/Terraform Cloud.

**Opciones:**
- A) Verdadero
- B) Falso

**Respuesta Correcta:** B

**Explicación:** Un bloque `cloud` puede mapear a un workspace único por nombre o a múltiples workspaces por tags. Por lo tanto, no siempre se mapea exactamente a uno.

**Explicación:**

Opción A es incorrecta: El mapeo por tags permite múltiples workspaces.

---

## Question No. 65

**Tipo de Pregunta:** Opción Única

**Pregunta:** ¿Cuál de las siguientes opciones debes agregar en el bloque required_providers para definir una restricción de versión del provider?

**Opciones:**
- A) version
- B) version = '3.1'
- C) version: 3.1
- D) version - 3.1

**Respuesta Correcta:** B

**Explicación:** En `required_providers`, las restricciones de versión se asignan al argumento `version`. Entre las opciones dadas, `version = '3.1'` es la forma válida de asignación.

**Explicación:**

Opción A es incorrecta: No tiene valor asignado.

Opción C es incorrecta: La sintaxis con dos puntos no es válida para asignación de argumentos en Terraform.

Opción D es incorrecta: La sintaxis con guion es inválida.

---

## Question No. 66

**Tipo de Pregunta:** Opción Única

**Pregunta:** Modificaste tu configuración Terraform para corregir un typo en el ID del recurso, renombrándolo de photoes a photos. ¿Qué configuración agregarás para actualizar el ID en estado sin destruir el recurso existente?

Configuración original:
```
resource 'aws_s3_bucket' 'photoes' {
  bucket_prefix = 'images'
}
```

Configuración actualizada:
```
resource 'aws_s3_bucket' 'photos' {
  bucket_prefix = 'images'
}
```

**Opciones:**
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

**Respuesta Correcta:** A

**Explicación:** El bloque `moved` correcto usa direcciones explícitas `from` y `to`. Esto remapea el estado desde la dirección vieja a la nueva sin reemplazo.

**Explicación:**

Opción B es incorrecta: Sintaxis inválida para moved y formato de dirección incorrecto.

Opción C es incorrecta: Sintaxis inválida porque faltan argumentos `from`/`to`.

Opción D es incorrecta: Terraform no infiere automáticamente renombres arbitrarios de direcciones.

---

## Question No. 67

**Tipo de Pregunta:** Opción Única

**Pregunta:** Cuando usas un backend que requiere autenticación, la mejor práctica es:

**Opciones:**
- A) Ejecutar todos tus comandos Terraform en un servidor o contenedor compartido.
- B) Configurar credenciales de autenticación en archivos de configuración Terraform y almacenarlas en un control de versiones privado.
- C) Usar variables de entorno para configurar credenciales de autenticación fuera de tu configuración Terraform.
- D) Ninguna de las anteriores.

**Respuesta Correcta:** C

**Explicación:** Las credenciales deben mantenerse fuera de los archivos de configuración y fuera de VCS. Variables de entorno (o gestores de secretos) son la práctica recomendada para autenticación de backend.

**Explicación:**

Opción A es incorrecta: Un entorno compartido no es en sí una práctica de gestión segura de credenciales.

Opción B es incorrecta: Guardar credenciales en repositorios de código es inseguro.

Opción D es incorrecta: La opción C sí es la práctica recomendada.

---

## Question No. 68

**Tipo de Pregunta:** Opción Única

**Pregunta:** Cuando ejecutas terraform apply, Terraform CLI imprimirá valores de output tanto del módulo raíz como de todos los módulos hijo.

**Opciones:**
- A) Verdadero
- B) Falso

**Respuesta Correcta:** B

**Explicación:** Terraform muestra outputs del módulo raíz. Los outputs de módulos hijo solo se muestran si se reexponen mediante outputs del módulo raíz.

**Explicación:**

Opción A es incorrecta: Los outputs de módulos hijo no se imprimen automáticamente salvo que se surfaceen en raíz.

---

## Question No. 69

**Tipo de Pregunta:** Opción Única

**Pregunta:** ¿Qué tipo de información puedes encontrar en Terraform Registry al usar módulos publicados?

**Opciones:**
- A) Variables de entrada requeridas.
- B) Outputs.
- C) Variables de entrada opcionales y valores por defecto.
- D) Todas las anteriores.

**Respuesta Correcta:** D

**Explicación:** Las páginas de módulos en Registry normalmente documentan inputs requeridos/opcionales (incluyendo defaults) y outputs.

**Explicación:**

Opción A es incorrecta: Sí está incluida, pero no es la respuesta completa.

Opción B es incorrecta: Sí está incluida, pero no es la respuesta completa.

Opción C es incorrecta: Sí está incluida, pero no es la respuesta completa.

---

## Question No. 70

**Tipo de Pregunta:** Opción Múltiple

**Pregunta:** ¿Cuál de las siguientes acciones puedes hacer con terraform plan? (Selecciona 2 respuestas correctas)

**Opciones:**
- A) Programar Terraform para ejecutarse en un horario futuro.
- B) Ver el plan de ejecución y validar si los cambios coinciden con tus expectativas.
- C) Guardar un plan de ejecución generado para aplicarlo después.
- D) Ejecutar un plan en un workspace diferente.

**Respuesta Correcta:** B, C

**Explicación:** `terraform plan` permite previsualizar acciones y, con `-out`, guardar un archivo de plan para aplicarlo más tarde.

**Explicación:**

Opción A es incorrecta: La programación se maneja con orquestadores/pipelines externos, no con plan directamente.

Opción D es incorrecta: La ejecución de planes se hace con `terraform apply`; el targeting de workspace es otro concepto.

---

## Question No. 71

**Tipo de Pregunta:** Opción Única

**Pregunta:** ¿Qué tarea realiza el comando terraform import?

**Opciones:**
- A) Importa recursos de un state file de Terraform a otro.
- B) Importa recursos existentes al state file de Terraform.
- C) Importa un módulo nuevo de Terraform al state file.
- D) Importa toda la infraestructura del proveedor cloud configurado.
- E) Importa configuración de provider de un state file a otro.

**Respuesta Correcta:** B

**Explicación:** `terraform import` mapea un recurso real existente a una dirección de recurso Terraform y lo registra en estado, permitiendo que Terraform empiece a gestionarlo.

**Explicación:**

Opción A es incorrecta: Import no mueve recursos entre state files.

Opción C es incorrecta: Los módulos se descargan con `terraform init`, no se importan.

Opción D es incorrecta: Import apunta a recursos específicos por nombre, no a toda la infraestructura a la vez.

Opción E es incorrecta: La configuración de provider no se mueve entre state files vía import.

---

## Question No. 72

**Tipo de Pregunta:** Opción Única

**Pregunta:** ¿Cuál es el propósito del archivo terraform.lock.hcl en Terraform?

**Opciones:**
- A) No existe tal archivo.
- B) Almacenar referencias a workspaces que están bloqueados.
- C) Evitar que se ejecuten comandos de Terraform.
- D) Rastrear dependencias específicas de providers.

**Respuesta Correcta:** D

**Explicación:** El archivo `.terraform.lock.hcl` registra las versiones exactas de providers y sus checksums seleccionados durante `terraform init`. Garantiza versiones de provider consistentes entre miembros del equipo y ejecuciones CI.

**Explicación:**

Opción A es incorrecta: El archivo sí existe y es creado por `terraform init`.

Opción B es incorrecta: No almacena referencias de bloqueo de workspaces.

Opción C es incorrecta: No evita que Terraform se ejecute.

---

## Question No. 73

**Tipo de Pregunta:** Opción Única

**Pregunta:** ¿De qué no es responsable un provider de Terraform?

**Opciones:**
- A) Aprovisionar infraestructura en múltiples proveedores cloud.
- B) Gestionar qué acciones tomar basándose en diferencias de recursos.
- C) Gestionar recursos y data sources basándose en una API.
- D) Comprender las interacciones API con un servicio hospedado.

**Respuesta Correcta:** B

**Explicación:** Determinar qué acciones tomar basándose en diferencias de recursos (lógica de plan/apply) es responsabilidad del core de Terraform, no del provider. Los providers traducen configuraciones de recursos en llamadas API.

**Explicación:**

Opción A es incorrecta: Un provider individual suele estar acotado a un cloud; aprovisionar en múltiples clouds requiere múltiples providers pero no es responsabilidad de uno solo.

Opción C es incorrecta: Gestionar recursos y data sources vía API es precisamente el rol del provider.

Opción D es incorrecta: Comprender las interacciones API de su servicio es el rol del provider.

---

## Question No. 74

**Tipo de Pregunta:** Opción Única

**Pregunta:** Desarrollaste un nuevo servicio basado en nube que usa APIs propietarias y quieres usar Terraform para crear, gestionar y eliminar usuarios del servicio. ¿Cómo puede Terraform interactuar con el servicio?

**Opciones:**
- A) Terraform puede gestionar usuarios de cualquier servicio hospedado en un proveedor cloud público.
- B) Desarrollar y publicar un provider personalizado para interactuar con el servicio usando sus APIs propietarias.

**Respuesta Correcta:** B

**Explicación:** La arquitectura de plugins de provider de Terraform permite escribir providers personalizados que encapsulen APIs propietarias. Una vez publicado, el provider permite a Terraform gestionar esos recursos.

**Explicación:**

Opción A es incorrecta: Terraform no gestiona automáticamente servicios arbitrarios solo por estar en nube pública; el provider debe soportar explícitamente la API del servicio.

---

## Question No. 75

**Tipo de Pregunta:** Opción Única

**Pregunta:** Por defecto, si no defines un backend para tu configuración, ¿dónde almacena Terraform la información sobre los recursos que gestiona?

**Opciones:**
- A) En un subdirectorio de tu directorio home llamado .terraform.d
- B) En un archivo en el directorio de tu configuración llamado terraform.tfstate
- C) En un archivo en el directorio de tu configuración llamado .terraform.lock.hcl
- D) En un subdirectorio de tu configuración llamado .terraform

**Respuesta Correcta:** B

**Explicación:** Sin backend configurado, Terraform usa el backend local y almacena el estado en `terraform.tfstate` en el directorio de trabajo.

**Explicación:**

Opción A es incorrecta: `.terraform.d` almacena configuración de CLI y plugins, no el estado del workspace.

Opción C es incorrecta: `.terraform.lock.hcl` registra bloqueos de versión de providers, no el estado.

Opción D es incorrecta: El subdirectorio `.terraform` contiene plugins y módulos de providers, no el estado.

---

## Question No. 76

**Tipo de Pregunta:** Opción Múltiple

**Pregunta:** ¿Cuáles de las siguientes ubicaciones puede usar Terraform como fuente privada de módulos? (Selecciona 2 respuestas correctas)

**Opciones:**
- A) Repositorio público en GitHub.
- B) Terraform Registry público.
- C) Plataforma VCS (Sistema de Control de Versiones) hospedada internamente.
- D) Repositorio privado en GitHub.

**Respuesta Correcta:** C, D

**Explicación:** Terraform soporta fuentes privadas de módulos incluyendo repositorios Git privados (como repos privados de GitHub) y plataformas VCS hospedadas internamente (GitLab, Bitbucket, Azure DevOps, etc.).

**Explicación:**

Opción A es incorrecta: Un repo público de GitHub es fuente pública, no privada.

Opción B es incorrecta: El Terraform Registry público es fuente pública, no privada.

---

## Question No. 77

**Tipo de Pregunta:** Opción Única

**Pregunta:** ¿Qué se modifica al ejecutar Terraform en modo refresh-only?

**Opciones:**
- A) Tu configuración Terraform.
- B) Tu plan Terraform.
- C) Tu state file.
- D) Tu infraestructura cloud.

**Respuesta Correcta:** C

**Explicación:** `terraform apply -refresh-only` actualiza el state file para reflejar el estado real actual de los recursos gestionados sin hacer cambios de infraestructura.

**Explicación:**

Opción A es incorrecta: El modo refresh-only nunca modifica archivos de configuración.

Opción B es incorrecta: El plan es un artefacto efímero; refresh-only modifica el estado.

Opción D es incorrecta: Refresh-only no crea, actualiza ni destruye recursos cloud.

---

## Question No. 78

**Tipo de Pregunta:** Opción Única

**Pregunta:** Terraform requiere el runtime de Go como prerequisito para su instalación.

**Opciones:**
- A) Verdadero
- B) Falso

**Respuesta Correcta:** B

**Explicación:** Terraform se distribuye como un binario único precompilado. Los usuarios finales no necesitan el runtime de Go ni ningún otro para instalar o ejecutar Terraform.

**Explicación:**

Opción A es incorrecta: Go es requerido para compilar Terraform desde el código fuente, pero no para instalar ni ejecutar el binario precompilado.

---

## Question No. 79

**Tipo de Pregunta:** Opción Única

**Pregunta:** ¿Cuál de las siguientes NO es una ventaja de usar operaciones de Infraestructura como Código (IaC)?

**Opciones:**
- A) Despliegue de infraestructura de autoservicio.
- B) Modificar un parámetro count para escalar recursos.
- C) Flujos de trabajo basados en API.
- D) Solución de problemas mediante el comando diff de Linux.
- E) Flujos de trabajo de configuración en consola cloud pública.

**Respuesta Correcta:** E

**Explicación:** Los flujos de trabajo en consola cloud pública son operaciones manuales con GUI, lo opuesto al enfoque programático de IaC. Introducen drift, no están versionados y no son repetibles de la misma forma que IaC.

**Explicación:**

Opción A es incorrecta: El despliegue de autoservicio es una ventaja reconocida de IaC.

Opción B es incorrecta: Escalar mediante parámetros de código es una ventaja de IaC.

Opción C es incorrecta: Los flujos basados en API son una ventaja de IaC.

Opción D es incorrecta: Revisar diffs (cambios de código) es una ventaja de IaC que habilita auditabilidad.

---

## Question No. 80

**Tipo de Pregunta:** Opción Única

**Pregunta:** terraform validate confirma la sintaxis de los archivos Terraform.

**Opciones:**
- A) Verdadero
- B) Falso

**Respuesta Correcta:** A

**Explicación:** `terraform validate` verifica la configuración en busca de errores de sintaxis y consistencia interna (nombres de argumentos válidos, tipos, campos requeridos, etc.) sin acceder a servicios remotos ni al estado.

**Explicación:**

Opción B es incorrecta: `terraform validate` sí confirma la sintaxis y correctitud básica de los archivos de configuración.

---

## Question No. 81

**Tipo de Pregunta:** Opción Única

**Pregunta:** ¿Qué argumento puedes usar para evitar actualizaciones inesperadas en la configuración de un módulo al llamar módulos del Terraform Registry?

**Opciones:**
- A) source
- B) count
- C) version
- D) lifecycle

**Respuesta Correcta:** C

**Explicación:** Especificar el argumento `version` en un bloque de módulo fija el módulo a una versión o restricción de versión específica del Terraform Registry, evitando actualizaciones inesperadas cuando se publican versiones más nuevas.

**Explicación:**

Opción A es incorrecta: `source` especifica el origen del módulo, no qué versión usar.

Opción B es incorrecta: `count` controla cuántas instancias del módulo se crean.

Opción D es incorrecta: `lifecycle` es un meta-argumento de recursos que controla el comportamiento de creación/destrucción, no el anclaje de versiones de módulos.

---

## Question No. 82

**Tipo de Pregunta:** Opción Única

**Pregunta:** ¿Cuál de las siguientes está disponible únicamente en los workspaces de HCP Terraform y no en Terraform CLI?

**Opciones:**
- A) Ejecuciones de prueba con terraform plan.
- B) Almacenamiento seguro de variables.
- C) Usar el estado de un workspace como fuente de datos para otro.
- D) Soporte para múltiples proveedores cloud.

**Respuesta Correcta:** B

**Explicación:** HCP Terraform proporciona almacenamiento cifrado y seguro de variables con controles de acceso. Terraform CLI almacena variables en archivos `.tfvars` o variables de entorno sin funcionalidad de vault seguro incorporada.

**Explicación:**

Opción A es incorrecta: `terraform plan` (ejecuciones de prueba) está disponible tanto en Terraform CLI como en HCP Terraform.

Opción C es incorrecta: Referenciar el estado de otro workspace mediante `terraform_remote_state` también está disponible con backends de CLI.

Opción D es incorrecta: El soporte multi-proveedor es una característica central de Terraform disponible en CLI y HCP Terraform.

---

## Question No. 83

**Tipo de Pregunta:** Opción Única

**Pregunta:** ¿Qué comando puedes ejecutar para generar datos en formato DOT (Graphviz) y visualizar las dependencias de Terraform?

**Opciones:**
- A) terraform refresh
- B) terraform graph
- C) terraform output
- D) terraform show

**Respuesta Correcta:** B

**Explicación:** `terraform graph` produce un grafo de dependencias en formato DOT de los recursos y módulos de Terraform, que puede ser renderizado con herramientas como `dot` de Graphviz.

**Explicación:**

Opción A es incorrecta: `terraform refresh` actualiza el estado para reflejar la infraestructura real; no produce salida de grafo.

Opción C es incorrecta: `terraform output` imprime los valores de salida del estado.

Opción D es incorrecta: `terraform show` muestra una vista legible del estado o archivo de plan.

---

## Question No. 84

**Tipo de Pregunta:** Opción Única

**Pregunta:** Un backend de Terraform determina cómo carga y almacena actualizaciones del estado cuando ejecutas cuál comando?

**Opciones:**
- A) apply
- B) destroy
- C) Ambos son correctos.
- D) Ninguno de estos es correcto.

**Respuesta Correcta:** C

**Explicación:** El backend gobierna la carga y almacenamiento del estado para cualquier operación que lo lea o escriba. Tanto `terraform apply` como `terraform destroy` interactúan con el backend porque ambos modifican el state file.

**Explicación:**

Opción A es incorrecta: Aunque apply usa el backend, seleccionar solo apply es incompleto.

Opción B es incorrecta: Aunque destroy usa el backend, seleccionar solo destroy es incompleto.

Opción D es incorrecta: Tanto apply como destroy usan el backend para gestión del estado.

---

## Question No. 85

**Tipo de Pregunta:** Opción Única

**Pregunta:** terraform apply fallará si no has ejecutado terraform plan primero para actualizar la salida del plan.

**Opciones:**
- A) Verdadero
- B) Falso

**Respuesta Correcta:** B

**Explicación:** `terraform apply` puede ejecutarse directamente sin un `terraform plan` previo. Cuando se invoca sin un archivo de plan guardado, realiza su propio plan implícito y solicita confirmación antes de aplicar.

**Explicación:**

Opción A es incorrecta: `terraform apply` no requiere un `terraform plan` previo; genera su propio plan internamente cuando no se proporciona un plan guardado.

---

## Question No. 86

**Tipo de Pregunta:** Opción Única

**Pregunta:** Cuando inicializas Terraform, ¿dónde almacena en caché los módulos del Terraform Registry público?

**Opciones:**
- A) En el directorio /tmp.
- B) En el subdirectorio .terraform.
- C) En memoria.
- D) No se almacenan en caché.

**Respuesta Correcta:** B

**Explicación:** `terraform init` descarga y almacena en caché todos los módulos (y providers) requeridos en el subdirectorio `.terraform` del directorio de trabajo.

**Explicación:**

Opción A es incorrecta: Terraform no usa `/tmp` para el caché de módulos.

Opción C es incorrecta: Los módulos se escriben en disco, no se mantienen solo en memoria.

Opción D es incorrecta: Los módulos se almacenan localmente en `.terraform` para evitar re-descargarlos en cada ejecución.

---

## Question No. 87

**Tipo de Pregunta:** Opción Múltiple

**Pregunta:** ¿Cuál de las siguientes afirmaciones sobre terraform apply es verdadera? (Selecciona 2 respuestas correctas)

**Opciones:**
- A) Debes pasarle la salida de un comando terraform plan.
- B) Por defecto, no actualiza tu state file para reflejar la configuración actual de la infraestructura.
- C) Dependiendo de la especificación del provider, Terraform puede necesitar destruir y recrear tus recursos de infraestructura.
- D) No puedes apuntar a recursos específicos para la operación.
- E) Solo opera en infraestructura definida en el directorio de trabajo actual o workspace.

**Respuesta Correcta:** C, E

**Explicación:** Algunos cambios de recursos (p.ej., atributos inmutables) requieren ciclos de destruir-y-recrear según el esquema del provider. Además, `terraform apply` solo gestiona recursos declarados en la configuración del directorio de trabajo actual o workspace seleccionado.

**Explicación:**

Opción A es incorrecta: Un archivo de plan guardado es opcional; `terraform apply` puede generar su propio plan implícitamente.

Opción B es incorrecta: Por defecto, `terraform apply` sí refresca el estado antes de planificar (a menos que se use `-refresh=false`).

Opción D es incorrecta: Puedes apuntar a recursos específicos usando el flag `-target`.

---

## Question No. 88

**Tipo de Pregunta:** Opción Única

**Pregunta:** Acabas de desarrollar una nueva configuración de Terraform para dos máquinas virtuales con un proveedor cloud. Deseas crear la infraestructura por primera vez. ¿Cuál comando de Terraform debes ejecutar primero?

**Opciones:**
- A) terraform apply
- B) terraform init
- C) terraform plan
- D) terraform show

**Respuesta Correcta:** B

**Explicación:** `terraform init` debe ejecutarse antes que cualquier otro comando en una nueva configuración. Descarga los providers y módulos requeridos al directorio `.terraform`, preparando la configuración para plan y apply.

**Explicación:**

Opción A es incorrecta: `terraform apply` fallará si los providers no han sido descargados primero por `terraform init`.

Opción C es incorrecta: `terraform plan` también requiere inicialización antes de poder ejecutarse.

Opción D es incorrecta: `terraform show` se usa para inspeccionar estado o archivos de plan existentes, no para inicializar.

---

## Question No. 89

**Tipo de Pregunta:** Opción Múltiple

**Pregunta:** ¿Qué funcionalidad ofrecen los providers en Terraform? (Selecciona 3 respuestas correctas)

**Opciones:**
- A) Interactuar con APIs de proveedores cloud.
- B) Aprovisionar recursos para servicios de infraestructura on-premises.
- C) Agrupar una colección de archivos de configuración de Terraform que mapean a un único state file.
- D) Aprovisionar recursos para servicios de infraestructura cloud pública.
- E) Aplicar políticas de seguridad y cumplimiento.

**Respuesta Correcta:** A, B, D

**Explicación:** Los providers de Terraform actúan como plugins que se comunican con APIs de servicios. Pueden apuntar a plataformas cloud públicas (AWS, Azure, GCP), sistemas on-premises (VMware, Kubernetes on-prem) y otros servicios hospedados encapsulando sus APIs.

**Explicación:**

Opción C es incorrecta: Agrupar archivos de configuración en un workspace/estado es un concepto de workspace de Terraform, no responsabilidad del provider.

Opción E es incorrecta: La aplicación de políticas de seguridad y cumplimiento se maneja con herramientas como Sentinel u OPA, no con providers.

---

## Question No. 90

**Tipo de Pregunta:** Opción Única

**Pregunta:** ¿Qué comando NO provoca que Terraform refresque su estado?

**Opciones:**
- A) terraform state list
- B) terraform plan
- C) terraform apply
- D) terraform destroy

**Respuesta Correcta:** A

**Explicación:** `terraform state list` lee el state file existente para listar recursos pero no activa un refresco contra la infraestructura real. Comandos como `plan`, `apply` y `destroy` realizan un refresco de estado por defecto antes de ejecutarse.

**Explicación:**

Opción B es incorrecta: `terraform plan` refresca el estado por defecto antes de generar un plan.

Opción C es incorrecta: `terraform apply` refresca el estado por defecto antes de aplicar cambios.

Opción D es incorrecta: `terraform destroy` también refresca el estado antes de destruir recursos.

---

## Question No. 91

**Tipo de Pregunta:** Opción Única

**Pregunta:** terraform init recupera y almacena en caché la configuración de todos los módulos remotos.

**Opciones:**
- A) Verdadero
- B) Falso

**Respuesta Correcta:** A

**Explicación:** `terraform init` descarga y almacena en caché los módulos remotos referenciados dentro del directorio `.terraform`, para que el directorio de trabajo tenga el código de módulos necesario para planificar y aplicar.

**Explicación:**

Opción B es incorrecta: Obtener módulos remotos es una de las responsabilidades principales de `terraform init`.

---

## Question No. 92

**Tipo de Pregunta:** Opción Única

**Pregunta:** Acabas de actualizar la versión de un provider en un proyecto Terraform existente. ¿Qué debes hacer para instalar el nuevo provider?

**Opciones:**
- A) Ejecutar terraform refresh.
- B) Ejecutar terraform init -upgrade.
- C) Ejecutar terraform apply -upgrade.
- D) Actualizar tu versión de Terraform.

**Respuesta Correcta:** B

**Explicación:** `terraform init -upgrade` indica a Terraform que ignore las versiones de provider previamente seleccionadas e instale las versiones más nuevas permitidas por las restricciones definidas en la configuración.

**Explicación:**

Opción A es incorrecta: `terraform refresh` actualiza el estado desde la infraestructura real y no instala providers.

Opción C es incorrecta: `terraform apply` no tiene un flag `-upgrade` para instalación de providers.

Opción D es incorrecta: Actualizar el binario de Terraform no está relacionado con descargar una versión más nueva del provider.

---

## Question No. 93

**Tipo de Pregunta:** Opción Única

**Pregunta:** Un módulo hijo siempre puede acceder a las variables declaradas en su módulo padre.

**Opciones:**
- A) Verdadero
- B) Falso

**Respuesta Correcta:** B

**Explicación:** Los módulos hijo no heredan implícitamente las variables del módulo padre. El módulo padre debe pasar explícitamente los valores al módulo hijo mediante argumentos de entrada del módulo.

**Explicación:**

Opción A es incorrecta: El alcance de las variables entre módulos está aislado; los valores deben pasarse explícitamente.

---

## Question No. 94

**Tipo de Pregunta:** Opción Única

**Pregunta:** Se muestra un bloque resource en la sección Exhibit de esta página. ¿Cómo referenciarías el atributo name de este recurso en HCL?

**Opciones:**
- A) resource.kubernetes_namespace.example.name
- B) kubernetes_namespace.example.name
- C) data.kubernetes.namespace.name
- D) kubernetes_namespace.test.name

**Respuesta Correcta:** B

**Explicación:** Los atributos de recursos en HCL se referencian con el patrón `tipo_recurso.nombre_recurso.atributo`. Para un recurso de tipo `kubernetes_namespace` llamado `example`, la referencia correcta es `kubernetes_namespace.example.name`.

**Explicación:**

Opción A es incorrecta: Las referencias HCL no comienzan con el prefijo literal `resource.`.

Opción C es incorrecta: Esa no es la sintaxis ni el nombre correcto para una referencia de data source.

Opción D es incorrecta: El nombre local del recurso debe coincidir con el declarado, que en el exhibit es `example`.

---

## Question No. 95

**Tipo de Pregunta:** Opción Única

**Pregunta:** terraform apply está fallando con el siguiente error. ¿Qué siguiente paso deberías tomar para determinar la causa raíz del problema?

```yaml
Error loading state: AccessDenied: Access Denied
status code: 403, request id: 288766CE5CCA24A0, host id: web.example.com
```

**Opciones:**
- A) Ejecutar terraform login para reautenticarte con el provider.
- B) Configurar TF_LOG=DEBUG.
- C) Revisar /var/log/terraform.log para mensajes de error.
- D) Revisar syslog para mensajes de error de Terraform.

**Respuesta Correcta:** B

**Explicación:** Configurar `TF_LOG=DEBUG` habilita logging detallado de diagnóstico de Terraform, que es el siguiente paso estándar cuando necesitas más contexto para diagnosticar problemas de autenticación, backend o acceso del provider.

**Explicación:**

Opción A es incorrecta: `terraform login` es para credenciales de Terraform Cloud/HCP Terraform, no una corrección general para todos los errores 403 de provider o backend.

Opción C es incorrecta: Terraform no escribe logs automáticamente en `/var/log/terraform.log` salvo que se configure explícitamente.

Opción D es incorrecta: Terraform no registra en syslog por defecto.

---

## Question No. 96

**Tipo de Pregunta:** Opción Única

**Pregunta:** Un administrador senior eliminó accidentalmente algunas de tus instancias cloud. ¿Qué hará Terraform cuando ejecutes terraform apply?

**Opciones:**
- A) Derribar toda la infraestructura del workspace y reconstruirla.
- B) Construir un conjunto completamente nuevo de infraestructura.
- C) Reconstruir solo las instancias que fueron eliminadas.
- D) Detenerse y generar un error sobre las instancias faltantes.

**Respuesta Correcta:** C

**Explicación:** Tras refrescar el estado, Terraform detecta que las instancias faltantes ya no existen y planifica recrear solo los recursos necesarios para alinear nuevamente la infraestructura real con la configuración.

**Explicación:**

Opción A es incorrecta: Terraform no reconstruye todo a menos que el plan lo requiera.

Opción B es incorrecta: Terraform reconcilia drift contra el estado existente; no crea un entorno totalmente separado por defecto.

Opción D es incorrecta: Los recursos gestionados faltantes normalmente se tratan como drift a corregir, no como una condición fatal.

---

## Question No. 97

**Tipo de Pregunta:** Opción Única

**Pregunta:** ¿Durante qué fase instala Terraform sus providers?

**Opciones:**
- A) Plan
- B) Init
- C) Refresh
- D) Todas las anteriores

**Respuesta Correcta:** B

**Explicación:** Los plugins de providers se descargan e instalan durante `terraform init`, que prepara el directorio de trabajo antes de planificar o aplicar.

**Explicación:**

Opción A es incorrecta: `terraform plan` usa providers ya instalados.

Opción C es incorrecta: Las operaciones de refresh dependen de providers instalados, pero no los instalan.

Opción D es incorrecta: La instalación de providers forma parte específicamente de la inicialización.

---

## Question No. 98

**Tipo de Pregunta:** Opción Única

**Pregunta:** terraform destroy es la única forma de eliminar infraestructura.

**Opciones:**
- A) Verdadero
- B) Falso

**Respuesta Correcta:** B

**Explicación:** La infraestructura también puede eliminarse cambiando la configuración y ejecutando `terraform apply`, borrando recursos manualmente fuera de Terraform o usando operaciones dirigidas. `terraform destroy` es solo una de las formas de remover recursos gestionados.

**Explicación:**

Opción A es incorrecta: La infraestructura gestionada por Terraform puede eliminarse mediante otros flujos además de un destroy completo.

---

## Question No. 99

**Tipo de Pregunta:** Opción Única

**Pregunta:** Creaste infraestructura fuera del flujo de Terraform que ahora quieres gestionar con Terraform. ¿Qué comando incorpora esa infraestructura al estado de Terraform?

**Opciones:**
- A) terraform get
- B) terraform refresh
- C) terraform import
- D) terraform init

**Respuesta Correcta:** C

**Explicación:** `terraform import` asocia un recurso externo existente con una dirección de recurso Terraform y lo registra en estado para que Terraform pueda gestionarlo.

**Explicación:**

Opción A es incorrecta: `terraform get` recupera módulos.

Opción B es incorrecta: `terraform refresh` actualiza el estado para recursos que Terraform ya está rastreando.

Opción D es incorrecta: `terraform init` inicializa el directorio de trabajo e instala dependencias.

---

## Question No. 100

**Tipo de Pregunta:** Opción Única

**Pregunta:** terraform init crea un archivo main.tf de ejemplo en el directorio actual.

**Opciones:**
- A) Verdadero
- B) Falso

**Respuesta Correcta:** B

**Explicación:** `terraform init` inicializa un directorio de configuración existente. No genera archivos Terraform de ejemplo ni crea automáticamente un `main.tf`.

**Explicación:**

Opción A es incorrecta: Terraform espera que los archivos de configuración ya existan o sean creados por el usuario u otra herramienta de scaffolding.

---

## Question No. 101

**Tipo de Pregunta:** Opción Única

**Pregunta:** ¿Qué afirmación describe un objetivo de Infrastructure as Code (IaC)?

**Opciones:**
- A) Un proceso de pipeline para probar y entregar software.
- B) Escribir una vez, ejecutar en cualquier lugar.
- C) La configuración programática de recursos.
- D) Definir una API agnóstica del proveedor.

**Respuesta Correcta:** C

**Explicación:** Un objetivo principal de IaC es definir, aprovisionar y gestionar infraestructura mediante código de forma repetible y auditable.

**Explicación:**

Opción A es incorrecta: Eso describe prácticas de CI/CD, no el objetivo central de IaC.

Opción B es incorrecta: Es un lema de portabilidad, no el objetivo principal de IaC.

Opción D es incorrecta: Las herramientas IaC pueden ser específicas de proveedor y no requieren una API agnóstica.

---

## Question No. 102

**Tipo de Pregunta:** Opción Única

**Pregunta:** Tienes una configuración Terraform simple que contiene una máquina virtual (VM) en un proveedor cloud. Ejecutas terraform apply y la VM se crea correctamente. ¿Qué pasará si ejecutas terraform apply de nuevo inmediatamente después sin cambiar código Terraform?

**Opciones:**
- A) Terraform terminará y recreará la VM.
- B) Terraform creará otra VM duplicada.
- C) Terraform aplicará la VM al state file.
- D) Nada

**Respuesta Correcta:** D

**Explicación:** Terraform es declarativo e idempotente. Si la configuración y la infraestructura ya coinciden, un segundo `terraform apply` no genera cambios.

**Explicación:**

Opción A es incorrecta: Terraform no recrea un recurso a menos que un cambio requiera reemplazo.

Opción B es incorrecta: Terraform no duplica recursos gestionados cuando no hay cambios en configuración.

Opción C es incorrecta: El recurso ya quedó registrado en estado tras el primer apply.

---

## Question No. 103

**Tipo de Pregunta:** Opción Única

**Pregunta:** Se muestra un bloque resource en la sección Exhibit de esta página. ¿Cuál es el nombre del recurso Terraform de ese bloque?

**Opciones:**
- A) test
- B) google
- C) compute_instance
- D) main

**Respuesta Correcta:** A

**Explicación:** En una declaración como `resource "google_compute_instance" "test" { ... }`, el nombre del recurso es la segunda etiqueta (`test`).

**Explicación:**

Opción B es incorrecta: `google` forma parte del namespace proveedor/tipo, no del nombre local del recurso.

Opción C es incorrecta: `compute_instance` forma parte del tipo de recurso, no del nombre del recurso.

Opción D es incorrecta: `main` no es el nombre local declarado en ese patrón de exhibit.

---

## Question No. 104

**Tipo de Pregunta:** Opción Única

**Pregunta:** Usas una cuenta de proveedor cloud compartida con otros miembros del equipo. Previamente usaste Terraform para crear un load balancer que escucha en el puerto 80. Tras cambios en la aplicación, actualizaste el código Terraform para cambiar el puerto a 443.

Ejecutas terraform plan y ves que el plan muestra el cambio de puerto de 80 a 443 como esperabas y te alejas un momento.

Mientras tanto, otro miembro del equipo cambia manualmente el puerto del load balancer a 443 desde la consola del proveedor antes de que regreses.

¿Qué ocurrirá cuando ejecutes terraform apply al regresar?

**Opciones:**
- A) Terraform recreará el load balancer.
- B) Terraform fallará con un error porque el state file ya no es exacto.
- C) Terraform cambiará el puerto del load balancer a 80 y luego lo volverá a 443.
- D) Terraform no hará cambios al load balancer y actualizará el state file para reflejar el cambio manual.

**Respuesta Correcta:** D

**Explicación:** Durante apply, Terraform refresca el estado antes de aplicar cambios. Como el recurso real ya coincide con el estado deseado (443), no requiere acciones; el estado se actualiza a la realidad actual.

**Explicación:**

Opción A es incorrecta: No hace falta recrear si la configuración actual ya coincide con la deseada.

Opción B es incorrecta: El drift se maneja mediante refresh, no con un fallo automático en este caso.

Opción C es incorrecta: Terraform no realiza un cambio ida-vuelta innecesario cuando el estado deseado ya existe.

---

## Question No. 105

**Tipo de Pregunta:** Opción Única

**Pregunta:** Las variables y outputs de Terraform que establecen el argumento description almacenarán esa descripción en el state file.

**Opciones:**
- A) Verdadero
- B) Falso

**Respuesta Correcta:** B

**Explicación:** El argumento `description` es metadato documental en la configuración. El estado de Terraform almacena instancias de recursos y valores de output, no descripciones de variables/outputs como datos de estado gestionado.

**Explicación:**

Opción A es incorrecta: Las descripciones ayudan a humanos en la configuración, pero no se guardan como valores de infraestructura en el estado.

---

## Question No. 106

**Tipo de Pregunta:** Opción Única

**Pregunta:** terraform validate usa APIs de provider para verificar tu configuración de infraestructura.

**Opciones:**
- A) Verdadero
- B) Falso

**Respuesta Correcta:** B

**Explicación:** `terraform validate` realiza verificaciones estáticas de sintaxis y consistencia interna de la configuración. No llama APIs de providers ni inspecciona infraestructura real.

**Explicación:**

Opción A es incorrecta: La interacción con provider/API ocurre en flujos de plan/apply/refresh, no en validate.

---

## Question No. 107

**Tipo de Pregunta:** Opción Única

**Pregunta:** Antes de poder usar un backend nuevo o integración con HCP Terraform/Terraform Cloud, primero debes ejecutar terraform init.

**Opciones:**
- A) Verdadero
- B) Falso

**Respuesta Correcta:** A

**Explicación:** La configuración de backend e integración cloud se inicializa con `terraform init`, que prepara el directorio de trabajo y aplica la configuración de backend.

**Explicación:**

Opción B es incorrecta: Terraform requiere inicialización antes de usar una nueva configuración de backend.

---

## Question No. 108

**Tipo de Pregunta:** Opción Única

**Pregunta:** Usar el comando terraform state rm sobre un recurso lo destruirá.

**Opciones:**
- A) Verdadero
- B) Falso

**Respuesta Correcta:** B

**Explicación:** `terraform state rm` elimina solo el vínculo del recurso en el estado. No destruye el objeto real en la infraestructura remota.

**Explicación:**

Opción A es incorrecta: El comando afecta el tracking del estado de Terraform, no el ciclo de vida del recurso remoto.

---

## Question No. 109

**Tipo de Pregunta:** Opción Única

**Pregunta:** ¿Cuál de las siguientes NO es una forma de disparar terraform destroy?

**Opciones:**
- A) Usar el comando destroy con auto-approve.
- B) Pasar --destroy al final de una solicitud de plan.
- C) Ejecutar terraform destroy desde el directorio correcto y luego escribir yes cuando el CLI lo solicite.

**Respuesta Correcta:** B

**Explicación:** El modo destroy en plan se usa como `terraform plan -destroy` (estilo de flag con un guion), y `terraform destroy` ejecuta la destrucción directamente. La redacción `--destroy al final de una solicitud de plan` no es el método estándar válido.

**Explicación:**

Opción A es incorrecta: `terraform destroy -auto-approve` es una forma válida de ejecutar destrucción.

Opción C es incorrecta: Ejecutar `terraform destroy` y confirmar es el flujo interactivo estándar.

---

## Question No. 110

**Tipo de Pregunta:** Opción Múltiple

**Pregunta:** ¿Cuáles de estos son features de HCP Terraform/Terraform Cloud? Elige las 2 respuestas correctas.

**Opciones:**
- A) Visualización automatizada de despliegue de infraestructura.
- B) Una interfaz de usuario web (UI).
- C) Backups automáticos de configuración y estado.
- D) Almacenamiento de estado remoto.

**Respuesta Correcta:** B, D

**Explicación:** HCP Terraform ofrece una UI web para flujos colaborativos y almacenamiento de estado remoto gestionado para consistencia de equipos.

**Explicación:**

Opción A es incorrecta: No es una feature núcleo nombrada en la forma planteada.

Opción C es incorrecta: Existe versionado de estado, pero "backups automáticos de configuración y estado" no es el par canónico esperado aquí.

---

## Question No. 111

**Tipo de Pregunta:** Opción Única

**Pregunta:** ¿Qué comando(s) agrega recursos existentes en una nube pública al estado de Terraform?

**Opciones:**
- A) terraform init
- B) terraform plan
- C) terraform refresh
- D) terraform import
- E) Todos

**Respuesta Correcta:** D

**Explicación:** `terraform import` es el comando diseñado específicamente para mapear recursos existentes al estado de Terraform.

**Explicación:**

Opción A es incorrecta: `terraform init` inicializa el directorio de trabajo.

Opción B es incorrecta: `terraform plan` previsualiza cambios.

Opción C es incorrecta: `terraform refresh` actualiza estado de recursos que ya están gestionados por el estado.

Opción E es incorrecta: Solo una opción de la lista realiza importación al estado.

---

## Question No. 112

**Tipo de Pregunta:** Opción Única

**Pregunta:** En un workspace de HCP Terraform/Terraform Cloud enlazado a un repositorio de control de versiones, los speculative plan runs se inician automáticamente cuando haces commit o merge de cambios al control de versiones.

**Opciones:**
- A) Verdadero
- B) Falso

**Respuesta Correcta:** A

**Explicación:** En workspaces conectados a VCS, los cambios entrantes en código disparan ejecuciones automáticamente, incluyendo comportamiento de planificación especulativa para cambios propuestos.

**Explicación:**

Opción B es incorrecta: El disparo automático de runs es comportamiento central de flujos impulsados por VCS.

---

## Question No. 113

**Tipo de Pregunta:** Opción Única

**Pregunta:** ¿Cuál es la convención de estilo de Terraform para sangrar un nivel de anidación respecto al nivel superior?

**Opciones:**
- A) Con dos espacios.
- B) Con cuatro espacios.
- C) Con tres espacios.
- D) Con un tab.

**Respuesta Correcta:** A

**Explicación:** Las convenciones de estilo de Terraform y la salida de su formateador usan dos espacios por cada nivel de indentación en HCL.

**Explicación:**

Opción B es incorrecta: Cuatro espacios no es la convención por defecto de Terraform.

Opción C es incorrecta: Tres espacios no se usan en los estándares de formato de Terraform.

Opción D es incorrecta: Los tabs no son la convención generada por `terraform fmt`.

---

## Question No. 114

**Tipo de Pregunta:** Opción Única

**Pregunta:** Se muestra un bloque module en la sección Exhibit de esta página. Cuando usas un bloque module para referenciar un módulo del Terraform Registry como en el ejemplo, ¿cómo especificas la versión 1.0.0 del módulo?

**Opciones:**
- A) Agregar el argumento ?ref=v1.0.0 al source path.
- B) No puedes. Los módulos en el public Terraform Registry no soportan versionado.
- C) Agregar un atributo version = '1.0.0' al bloque module.
- D) Nada. Los módulos del public Terraform module Registry siempre usan por defecto la versión 1.0.0.

**Respuesta Correcta:** C

**Explicación:** Los módulos del Registry se versionan con el argumento `version` en el bloque module, por ejemplo `version = "1.0.0"`.

**Explicación:**

Opción A es incorrecta: La sintaxis `?ref=` aplica a fuentes VCS, no a módulos de Terraform Registry.

Opción B es incorrecta: Los módulos del Registry sí soportan versiones semánticas.

Opción D es incorrecta: Los módulos del Registry no tienen un default universal a 1.0.0.

---

## Question No. 115

**Tipo de Pregunta:** Opción Única

**Pregunta:** ¿Cuándo necesitas ejecutar explícitamente Terraform en modo refresh-only?

**Opciones:**
- A) Antes de cada terraform plan.
- B) Antes de cada terraform apply.
- C) Antes de cada terraform import.
- D) Ninguna de las anteriores.

**Respuesta Correcta:** D

**Explicación:** El modo refresh-only es una operación especializada cuando deseas sincronizar estado con infraestructura real sin cambiar recursos. No se requiere antes de flujos normales de plan/apply/import.

**Explicación:**

Opción A es incorrecta: `terraform plan` refresca estado por defecto.

Opción B es incorrecta: `terraform apply` también refresca estado por defecto antes de aplicar cambios.

Opción C es incorrecta: Importar recursos no requiere un refresh-only previo.

---

## Question No. 116

**Tipo de Pregunta:** Opción Única

**Pregunta:** ¿Qué método para compartir módulos Terraform cumple los siguientes criterios?

Mantiene confidenciales las configuraciones de módulos dentro de tu organización.

Soporta restricciones de versión semántica de Terraform.

Proporciona un directorio navegable de tus módulos.

**Opciones:**
- A) Un repositorio Git que contiene tus módulos.
- B) Public Terraform module registry.
- C) Un subdirectorio dentro de tu workspace.
- D) HCP Terraform/Terraform Cloud private registry.

**Respuesta Correcta:** D

**Explicación:** El private registry de HCP Terraform ofrece publicación privada de módulos con versionado semántico y un catálogo navegable para organizaciones.

**Explicación:**

Opción A es incorrecta: Un repositorio Git puede alojar módulos, pero no ofrece de forma nativa el mismo flujo de catálogo/versionado de un registry privado.

Opción B es incorrecta: El registry público no es confidencial.

Opción C es incorrecta: Un subdirectorio local no es un registry privado con features de catálogo y versionado.

---

## Question No. 117

**Tipo de Pregunta:** Opción Única

**Pregunta:** ¿Cuál es el provider del recurso mostrado en el Exhibit?

```hcl
resource "aws_vpc" "main" {
  name = "test"
}
```

**Opciones:**
- A) VPC
- B) test
- C) main
- D) aws

**Respuesta Correcta:** D

**Explicación:** En `aws_vpc`, el prefijo del provider es `aws` y el tipo de recurso es `vpc`. Por lo tanto, el provider es AWS.

**Explicación:**

Opción A es incorrecta: VPC es la parte de tipo de recurso, no el provider.

Opción B es incorrecta: `test` es un valor asignado dentro del bloque.

Opción C es incorrecta: `main` es el nombre local del recurso.

---

## Question No. 118

**Tipo de Pregunta:** Opción Única

**Pregunta:** Tu módulo raíz contiene una variable llamada num_servers. ¿Cuál es la forma correcta de pasar su valor a un módulo hijo con una entrada llamada servers?

**Opciones:**
- A) servers = num_servers
- B) servers = var(num_servers)
- C) servers = var.num_servers
- D) servers = ${var.num_servers}

**Respuesta Correcta:** C

**Explicación:** En expresiones HCL modernas, las variables del módulo raíz se referencian como `var.<nombre>`, por lo que la asignación correcta es `servers = var.num_servers`.

**Explicación:**

Opción A es incorrecta: `num_servers` sin prefijo no es la sintaxis correcta de referencia de variable.

Opción B es incorrecta: No existe sintaxis de función `var()` en Terraform.

Opción D es incorrecta: La interpolación pura es sintaxis heredada e innecesaria en contextos de expresión HCL actuales.

---

## Question No. 119

**Tipo de Pregunta:** Opción Única

**Pregunta:** Cuando incluyes un bloque module en tu configuración que referencia un módulo desde Terraform Registry, el atributo 'version' es obligatorio.

**Opciones:**
- A) Verdadero
- B) Falso

**Respuesta Correcta:** B

**Explicación:** El argumento `version` es opcional para módulos del Registry, aunque se recomienda fuertemente fijar versiones para evitar upgrades inesperados.

**Explicación:**

Opción A es incorrecta: Terraform puede resolver un módulo de Registry sin una restricción de versión explícita.

---

## Question No. 120

**Tipo de Pregunta:** Opción Múltiple

**Pregunta:** Deseas usar API tokens y otros secretos dentro de los workspaces Terraform de tu equipo. ¿Dónde recomienda HashiCorp almacenar estos valores sensibles? (Selecciona 3 respuestas correctas)

**Opciones:**
- A) En una variable de HCP Terraform/Terraform Cloud, con la opción sensitive activada.
- B) En HashiCorp Vault.
- C) En un archivo terraform.tfvars, gestionado de forma segura y compartido con tu equipo.
- D) En un archivo terraform.tfvars, versionado en tu sistema de control de versiones.
- E) En un documento de texto plano en una unidad compartida.

**Respuesta Correcta:** A, B, C

**Explicación:** Los enfoques seguros recomendados incluyen variables sensibles de workspace y gestores de secretos como Vault. Si se usa tfvars, debe manejarse de forma segura fuera de control de versiones con controles de acceso estrictos.

**Explicación:**

Opción D es incorrecta: Los valores sensibles no deben committearse en control de versiones.

Opción E es incorrecta: Documentos de texto plano compartidos no son una práctica aceptable de gestión de secretos.

---

## Question No. 121

**Tipo de Pregunta:** Opción Única

**Pregunta:** La configuración de Terraform solo puede llamar módulos desde el registro público.

**Opciones:**
- A) Verdadero
- B) Falso

**Respuesta Correcta:** B

**Explicación:** Terraform puede usar módulos desde múltiples orígenes: rutas locales, repositorios VCS, registros privados y el Terraform Registry público.

**Explicación:**

Opción A es incorrecta: El registro público es solo una de varias fuentes de módulos soportadas.

---

## Question No. 122

**Tipo de Pregunta:** Opción Múltiple

**Pregunta:** Usaste Terraform para crear un entorno efímero de desarrollo en la nube y ahora quieres destruir toda la infraestructura descrita por tu configuración Terraform. Para mayor seguridad, primero quieres ver toda la infraestructura que Terraform eliminará.

¿Qué comando debes usar para mostrar todos los recursos que serán eliminados? (Selecciona 2 respuestas correctas)

**Opciones:**
- A) Ejecutar `terraform destroy`. Esto mostrará todos los recursos que serán eliminados antes de pedir aprobación.
- B) Ejecutar `terraform plan -destroy`.
- C) Ejecutar `terraform state rm *`.

**Respuesta Correcta:** A, B

**Explicación:** Tanto `terraform destroy` (interactivo) como `terraform plan -destroy` muestran el plan de eliminaciones antes de confirmar cambios.

**Explicación:**

Opción C es incorrecta: `terraform state rm` solo elimina recursos del estado de Terraform; no destruye infraestructura.

---

## Question No. 123

**Tipo de Pregunta:** Opción Múltiple

**Pregunta:** ¿Cuáles de estos son beneficios de usar Sentinel con HCP Terraform/Terraform Cloud? (Selecciona 3 respuestas correctas)

**Opciones:**
- A) Puedes forzar una lista de AMIs de AWS aprobadas.
- B) Las políticas Sentinel pueden escribirse en HashiCorp Configuration Language (HCL).
- C) Puedes hacer check-out y check-in de claves de acceso cloud.
- D) Policy-as-code puede reforzar buenas prácticas de seguridad.

**Respuesta Correcta:** A, B, D

**Explicación:** Sentinel habilita gobernanza con policy-as-code para ejecuciones, incluyendo controles como allowlists y reglas de seguridad.

**Explicación:**

Opción C es incorrecta: El manejo de claves es una función de secret management, no una capacidad de Sentinel.

---

## Question No. 124

**Tipo de Pregunta:** Opción Única

**Pregunta:** ¿Cuál de estas afirmaciones sobre workspaces de HCP Terraform/Terraform Cloud es falsa?

**Opciones:**
- A) Pueden almacenar credenciales cloud de forma segura.
- B) Tienen controles de acceso basados en roles.
- C) Los planes y applies pueden dispararse por integraciones con sistemas de control de versiones.
- D) Debes usar la CLI para cambiar entre workspaces.

**Respuesta Correcta:** D

**Explicación:** HCP Terraform ofrece UI web y API para seleccionar/administrar workspaces; no es obligatorio hacerlo solo por CLI.

**Explicación:**

Opción A es incorrecta: El manejo seguro de credenciales está soportado.

Opción B es incorrecta: RBAC está soportado.

Opción C es incorrecta: Los runs disparados por VCS son una capacidad central.

---

## Question No. 125

**Tipo de Pregunta:** Opción Múltiple

**Pregunta:** ¿Cuáles de estas acciones están prohibidas cuando el state file de Terraform está bloqueado? (Selecciona 3 respuestas correctas)

**Opciones:**
- A) terraform apply
- B) terraform state list
- C) terraform destroy
- D) terraform fmt

**Respuesta Correcta:** A, B, C

**Explicación:** Cuando el estado está bloqueado, las operaciones dependientes de estado se bloquean para evitar riesgos de concurrencia.

**Explicación:**

Opción D es incorrecta: `terraform fmt` solo formatea archivos y no requiere acceso al estado.

---

## Question No. 126

**Tipo de Pregunta:** Opción Múltiple

**Pregunta:** ¿Cuáles de estas son features de HCP Terraform/Terraform Cloud? (Selecciona 2 respuestas correctas)

**Opciones:**
- A) Backups automáticos de configuración y estado.
- B) Almacenamiento de estado remoto.
- C) Visualización automatizada de despliegue de infraestructura.
- D) Interfaz de usuario web (UI).

**Respuesta Correcta:** B, D

**Explicación:** Las capacidades centrales de HCP Terraform incluyen estado remoto gestionado y UI web para runs, gobernanza y colaboración.

**Explicación:**

Opción A es incorrecta: No se expresa como feature núcleo independiente en este contexto.

Opción C es incorrecta: Esa redacción no corresponde a una feature canónica esperada en esta pregunta.

---

## Question No. 127

**Tipo de Pregunta:** Opción Única

**Pregunta:** Terraform cifra los valores sensibles almacenados en tu state file.

**Opciones:**
- A) Verdadero
- B) Falso

**Respuesta Correcta:** B

**Explicación:** Marcar un valor como `sensitive` lo oculta en salida CLI/UI, pero puede seguir estando en el estado. El cifrado depende de la configuración del backend/almacenamiento.

**Explicación:**

Opción A es incorrecta: Enmascarar sensibilidad no equivale a cifrado automático del estado.

---

## Question No. 128

**Tipo de Pregunta:** Opción Única

**Pregunta:** ¿Cuál es el provider para este recurso?

```hcl
resource "aws_vpc" "main" {
  name = "test"
}
```

**Opciones:**
- A) Vpc
- B) Test
- C) Main
- D) aws

**Respuesta Correcta:** D

**Explicación:** En `aws_vpc`, `aws` es el prefijo del provider y `vpc` es el tipo de recurso.

**Explicación:**

Opción A es incorrecta: VPC es el segmento del tipo de recurso.

Opción B es incorrecta: `test` es un valor usado dentro del bloque.

Opción C es incorrecta: `main` es el nombre local del recurso.

---

## Question No. 129

**Tipo de Pregunta:** Opción Única

**Pregunta:** Todos los módulos publicados en el Terraform Module Registry oficial han sido verificados por HashiCorp.

**Opciones:**
- A) Verdadero
- B) Falso

**Respuesta Correcta:** B

**Explicación:** No todos los módulos públicos del registry están verificados por HashiCorp; la verificación se indica de manera separada para ciertos publicadores/módulos.

**Explicación:**

Opción A es incorrecta: La verificación no es universal para todos los módulos publicados.

---

## Question No. 130

**Tipo de Pregunta:** Opción Única

**Pregunta:** Tienes una lista de números que representa la cantidad de cores CPU libres en cada cluster virtual: numcpus = [18, 3, 7, 11, 2]

¿Qué función de Terraform podrías usar para seleccionar el número más grande de la lista?

**Opciones:**
- A) top(numcpus)
- B) max(numcpus)
- C) ceil (numcpus)
- D) hight[numcpus]

**Respuesta Correcta:** B

**Explicación:** `max(...)` devuelve el mayor valor numérico entre los argumentos proporcionados.

**Explicación:**

Opción A es incorrecta: `top` no es una función de Terraform.

Opción C es incorrecta: `ceil` redondea un número individual hacia arriba, no selecciona el máximo de una lista.

Opción D es incorrecta: No es sintaxis válida de función en Terraform.

---

## Question No. 131

**Tipo de Pregunta:** Opción Única

**Pregunta:** Múltiples miembros del equipo colaboran en infraestructura usando Terraform y quieren dar formato al código Terraform siguiendo la convención estándar de estilo de Terraform.

¿Cómo deben asegurar que el código cumpla las convenciones?

**Opciones:**
- A) Terraform formatea automáticamente la configuración en terraform apply
- B) Ejecutar terraform validate antes de terraform plan o terraform apply
- C) Usar terraform fmt
- D) Reemplazar todos los tabs por espacios

**Respuesta Correcta:** C

**Explicación:** `terraform fmt` es el formateador canónico que aplica convenciones de estilo Terraform de manera consistente.

**Explicación:**

Opción A es incorrecta: `terraform apply` no auto-formatea archivos.

Opción B es incorrecta: `terraform validate` revisa correctitud, no formato de estilo.

Opción D es incorrecta: Reemplazos manuales son incompletos y poco confiables frente a `terraform fmt`.

---

## Question No. 132

**Tipo de Pregunta:** Opción Única

**Pregunta:** ¿Cómo puede ayudar terraform plan en el proceso de desarrollo?

**Opciones:**
- A) Inicializa el directorio de trabajo que contiene los archivos de configuración Terraform
- B) Valida tus expectativas contra el plan de ejecución sin modificar permanentemente el estado
- C) Formatea tus archivos de configuración Terraform
- D) Reconcilia el estado de Terraform contra recursos desplegados y modifica permanentemente el estado usando el estado actual de los recursos desplegados

**Respuesta Correcta:** B

**Explicación:** `terraform plan` previsualiza acciones para validar intención antes de hacer cambios en infraestructura.

**Explicación:**

Opción A es incorrecta: La inicialización se hace con `terraform init`.

Opción C es incorrecta: El formateo se hace con `terraform fmt`.

Opción D es incorrecta: Eso describe comportamiento de reconciliación de estado tipo refresh, no el propósito de plan.

---

## Question No. 133

**Tipo de Pregunta:** Opción Única

**Pregunta:** Puedes acceder a estado almacenado con backend local usando el data source terraform_remote_state.

**Opciones:**
- A) Verdadero
- B) Falso

**Respuesta Correcta:** A

**Explicación:** `terraform_remote_state` soporta backend local cuando se configura con la ruta correcta del state local.

**Explicación:**

Opción B es incorrecta: El estado de backend local puede leerse así cuando se configura correctamente.

---

## Question No. 134

**Tipo de Pregunta:** Opción Única

**Pregunta:** Todos los tipos de backend estándar soportan state locking, y operaciones remotas como plan, apply y destroy.

**Opciones:**
- A) Verdadero
- B) Falso

**Respuesta Correcta:** B

**Explicación:** Las capacidades de backend varían. No todos los backends soportan locking, y la ejecución remota es específica de ciertos backends/flujos.

**Explicación:**

Opción A es incorrecta: Las features no son uniformes entre todos los tipos de backend.

---

## Question No. 135

**Tipo de Pregunta:** Opción Única

**Pregunta:** Un output de Terraform con el argumento 'sensitive' en true no almacenará ese valor en el state file.

**Opciones:**
- A) Verdadero
- B) Falso

**Respuesta Correcta:** B

**Explicación:** Outputs sensibles se ocultan en la visualización, pero sus valores pueden seguir presentes en estado.

**Explicación:**

Opción A es incorrecta: `sensitive = true` controla visibilidad, no omisión en almacenamiento del estado.

---

## Question No. 136

**Tipo de Pregunta:** Opción Única

**Pregunta:** Quieres definir múltiples discos de datos como bloques anidados dentro del bloque resource para una máquina virtual. ¿Qué feature de Terraform te ayuda a definir esos bloques usando valores de una variable?

**Opciones:**
- A) Local values
- B) Count arguments
- C) Collection functions
- D) Dynamic blocks

**Respuesta Correcta:** D

**Explicación:** Los bloques `dynamic` se usan para generar estructuras de bloques anidados a partir de colecciones de entrada.

**Explicación:**

Opción A es incorrecta: Locals guardan valores computados pero no generan directamente instancias de bloques anidados.

Opción B es incorrecta: `count` aplica a recursos/módulos completos, no a cualquier bloque anidado arbitrario.

Opción C es incorrecta: Las funciones transforman datos, pero no declaran por sí solas sintaxis repetida de bloques anidados.

---

## Question No. 137

**Tipo de Pregunta:** Opción Única

**Pregunta:** ¿Cuándo crea Terraform el archivo .terraform.lock.hc1?

**Opciones:**
- A) Después de tu primer terraform plan
- B) Después de tu primer terraform apply
- C) Después de tu primer terraform init
- D) Cuando habilitas state locking

**Respuesta Correcta:** C

**Explicación:** El archivo de lock de dependencias se crea/actualiza durante `terraform init` cuando se resuelven selecciones de providers.

**Explicación:**

Opción A es incorrecta: Plan depende de selección de providers ya inicializada.

Opción B es incorrecta: Apply no es el disparador de creación del lock file.

Opción D es incorrecta: El state locking no está relacionado con la creación del lock de dependencias.

---

## Question No. 138

**Tipo de Pregunta:** Opción Única

**Pregunta:** ¿Qué está destinado a detectar terraform plan -refresh-only?

**Opciones:**
- A) Cambios en código de configuración Terraform
- B) State files corruptos
- C) Drift del state file
- D) State files vacíos

**Respuesta Correcta:** C

**Explicación:** El modo refresh-only compara el estado registrado con la infraestructura real para detectar y reconciliar drift.

**Explicación:**

Opción A es incorrecta: Detectar cambios de código corresponde al diff normal de plan, no al objetivo de refresh-only.

Opción B es incorrecta: No es un escáner de corrupción.

Opción D es incorrecta: No está orientado específicamente a detectar estados vacíos.

---

## Question No. 139

**Tipo de Pregunta:** Opción Múltiple

**Pregunta:** ¿Cuáles de estas son features de Terraform Cloud? Elige dos respuestas correctas.

**Opciones:**
- A) Una interfaz de usuario web (UI)
- B) Visualización automatizada de despliegue de infraestructura
- C) Backups automáticos
- D) Almacenamiento de estado remoto

**Respuesta Correcta:** A, D

**Explicación:** Terraform Cloud ofrece UI web y almacenamiento de estado remoto gestionado como capacidades centrales de colaboración.

**Explicación:**

Opción B es incorrecta: No es una feature canónica en este contexto de examen.

Opción C es incorrecta: Aunque existen versiones de estado, esta opción no es el par principal esperado aquí.

---

## Question No. 140

**Tipo de Pregunta:** Opción Única

**Pregunta:** ¿Qué hace terraform import?

**Opciones:**
- A) Importa recursos existentes al state file
- B) Importa toda la infraestructura de un proveedor cloud dado
- C) Importa un módulo nuevo de Terraform
- D) Importa copias limpias de recursos tainted
- E) Ninguna de las anteriores

**Respuesta Correcta:** A

**Explicación:** `terraform import` mapea un recurso real existente a una dirección Terraform en el estado.

**Explicación:**

Opción B es incorrecta: Import apunta a recursos específicos, no a toda la infraestructura.

Opción C es incorrecta: La descarga de módulos se hace con `terraform init`.

Opción D es incorrecta: Los flujos de taint/replace no están relacionados con import.

Opción E es incorrecta: La opción A es correcta.

---

## Question No. 141

**Tipo de Pregunta:** Opción Única

**Pregunta:** ¿Qué comando de Terraform verifica que la sintaxis de tu configuración sea correcta?

**Opciones:**
- A) terraform validate
- B) terraform init
- C) terraform show
- D) terraform fmt

**Respuesta Correcta:** A

**Explicación:** `terraform validate` realiza verificaciones de sintaxis y consistencia interna de los archivos de configuración.

**Explicación:**

Opción B es incorrecta: `init` inicializa providers/módulos/backend.

Opción C es incorrecta: `show` renderiza salida de state/plan.

Opción D es incorrecta: `fmt` formatea estilo, no valida semántica.

---

## Question No. 142

**Tipo de Pregunta:** Opción Única

**Pregunta:** terraform validate reporta errores de chequeo de sintaxis para cuál de los siguientes casos?

**Opciones:**
- A) El código contiene tabs para indentación en lugar de espacios
- B) Falta un valor para una variable
- C) El state file no coincide con la infraestructura actual
- D) Ninguna de las anteriores

**Respuesta Correcta:** D

**Explicación:** `terraform validate` verifica estructura y semántica de configuración, no estilo de indentación, completitud de valores en runtime o drift de infraestructura.

**Explicación:**

Opción A es incorrecta: El estilo de indentación es tema de formateo, no falla de validate por sí solo.

Opción B es incorrecta: Valores faltantes en runtime suelen aparecer en contexto de plan/apply.

Opción C es incorrecta: El drift se detecta vía refresh/plan contra infraestructura real.

---

## Question No. 143

**Tipo de Pregunta:** Opción Única

**Pregunta:** Infrastructure as Code (IaC) puede almacenarse en un sistema de control de versiones junto con el código de aplicación.

**Opciones:**
- A) Verdadero
- B) Falso

**Respuesta Correcta:** A

**Explicación:** Almacenar IaC en control de versiones es una práctica base para colaboración, trazabilidad e historial de cambios.

**Explicación:**

Opción B es incorrecta: IaC se gestiona común y correctamente en repositorios VCS.

---

## Question No. 144

**Tipo de Pregunta:** Opción Única

**Pregunta:** ¿En qué parte de tu configuración Terraform especificas un backend de estado?

**Opciones:**
- A) En el bloque resource
- B) En el bloque data source
- C) En el bloque terraform
- D) En el bloque provider

**Respuesta Correcta:** C

**Explicación:** La configuración de backend se declara en el bloque de nivel superior `terraform`.

**Explicación:**

Opción A es incorrecta: Bloques resource definen objetos de infraestructura.

Opción B es incorrecta: Bloques data source leen datos existentes.

Opción D es incorrecta: Bloques provider configuran autenticación/comportamiento del proveedor.

---

## Question No. 145

**Tipo de Pregunta:** Opción Única

**Pregunta:** En un workspace Terraform Cloud enlazado a un repositorio de control de versiones, los speculative plan runs se inician automáticamente cuando haces merge o commit de cambios al control de versiones.

**Opciones:**
- A) Verdadero
- B) Falso

**Respuesta Correcta:** A

**Explicación:** Los workspaces Terraform Cloud conectados a VCS disparan runs automáticamente desde cambios entrantes del repositorio.

**Explicación:**

Opción B es incorrecta: El disparo automático de runs es comportamiento esperado en este modelo de integración.

---

## Question No. 146

**Tipo de Pregunta:** Opción Única

**Pregunta:** ¿Cuál de los siguientes argumentos es requerido al declarar un output de Terraform?

**Opciones:**
- A) value
- B) description
- C) default
- D) sensitive

**Respuesta Correcta:** A

**Explicación:** El único argumento requerido en un bloque output es `value`.

**Explicación:**

Opción B es incorrecta: `description` es metadato opcional.

Opción C es incorrecta: `default` corresponde a bloques variable, no output.

Opción D es incorrecta: `sensitive` es opcional.

---

## Question No. 147

**Tipo de Pregunta:** Opción Única

**Pregunta:** Estás escribiendo una configuración Terraform que necesita leer entrada desde un archivo local llamado id_rsa.pub . ¿Qué función built-in de Terraform puedes usar para importar el contenido del archivo como string?

**Opciones:**
- A) file('id_rsa.pub')
- B) templaTefil('id_rsa.pub')
- C) filebase64('id_rsa.pub')
- D) fileset<'id_rsa.pub')

**Respuesta Correcta:** A

**Explicación:** `file("...")` retorna el contenido del archivo como string sin codificar.

**Explicación:**

Opción B es incorrecta: El nombre/sintaxis de la función es inválido.

Opción C es incorrecta: `filebase64` devuelve contenido codificado en Base64, no texto plano.

Opción D es incorrecta: `fileset` devuelve rutas que coinciden con un patrón, no el contenido del archivo.

---

## Question No. 148

**Tipo de Pregunta:** Opción Única

**Pregunta:** Mientras intentas desplegar recursos en tu proveedor cloud con Terraform, notas comportamiento extraño y respuestas lentas. Para troubleshooting decides activar debugging en Terraform. ¿Qué variables de entorno deben configurarse para volver más verboso el logging de Terraform?

**Opciones:**
- A) TF_LOG_PAIH
- B) TF_LOG
- C) TF_VAR_log_path
- D) TF_VAR_log_level

**Respuesta Correcta:** B

**Explicación:** La verbosidad de debug de Terraform se controla con la variable de entorno `TF_LOG` (por ejemplo `TRACE`, `DEBUG`, etc.).

**Explicación:**

Opción A es incorrecta: Es una variable mal escrita/inválida.

Opción C es incorrecta: `TF_VAR_*` se usa para pasar variables de entrada, no para controles de logging interno.

Opción D es incorrecta: `TF_VAR_*` no controla la verbosidad de logs internos de Terraform.

---

## Question No. 149

**Tipo de Pregunta:** Opción Única

**Pregunta:** Antes de poder usar un backend remoto, primero debes ejecutar terra-form init.

**Opciones:**
- A) Verdadero
- B) Falso

**Respuesta Correcta:** A

**Explicación:** La inicialización y/o migración de backend se gestiona con `terraform init`.

**Explicación:**

Opción B es incorrecta: Terraform requiere inicialización para configurar y usar backend.

---

## Question No. 150

**Tipo de Pregunta:** Opción Única

**Pregunta:** ¿Por qué usarías el flag -replace en terraform apply?

**Opciones:**
- A) Quieres que Terraform ignore un recurso en el próximo apply
- B) Quieres que Terraform destruya toda la infraestructura en tu workspace
- C) Quieres forzar que Terraform destruya un recurso en el próximo apply
- D) Quieres forzar que Terraform destruya y recree un recurso en el próximo apply

**Respuesta Correcta:** D

**Explicación:** La opción `-replace` fuerza el reemplazo de una instancia específica de recurso durante apply.

**Explicación:**

Opción A es incorrecta: Ignorar recursos se maneja de otra forma (por ejemplo lifecycle o estrategias de estado).

Opción B es incorrecta: El teardown completo se realiza con flujos de destroy.

Opción C es incorrecta: Reemplazo implica destruir y recrear, no solo destruir.

---

## Question No. 151

**Tipo de Pregunta:** Opción Única

**Pregunta:** terraform plan actualiza tu state file.

**Opciones:**
- A) Verdadero
- B) Falso

**Respuesta Correcta:** B

**Explicación:** `terraform plan` previsualiza cambios previstos y no aplica modificaciones de infraestructura.

**Explicación:**

Opción A es incorrecta: Plan es para previsualización/validación, no ejecución de cambios.

---

## Question No. 152

**Tipo de Pregunta:** Opción Única

**Pregunta:** Define el propósito del estado en Terraform.

**Opciones:**
- A) El estado mapea recursos del mundo real con tu configuración y mantiene metadatos
- B) El estado te permite aplicar configuraciones relacionadas con políticas de cumplimiento
- C) El estado almacena variables y te permite reutilizar código rápidamente
- D) El estado codifica las dependencias de recursos relacionados

**Respuesta Correcta:** A

**Explicación:** El estado en Terraform es el mapeo entre configuración y recursos reales, incluyendo IDs y metadatos.

**Explicación:**

Opción B es incorrecta: El cumplimiento se aplica con políticas/herramientas de gobernanza, no por el estado en sí.

Opción C es incorrecta: Las variables son entradas de configuración, no la finalidad del estado.

Opción D es incorrecta: Dependencias se derivan de referencias y del grafo de Terraform.

---

## Question No. 153

**Tipo de Pregunta:** Opción Única

**Pregunta:** ¿Cuál de estas acciones evitará que dos ejecuciones de Terraform cambien el mismo archivo de estado al mismo tiempo?

**Opciones:**
- A) Refrescar el estado después de ejecutar Terraform
- B) Borrar el estado antes de ejecutar Terraform
- C) Configurar state locking para tu backend de estado
- D) Ejecutar Terraform con parallelism en 1

**Respuesta Correcta:** C

**Explicación:** El bloqueo de estado evita modificaciones concurrentes sobre el mismo estado.

**Explicación:**

Opción A es incorrecta: Refresh no proporciona exclusión mutua.

Opción B es incorrecta: Borrar estado es destructivo y no resuelve concurrencia.

Opción D es incorrecta: Parallelism controla recursos dentro de una ejecución, no bloqueos entre ejecuciones.

---

## Question No. 154

**Tipo de Pregunta:** Opción Única

**Pregunta:** ¿Qué tipo de bloque obtiene o calcula información para usarla en otra parte de una configuración Terraform?

**Opciones:**
- A) data
- B) local
- C) resource
- D) provider

**Respuesta Correcta:** A

**Explicación:** Los bloques `data` consultan información de solo lectura desde proveedores para reutilizarla en expresiones.

**Explicación:**

Opción B es incorrecta: Locals calculan valores, pero no consultan datos externos.

Opción C es incorrecta: Resource gestiona objetos de infraestructura.

Opción D es incorrecta: Provider configura comportamiento/autenticación del proveedor.

---

## Question No. 155

**Tipo de Pregunta:** Opción Única

**Pregunta:** Cambiar el backend de Terraform desde el backend por defecto 'local' a uno diferente después de tu primer terraform apply es:

**Opciones:**
- A) Opcional
- B) Imposible
- C) Obligatorio
- D) Desaconsejado

**Respuesta Correcta:** A

**Explicación:** La migración de backend es posible y opcional; si cambias backend, Terraform puede migrar estado con `terraform init`.

**Explicación:**

Opción B es incorrecta: Sí es posible migrar backend/estado.

Opción C es incorrecta: No es obligatorio cambiar desde local.

Opción D es incorrecta: Es un flujo soportado y común.

---

## Question No. 156

**Tipo de Pregunta:** Opción Única

**Pregunta:** ¿Cuál de los siguientes NO es un source path válido para especificar un módulo?

**Opciones:**
- A) source = 'github.com/hashicorp/example'
- B) source = './module?version=v1.6.0'
- C) source = 'hashicorp/consul/aws'
- D) source = './module'

**Respuesta Correcta:** B

**Explicación:** Los paths locales no usan query de versión. Deben ir como ruta relativa/absoluta simple.

**Explicación:**

Opción A es incorrecta: Es una sintaxis válida de fuente VCS.

Opción C es incorrecta: Es una sintaxis válida de Registry.

Opción D es incorrecta: Es una fuente local válida.

---

## Question No. 157

**Tipo de Pregunta:** Opción Múltiple

**Pregunta:** ¿Cuáles son beneficios de usar Sentinel con Terraform Cloud? Elige tres respuestas correctas.

**Opciones:**
- A) Puedes restringir configuraciones específicas de recursos, por ejemplo impedir CIDR=0.0.0.0/0
- B) Puedes hacer check-out y check-in de llaves de acceso cloud
- C) Las políticas Sentinel se pueden escribir en HCL
- D) Policy-as-code puede reforzar buenas prácticas de seguridad
- E) Puedes forzar una lista de AMIs aprobadas en AWS

**Respuesta Correcta:** A, D, E

**Explicación:** Sentinel permite gobernanza policy-as-code, incluyendo restricciones de seguridad y allowlists.

**Explicación:**

Opción B es incorrecta: El manejo de llaves es secret management, no Sentinel.

Opción C es incorrecta: Sentinel usa su propio lenguaje, no HCL.

---

## Question No. 158

**Tipo de Pregunta:** Opción Múltiple

**Pregunta:** ¿Cuáles son ventajas de usar infraestructura como código (IaC) en lugar de aprovisionar con GUI? Elige dos respuestas correctas.

**Opciones:**
- A) Evita modificaciones manuales a tus recursos
- B) Permite versionar, reutilizar y compartir configuración de infraestructura
- C) Asegura tus credenciales
- D) Aprovisiona los mismos recursos a menor costo
- E) Reduce el riesgo de error del operador

**Respuesta Correcta:** B, E

**Explicación:** IaC mejora versionado, reutilización, colaboración y reduce errores manuales.

**Explicación:**

Opción A es incorrecta: No impide totalmente cambios manuales fuera de Terraform.

Opción C es incorrecta: Seguridad de credenciales depende del método de gestión de secretos.

Opción D es incorrecta: IaC no reduce por sí mismo el costo unitario de recursos.

---

## Question No. 159

**Tipo de Pregunta:** Opción Única

**Pregunta:** ¿Cuál de las siguientes NO es verdadera sobre los providers de Terraform?

**Opciones:**
- A) Una persona individual puede escribir un provider de Terraform
- B) Una comunidad de usuarios puede mantener un provider
- C) HashiCorp mantiene algunos providers
- D) Cloud providers y vendors de infraestructura pueden escribir, mantener o colaborar en providers Terraform
- E) providers
- F) Ninguna de las anteriores

**Respuesta Correcta:** F

**Explicación:** Todas las afirmaciones sustantivas sobre autoría/mantenimiento de providers son verdaderas.

**Explicación:**

Opción A es incorrecta: Individuos sí pueden crear providers.

Opción B es incorrecta: Comunidades sí pueden mantener providers.

Opción C es incorrecta: HashiCorp sí mantiene un subconjunto de providers.

Opción D es incorrecta: Vendors/proveedores cloud sí colaboran y mantienen providers.

---

## Question No. 160

**Tipo de Pregunta:** Opción Única

**Pregunta:** La versión del binario Terraform y las versiones de provider deben coincidir entre sí en una misma configuración.

**Opciones:**
- A) Verdadero
- B) Falso

**Respuesta Correcta:** B

**Explicación:** Terraform CLI y providers tienen versionado independiente; restricciones de provider se declaran por separado.

**Explicación:**

Opción A es incorrecta: No deben coincidir numéricamente versión a versión.

---

## Question No. 161

**Tipo de Pregunta:** Opción Única

**Pregunta:** ¿Cuál de las siguientes es verdadera sobre la arquitectura basada en plugins de Terraform?

**Opciones:**
- A) Terraform solo puede obtener providers desde internet
- B) Cada provider en una configuración tiene su propio archivo de estado
- C) Puedes crear un provider para tu API si no existe
- D) Todos los providers son parte del binario core de Terraform

**Respuesta Correcta:** C

**Explicación:** Los providers son plugins y puedes crear uno personalizado para APIs no soportadas.

**Explicación:**

Opción A es incorrecta: Providers también pueden venir de mirrors locales/registries privados.

Opción B es incorrecta: El estado es por workspace/state, no por provider.

Opción D es incorrecta: No todos los providers están embebidos en core.

---

## Question No. 162

**Tipo de Pregunta:** Opción Única

**Pregunta:** ¿Cuál de las siguientes NO es una ventaja de adoptar infraestructura como código?

**Opciones:**
- A) Versionado
- B) Interfaz gráfica de usuario
- C) Reusabilidad del código
- D) Automatización

**Respuesta Correcta:** B

**Explicación:** IaC es un enfoque orientado a código y automatización, no a GUI como beneficio central.

**Explicación:**

Opción A es incorrecta: Versionado es ventaja clave.

Opción C es incorrecta: Reusabilidad es ventaja clave.

Opción D es incorrecta: Automatización es ventaja clave.

---

## Question No. 163

**Tipo de Pregunta:** Opción Única

**Pregunta:** ¿Qué tarea NO realiza terraform init?

**Opciones:**
- A) Valida que todas las variables requeridas estén presentes
- B) Obtiene módulos y copia configuración localmente
- C) Se conecta al backend
- D) Obtiene los providers usados en la configuración y los descarga

**Respuesta Correcta:** A

**Explicación:** `terraform init` prepara backend/módulos/providers, pero no valida todas las variables requeridas en runtime.

**Explicación:**

Opción B es incorrecta: Inicialización de módulos sí es parte de init.

Opción C es incorrecta: Inicialización de backend sí es parte de init.

Opción D es incorrecta: Instalación de providers sí es parte de init.

---

## Question No. 164

**Tipo de Pregunta:** Opción Única

**Pregunta:** Cualquier usuario puede publicar módulos en el Terraform Module Registry público.

**Opciones:**
- A) Verdadero
- B) Falso

**Respuesta Correcta:** A

**Explicación:** Cualquier usuario puede publicar módulos públicos si cumple los requisitos de integración/repositorio.

**Explicación:**

Opción B es incorrecta: Publicación no está limitada exclusivamente a HashiCorp.

---

## Question No. 165

**Tipo de Pregunta:** Opción Única

**Pregunta:** ¿Cuál de estos comandos hace tu código más legible para humanos?

**Opciones:**
- A) Terraform validate
- B) Terraform output
- C) Terraform show
- D) Terraform fmt

**Respuesta Correcta:** D

**Explicación:** `terraform fmt` aplica formato canónico al código y mejora legibilidad.

**Explicación:**

Opción A es incorrecta: Validate verifica correctitud, no formato.

Opción B es incorrecta: Output imprime valores.

Opción C es incorrecta: Show renderiza detalles de state/plan.

---

## Question No. 166

**Tipo de Pregunta:** Opción Única

**Pregunta:** La configuración Terraform (incluyendo referencias a módulos) puede contener solo un tipo de provider.

**Opciones:**
- A) Verdadero
- B) Falso

**Respuesta Correcta:** B

**Explicación:** Una configuración puede usar múltiples providers y aliases de provider.

**Explicación:**

Opción A es incorrecta: Terraform soporta configuraciones multi-provider.

---

## Question No. 167

**Tipo de Pregunta:** Opción Única

**Pregunta:** ¿Cuál de los siguientes module source paths NO especifica un módulo remoto?

**Opciones:**
- A) Source = "module/consul"
- B) Source = "github.com/micorp/example"
- C) Source = "git@github.com:hasicorp/example.git"
- D) Source = "hasicorp/consul/aws"

**Respuesta Correcta:** A

**Explicación:** `module/consul` corresponde a referencia estilo local, no un origen remoto explícito.

**Explicación:**

Opción B es incorrecta: Path de GitHub indica fuente VCS remota.

Opción C es incorrecta: URL SSH git indica fuente remota.

Opción D es incorrecta: Formato Registry indica módulo remoto.

---

## Question No. 168

**Tipo de Pregunta:** Opción Única

**Pregunta:** ¿Cómo podrías referenciar un atributo del data source vsphere_datacenter para usarlo con datacenter_id dentro de vsphere_folder?

**Opciones:**
- A) data.vsphere_datacenter.DC.id
- B) vsphere_datacenter.dc.id
- C) data,dc,id
- D) data.vsphere_datacenter,dc

**Respuesta Correcta:** A

**Explicación:** Referencias a data sources siguen formato `data.<tipo>.<nombre>.<atributo>`.

**Explicación:**

Opción B es incorrecta: Omite prefijo `data.`.

Opción C es incorrecta: Formato con comas es sintaxis inválida.

Opción D es incorrecta: Uso de coma invalida la referencia.

---

## Question No. 169

**Tipo de Pregunta:** Opción Única

**Pregunta:** Los providers de Terraform son parte del binario core de Terraform.

**Opciones:**
- A) Verdadero
- B) Falso

**Respuesta Correcta:** B

**Explicación:** Providers son plugins externos descargados por separado del core.

**Explicación:**

Opción A es incorrecta: Core y providers son componentes separados.

---

## Question No. 170

**Tipo de Pregunta:** Opción Única

**Pregunta:** HashiCorp Configuration Language (HCL) soporta funciones definidas por el usuario.

**Opciones:**
- A) Verdadero
- B) Falso

**Respuesta Correcta:** B

**Explicación:** HCL tiene funciones built-in, pero no permite declarar funciones personalizadas por usuario.

**Explicación:**

Opción A es incorrecta: No existe declaración de funciones custom en Terraform/HCL.

---

## Question No. 171

**Tipo de Pregunta:** Opción Única

**Pregunta:** Un desarrollador quiere dejar de gestionar un recurso específico `aws_instance.ubuntu[1]` sin borrarlo. ¿Qué comando debe usar?

**Opciones:**
- A) Terraform plan rm:aws_instance.ubuntu[1]
- B) Terraform state rm:aws_instance.ubuntu[1]
- C) Terraform apply rm:aws_instance.ubuntu[1]
- D) Terraform destory rm:aws_instance.ubuntu[1]

**Respuesta Correcta:** B

**Explicación:** `terraform state rm <address>` elimina el recurso del estado sin destruir el recurso real.

**Explicación:**

Opción A es incorrecta: No existe comando `plan rm`.

Opción C es incorrecta: No existe comando `apply rm`.

Opción D es incorrecta: No existe comando `destroy rm`.

---

## Question No. 172

**Tipo de Pregunta:** Opción Única

**Pregunta:** ¿Cuál de los siguientes NO es un principio clave de infraestructura como código?

**Opciones:**
- A) Infraestructura auto-descriptiva
- B) Idempotencia
- C) Infraestructura versionada
- D) Golden images

**Respuesta Correcta:** D

**Explicación:** Golden images son una estrategia, pero no un principio base de IaC.

**Explicación:**

Opción A es incorrecta: Sí se alinea con principios IaC.

Opción B es incorrecta: Idempotencia es principio central.

Opción C es incorrecta: Versionado es principio central.

---

## Question No. 173

**Tipo de Pregunta:** Opción Única

**Pregunta:** Tu organización requiere que nuevos buckets S3 sean privados y cifrados en reposo. ¿Cómo puede Terraform Cloud aplicar este control automáticamente y de forma proactiva?

**Opciones:**
- A) Auditar buckets con una herramienta de vulnerabilidades
- B) Agregar variables en cada workspace para forzar settings
- C) Usar un módulo S3 con configuraciones correctas
- D) Con una política Sentinel que corre antes de cada apply

**Respuesta Correcta:** D

**Explicación:** Sentinel puede aplicar controles obligatorios de seguridad antes de aplicar cambios.

**Explicación:**

Opción A es incorrecta: Auditoría es detectiva, no preventiva en el flujo de Terraform.

Opción B es incorrecta: Variables por sí solas no garantizan enforcement de política.

Opción C es incorrecta: Módulos estandarizan, pero enforcement automático lo hace la política.

---

## Question No. 174

**Tipo de Pregunta:** Opción Única

**Pregunta:** ¿Cuál es el nombre del archivo por defecto donde Terraform almacena el estado?

**Opciones:**
- A) terraform.tfstate

**Respuesta Correcta:** A

**Explicación:** Con backend local, el archivo por defecto es `terraform.tfstate`.

---

## Question No. 175

**Tipo de Pregunta:** Opción Múltiple

**Pregunta:** ¿Qué dos pasos son requeridos para aprovisionar infraestructura nueva en el workflow Terraform? Elige dos respuestas correctas.

**Opciones:**
- A) Plan
- B) Import
- C) Validate
- D) Init
- E) apply

**Respuesta Correcta:** D, E

**Explicación:** Para aprovisionar recursos necesitas inicializar (`init`) y ejecutar creación (`apply`).

**Explicación:**

Opción A es incorrecta: Plan es recomendado, pero no estrictamente requerido para ejecutar apply.

Opción B es incorrecta: Import es para recursos existentes.

Opción C es incorrecta: Validate es recomendado, no obligatorio para ejecutar.

---

## Question No. 176

**Tipo de Pregunta:** Opción Única

**Pregunta:** Agregas un provider nuevo y ejecutas inmediatamente terraform apply en CD con backend local. ¿Por qué falla apply?

**Opciones:**
- A) Debes iniciar sesión en Terraform Cloud primero
- B) Terraform requiere ejecutar plan manualmente primero
- C) Terraform necesita instalar primero los plugins necesarios
- D) Terraform requiere formatear código primero

**Respuesta Correcta:** C

**Explicación:** Al añadir provider, debes inicializar para instalar plugins antes de apply.

**Explicación:**

Opción A es incorrecta: Backend local no requiere login a Terraform Cloud en este caso.

Opción B es incorrecta: Plan no es requisito estricto de apply.

Opción D es incorrecta: Formato no está relacionado con instalación de plugins.

---

## Question No. 177

**Tipo de Pregunta:** Opción Única

**Pregunta:** ¿Qué tipo de colección en Terraform deberías usar para almacenar pares clave/valor?

**Opciones:**
- A) Set
- B) Map
- C) Tuple
- D) list

**Respuesta Correcta:** B

**Explicación:** `map` es el tipo de colección de Terraform para asociaciones clave/valor.

**Explicación:**

Opción A es incorrecta: Set almacena valores únicos sin clave.

Opción C es incorrecta: Tuple es una secuencia ordenada de valores.

Opción D es incorrecta: List almacena valores ordenados sin clave.

---

## Question No. 178

**Tipo de Pregunta:** Opción Única

**Pregunta:** En Terraform HCL, un tipo object({name=string, age=number}) coincidiría con este valor.

**Opciones:**
- A) Option A
- B) Option B
- C) Option C
- D) Option D

**Respuesta Correcta:** B

**Explicación:** La opción válida es la que tiene `name` como string con comillas y `age` como número.

**Explicación:**

Opción A es incorrecta: `age` no es numérico.

Opción C es incorrecta: Los valores no coinciden con tipos declarados.

Opción D es incorrecta: `name` no está como string entre comillas.

---

## Question No. 179

**Tipo de Pregunta:** Opción Única

**Pregunta:** ¿Qué método de autenticación de provider evita que credenciales se guarden en el archivo de estado?

**Opciones:**
- A) Usar variables de entorno
- B) Especificar credenciales de login en el bloque provider
- C) Definir credenciales como variables de Terraform
- D) Ninguna de las anteriores

**Respuesta Correcta:** A

**Explicación:** Variables de entorno evitan hardcodear secretos en archivos de configuración.

**Explicación:**

Opción B es incorrecta: Hardcodear credenciales en provider block no es recomendado.

Opción C es incorrecta: Pasar secretos como variables puede exponerlos según uso/salida/estado.

Opción D es incorrecta: La opción A sí es un enfoque válido.

---

## Question No. 180

**Tipo de Pregunta:** Opción Única

**Pregunta:** Terraform solo puede gestionar dependencias de recursos si las declaras explícitamente con depends_on.

**Opciones:**
- A) Verdadero
- B) Falso

**Respuesta Correcta:** B

**Explicación:** Terraform infiere dependencias de forma automática mediante referencias entre recursos.

**Explicación:**

Opción A es incorrecta: `depends_on` se usa solo para dependencias explícitas adicionales.

---

## Question No. 181

**Tipo de Pregunta:** Opción Única

**Pregunta:** Debes ejecutar terraform fmt para reescribir todas las configuraciones Terraform dentro del directorio actual y ajustarlas al estilo Terraform.

**Opciones:**
- A) Verdadero
- B) Falso

**Respuesta Correcta:** B

**Explicación:** `terraform fmt` formatea por defecto el directorio actual; para subdirectorios se requiere `-recursive`.

**Explicación:**

Opción A es incorrecta: La afirmación sobre "todas" las configuraciones sin `-recursive` es demasiado amplia.

---

## Question No. 182

**Tipo de Pregunta:** Opción Única

**Pregunta:** ¿Qué valor aporta el private registry de Terraform Cloud frente al public Terraform Module Registry?

**Opciones:**
- A) Poder compartir módulos públicamente con cualquier usuario Terraform
- B) Poder restringir módulos a miembros de organizaciones Terraform Cloud o Enterprise
- C) Poder etiquetar módulos por versión/release
- D) Poder compartir módulos con usuarios públicos y miembros de organizaciones Terraform Cloud

**Respuesta Correcta:** B

**Explicación:** El private registry permite control de acceso por organización sobre módulos.

**Explicación:**

Opción A es incorrecta: Eso describe compartición pública.

Opción C es incorrecta: Versionado existe en ambos contextos.

Opción D es incorrecta: Private registry no está diseñado para compartición pública irrestricta.

---

## Question No. 183

**Tipo de Pregunta:** Opción Única

**Pregunta:** ¿Cuándo debes ejecutar terraform init?

**Opciones:**
- A) Cada vez que ejecutas terraform apply
- B) Antes de empezar a codificar un proyecto nuevo Terraform
- C) Después de correr terraform plan por primera vez y antes de terraform apply
- D) Después de comenzar a codificar y antes de correr terraform plan por primera vez

**Respuesta Correcta:** D

**Explicación:** Debes inicializar cuando ya tienes configuración y antes del primer plan/apply.

**Explicación:**

Opción A es incorrecta: No se requiere init en cada apply.

Opción B es incorrecta: Init necesita un directorio de configuración existente.

Opción C es incorrecta: Plan no debe correrse antes de init.

---

## Question No. 184

**Tipo de Pregunta:** Opción Única

**Pregunta:** Puedes configurar Terraform para loguear a un archivo usando la variable de entorno TF_LOG.

**Opciones:**
- A) Verdadero
- B) Falso

**Respuesta Correcta:** B

**Explicación:** `TF_LOG` define nivel de log; la ruta de archivo se define con `TF_LOG_PATH`.

**Explicación:**

Opción A es incorrecta: TF_LOG por sí sola no define destino de archivo.

---

## Question No. 185

**Tipo de Pregunta:** Opción Múltiple

**Pregunta:** Has creado un entorno efímero con Terraform y quieres destruir toda la infraestructura. Antes deseas ver qué recursos serán eliminados. ¿Qué comando(s) usarías? Elige dos respuestas correctas.

**Opciones:**
- A) Run terraform state rm
- B) Run terraform show -destroy
- C) Run terraform destroy and it will first output all the resource that will be deleted before prompting for approval
- D) Run terraform plan -destroy

**Respuesta Correcta:** C, D

**Explicación:** `terraform destroy` muestra el plan de borrado antes de confirmar y `terraform plan -destroy` previsualiza eliminación total.

**Explicación:**

Opción A es incorrecta: `state rm` quita del estado, no destruye infraestructura.

Opción B es incorrecta: `terraform show -destroy` no es el comando estándar para planear destrucción.

---

## Question No. 186

**Tipo de Pregunta:** Opción Única

**Pregunta:** ¿Qué errores de consistencia de configuración reporta terraform validate?

**Opciones:**
- A) El módulo Terraform no está en su última versión
- B) Diferencias entre estado local y remoto
- C) Declarar el mismo identificador de recurso más de una vez
- D) Mezcla de espacios y tabs en archivos de configuración

**Respuesta Correcta:** C

**Explicación:** `terraform validate` detecta errores estructurales/semánticos de configuración, como identificadores duplicados.

**Explicación:**

Opción A es incorrecta: Validate no exige última versión del módulo.

Opción B es incorrecta: Drift de estado es preocupación de ejecución, no de validate.

Opción D es incorrecta: Estilo de formato se maneja con `terraform fmt`.

---

## Question No. 187

**Tipo de Pregunta:** Opción Única

**Pregunta:** Estás escribiendo un módulo hijo Terraform que crea una instancia AWS y quieres exponer la IP para usarla en root. Nombras el recurso `main`. ¿Cuál es la forma correcta de definir el output?

**Opciones:**
- A) Option A
- B) Option B
- C) Option C
- D) Option D

**Respuesta Correcta:** N/A (opciones no visibles en la imagen)

**Explicación:** El patrón esperado suele ser `value = aws_instance.main.<atributo_ip>` (por ejemplo `public_ip`), pero la imagen no muestra el texto real de las opciones.

---

## Question No. 188

**Tipo de Pregunta:** Opción Única

**Pregunta:** La configuración Terraform solo puede importar módulos desde el registro público.

**Opciones:**
- A) Verdadero
- B) Falso

**Respuesta Correcta:** B

**Explicación:** Terraform puede usar módulos desde rutas locales, VCS, registries privados y públicos.

**Explicación:**

Opción A es incorrecta: El registro público no es la única fuente de módulos.

---

## Question No. 189

**Tipo de Pregunta:** Opción Única

**Pregunta:** ¿Cuál es la mejor forma de especificar el tag v1.0.0 al referenciar un módulo en Git (ej. Git::https://example.com/vpc.git)?

**Opciones:**
- A) Agregar pref=v1.0.0 al source path
- B) Agregar version = "1.0.0" al bloque module
- C) Nada, módulos de GitHub siempre default a 1.0.0

**Respuesta Correcta:** A

**Explicación:** En fuentes VCS, se fija revisión/tag usando `?ref=` en el source URL.

**Explicación:**

Opción B es incorrecta: `version` aplica a módulos de registry, no a URL Git genérica.

Opción C es incorrecta: Fuentes Git no hacen default a 1.0.0.

---

## Question No. 190

**Tipo de Pregunta:** Opción Única

**Pregunta:** ¿Cuándo debes usar force-unlock?

**Opciones:**
- A) Tienes un cambio de alta prioridad
- B) Falló el desbloqueo automático
- C) apply falló por un bloqueo de estado
- D) Ves un mensaje de estado indicando que no puedes adquirir el lock

**Respuesta Correcta:** D

**Explicación:** Usa `force-unlock` únicamente cuando existe lock stale y Terraform no puede adquirirlo.

**Explicación:**

Opción A es incorrecta: Prioridad no justifica saltar seguridad de locking.

Opción B es incorrecta: Puede relacionarse, pero primero confirma que sea lock stale.

Opción C es incorrecta: No todo error de lock debe resolverse con force-unlock.

---

## Question No. 191

**Tipo de Pregunta:** Opción Única

**Pregunta:** ¿Cuál de estas afirmaciones sobre workspaces de Terraform Cloud es falsa?

**Opciones:**
- A) Tienen RBAC
- B) Debes usar CLI para cambiar entre workspaces
- C) Plan/apply pueden dispararse vía integraciones con VCS
- D) Pueden almacenar credenciales cloud de forma segura

**Respuesta Correcta:** B

**Explicación:** La gestión de workspaces puede hacerse en UI/API; no requiere exclusivamente CLI.

**Explicación:**

Opción A es incorrecta: RBAC sí existe.

Opción C es incorrecta: Integración con VCS sí existe.

Opción D es incorrecta: Almacenamiento seguro de credenciales sí existe.

---

## Question No. 192

**Tipo de Pregunta:** Opción Múltiple

**Pregunta:** ¿Cuáles son opciones seguras para guardar secretos de conexión a backend remoto de Terraform? Elige dos.

**Opciones:**
- A) Archivo de variables
- B) Definidos en variables de entorno
- C) Dentro del backend block en la configuración Terraform
- D) Definidos en configuración de conexión fuera de Terraform

**Respuesta Correcta:** B, D

**Explicación:** Buenas prácticas: mantener secretos fuera de archivos Terraform versionados usando variables de entorno o configuración externa segura.

**Explicación:**

Opción A es incorrecta: Archivos de variables pueden ser inseguros si no están fuertemente protegidos.

Opción C es incorrecta: Hardcodear secretos en backend block no es seguro.

---

## Question No. 193

**Tipo de Pregunta:** Opción Múltiple

**Pregunta:** ¿Qué acciones están prohibidas cuando el archivo de estado está bloqueado? Elige tres.

**Opciones:**
- A) Terraform state list
- B) Terraform destroy
- C) Terraform validate
- D) Terraform validate
- E) Terraform fmt
- F) Terraform apply

**Respuesta Correcta:** A, B, F

**Explicación:** Operaciones sensibles al estado que leen/escriben estado/infra se bloquean durante locking.

**Explicación:**

Opción C es incorrecta: Validate no requiere lock de estado remoto.

Opción D es incorrecta: Igual que C.

Opción E es incorrecta: Fmt solo formatea localmente.

---

## Question No. 194

**Tipo de Pregunta:** Opción Única

**Pregunta:** ¿Cuál de los siguientes métodos para aprovisionar recursos en nube pública demuestra el concepto de infraestructura como código?

**Opciones:**
- A) comandos curl manuales en terminal
- B) secuencia de requests REST al endpoint de API cloud
- C) script con una serie de comandos CLI de nube pública
- D) serie de comandos ingresados en consola cloud

**Respuesta Correcta:** C

**Explicación:** Un script versionable/repetible con comandos es una forma de IaC más clara que acciones manuales ad-hoc.

**Explicación:**

Opción A es incorrecta: Comandos manuales puntuales no representan un flujo IaC robusto.

Opción B es incorrecta: Puede automatizarse, pero aquí no es la opción esperada en contexto de examen.

Opción D es incorrecta: Operación manual en consola no es IaC.

---

## Question No. 195

**Tipo de Pregunta:** Opción Única

**Pregunta:** ¿Cuál de los siguientes debes poner en el bloque required_providers?

**Opciones:**
- A) version >= 3.1
- B) version = ">= 3.1"
- C) version ~> 3.1

**Respuesta Correcta:** B

**Explicación:** En `required_providers`, la restricción de versión se define como string: `version = ">= 3.1"`.

**Explicación:**

Opción A es incorrecta: Le falta forma válida de asignación/string.

Opción C es incorrecta: En la forma mostrada falta `=` y comillas.

---

## Question No. 196

**Tipo de Pregunta:** Opción Múltiple

**Pregunta:** Al usar Terraform para desplegar en Azure, ¿qué escenarios son verdaderos sobre state files? (Elige dos.)

**Opciones:**
- A) Si cambias un recurso gestionado por Terraform en Azure Console, Terraform actualizará el estado en el próximo plan/apply
- B) Cambiar recursos en Azure Console registra el cambio inmediatamente en el state actual
- C) Al cambiar un recurso en Azure Console, Terraform registra cambios en un nuevo state file
- D) Cambiar recursos en Azure Console no actualiza inmediatamente el state actual

**Respuesta Correcta:** A, D

**Explicación:** Cambios fuera de Terraform no actualizan estado al instante; Terraform reconcilia en refresh/plan/apply posterior.

**Explicación:**

Opción B es incorrecta: La consola no escribe directamente el estado de Terraform.

Opción C es incorrecta: Terraform no crea un nuevo state file por ese motivo.

---

## Question No. 197

**Tipo de Pregunta:** Opción Única

**Pregunta:** ¿Qué opción NO puede usarse para mantener secretos fuera de archivos de configuración Terraform?

**Opciones:**
- A) Un provider de Terraform
- B) Variables de entorno
- C) Un flag -var
- D) secure string

**Respuesta Correcta:** D

**Explicación:** `secure string` no es un mecanismo nativo de Terraform para inyección/gestión de secretos.

**Explicación:**

Opción A es incorrecta: Providers suelen soportar métodos externos de autenticación.

Opción B es incorrecta: Variables de entorno son práctica común para secretos.

Opción C es incorrecta: `-var` en runtime puede evitar secretos en archivos estáticos.

---

## Question No. 198

**Tipo de Pregunta:** Opción Única

**Pregunta:** Si destruyes infraestructura manualmente, ¿cuál es la mejor práctica para reflejar este cambio en Terraform?

**Opciones:**
- A) Ejecutar terraform refresh
- B) Ocurrirá automáticamente
- C) Actualizar el state file manualmente
- D) Ejecutar terraform import

**Respuesta Correcta:** A

**Explicación:** Refrescar/replanificar permite reconciliar estado con infraestructura real tras cambios fuera de Terraform.

**Explicación:**

Opción B es incorrecta: El estado no se actualiza instantáneamente sin comando Terraform.

Opción C es incorrecta: Editar estado manualmente es riesgoso y desaconsejado.

Opción D es incorrecta: Import se usa para agregar recursos existentes al estado.

---

## Question No. 199

**Tipo de Pregunta:** Opción Única

**Pregunta:** ¿Qué comando usarías para ver todos los atributos y detalles de un recurso gestionado por Terraform?

**Opciones:**
- A) terraform state list 'provider_type.name'
- B) terraform state show 'provider_type.name'
- C) terraform get 'provider_type.name'
- D) terraform state list

**Respuesta Correcta:** B

**Explicación:** `terraform state show <address>` muestra atributos detallados de un recurso en estado.

**Explicación:**

Opción A es incorrecta: List solo enumera direcciones.

Opción C es incorrecta: Get se usa para módulos, no inspección de estado.

Opción D es incorrecta: List sin dirección sigue mostrando solo direcciones.

---

## Question No. 200

**Tipo de Pregunta:** Opción Única

**Pregunta:** Quieres crear un clon de despliegue para pruebas rápidas sin configurar un backend nuevo. ¿Qué feature de Terraform open source permite múltiples estados asociados al mismo código?

**Opciones:**
- A) Terraform data sources
- B) Terraform local values
- C) Terraform modules
- D) Terraform workspaces
- E) None of the above

**Respuesta Correcta:** D

**Explicación:** Workspaces permiten múltiples estados independientes para la misma configuración.

**Explicación:**

Opción A es incorrecta: Data sources leen información existente.

Opción B es incorrecta: Locals son expresiones internas, no estados separados.

Opción C es incorrecta: Módulos organizan código, no aíslan estado por sí solos.

Opción E es incorrecta: Workspaces sí cubre este caso.

---

## Question No. 202

**Tipo de Pregunta:** Opción Única

**Pregunta:** Una configuración de backend remoto siempre mapea a un único workspace remoto.

**Opciones:**
- A) Verdadero
- B) Falso

**Respuesta Correcta:** B

**Explicación:** Un backend remoto puede soportar múltiples workspaces para diferentes entornos o configuraciones.

---

## Question No. 203

**Tipo de Pregunta:** Opción Única

**Pregunta:** Tienes múltiples miembros del equipo colaborando en infraestructura como código (IaC) usando Terraform, y quieres aplicar estándares de formato para legibilidad. ¿Cómo puedes dar formato al código Terraform HCL (HashiCorp Configuration Language) siguiendo la convención estándar de estilo Terraform?

**Opciones:**
- A) Ejecutar el comando terraform fmt durante la fase de linting de código en tu proceso CI/CD
- B) Designar una persona en cada equipo para revisar y formatear el código de todos
- C) Aplicar manualmente indentación de dos espacios y alinear el carácter '=' en cada archivo Terraform (*.tf)
- D) Escribir un script shell para transformar archivos Terraform usando herramientas como AWK, Python y sed

**Respuesta Correcta:** A

**Explicación:** `terraform fmt` es la herramienta estándar para aplicar convenciones de formateo Terraform automáticamente y de forma consistente.

---

## Question No. 204

**Tipo de Pregunta:** Opción Única

**Pregunta:** Un bloque de configuración de provider es requerido en cada configuración Terraform.

**Opciones:**
- A) Verdadero
- B) Falso

**Respuesta Correcta:** B

**Explicación:** Los bloques de provider son opcionales si no se declaran recursos que requieran configuración de provider.

---

## Question No. 205

**Tipo de Pregunta:** Opción Única

**Pregunta:** ¿Cómo se ejecuta terraform import?

**Opciones:**
- A) Como parte de terraform init
- B) Como parte de terraform plan
- C) Como parte de terraform refresh
- D) Por una llamada explícita
- E) Todas las anteriores

**Respuesta Correcta:** D

**Explicación:** `terraform import` debe ejecutarse explícitamente como un comando separado para importar recursos existentes al estado.

---

## Question No. 206

**Tipo de Pregunta:** Opción Única

**Pregunta:** Un terraform apply no puede ________ infraestructura.

**Opciones:**
- A) cambiar
- B) destruir
- C) provisionar
- D) importar

**Respuesta Correcta:** D

**Explicación:** `terraform apply` ejecuta cambios pero no importa recursos existentes; la importación requiere el comando explícito `terraform import`.

---

## Question No. 207

**Tipo de Pregunta:** Opción Única

**Pregunta:** Si un módulo declara una variable con valor por defecto, esa variable debe también ser definida dentro del módulo.

**Opciones:**
- A) Verdadero
- B) Falso

**Respuesta Correcta:** B

**Explicación:** Una variable de módulo con un valor por defecto es opcional; no requiere redeclaración en llamadas al módulo.

---

## Question No. 208

**Tipo de Pregunta:** Opción Única

**Pregunta:** ¿Cómo mostrarías valores retornados de un módulo hijo en la salida CLI de Terraform?

**Opciones:**
- A) Declarar el output en la configuración raíz
- B) Declarar el output en el módulo hijo
- C) Declarar el output en la configuración raíz y el módulo hijo
- D) Ninguna de las anteriores

**Respuesta Correcta:** C

**Explicación:** Los outputs de módulo deben declararse en el módulo hijo, y los outputs de nivel raíz pueden referenciarlos para visualización CLI.

---

## Question No. 209

**Tipo de Pregunta:** Opción Única

**Pregunta:** Has usado Terraform para desplegar una máquina virtual y una base de datos. Quieres reemplazar esta instancia de máquina virtual con una idéntica sin afectar la base de datos. ¿Cuál es la mejor forma de lograr esto usando Terraform?

**Opciones:**
- A) Usar el comando terraform state rm para quitar la VM del archivo de estado
- B) Usar el comando terraform taint dirigido a las VMs, luego ejecutar terraform plan y terraform apply
- C) Usar el comando terraform apply dirigido solo a los recursos VM
- D) Borrar los recursos VM de Terraform del código, luego ejecutar terraform plan y terraform apply

**Respuesta Correcta:** B

**Explicación:** `terraform taint` marca un recurso para destrucción y recreación, permitiendo reemplazo limpio sin afectar otros recursos.

---

## Question No. 210

**Tipo de Pregunta:** Opción Única

**Pregunta:** Debes inicializar un backend de Terraform antes de que pueda ser configurado.

**Opciones:**
- A) Verdadero
- B) Falso

**Respuesta Correcta:** A

**Explicación:** `terraform init` debe ejecutarse para configurar e inicializar el backend antes de su uso.

---

## Question No. 211

**Tipo de Pregunta:** Opción Única

**Pregunta:** ¿Cuál es un beneficio clave del archivo de estado de Terraform?

**Opciones:**
- A) Un archivo de estado puede programar tareas recurrentes de infraestructura
- B) Un archivo de estado es la fuente de verdad para recursos provisionados con Terraform
- C) Un archivo de estado es la fuente de verdad para recursos provisionados con una consola cloud pública
- D) Un archivo de estado es el estado deseado expresado por los archivos de código Terraform

**Respuesta Correcta:** B

**Explicación:** El archivo de estado mapea código Terraform a recursos provisionados reales, sirviendo como el registro autoritativo.

---

## Question No. 212

**Tipo de Pregunta:** Opción Única

**Pregunta:** Agregas un recurso nuevo a una configuración Terraform existente, pero no actualizas la restricción de versión en la configuración. Los recursos existentes y nuevos usan el mismo provider. El directorio de trabajo contiene un archivo .terraform.lock.hcl. ¿Cómo elegirá Terraform qué versión del provider usar?

**Opciones:**
- A) Terraform usará la versión registrada en tu archivo de lock
- B) Terraform usará la última versión del provider para el recurso nuevo y la versión registrada en el lock file para gestionar recursos existentes
- C) Terraform verificará tu archivo de estado para determinar la versión del provider
- D) Terraform usará la última versión disponible del provider en el momento que provisiones tu recurso nuevo

**Respuesta Correcta:** A

**Explicación:** El archivo de lock asegura versiones consistentes de provider en todos los recursos; Terraform usa la versión bloqueada para recursos existentes y nuevos.

---

## Question No. 213

**Tipo de Pregunta:** Opción Única

**Pregunta:** Cuando usas un backend remoto o integración con Terraform Cloud, ¿dónde guarda Terraform el estado de los recursos?

**Opciones:**
- A) En una variable de entorno
- B) En el disco
- C) En el backend remoto o Terraform Cloud
- D) En memoria

**Respuesta Correcta:** C

**Explicación:** Los backends remotos y Terraform Cloud gestionan el estado en su propio almacenamiento, no localmente.

---

## Question No. 214

**Tipo de Pregunta:** Opción Única

**Pregunta:** Si un equipo DevOps adopta AWS CloudFormation como su método estandarizado para provisionar recursos de nube pública, ¿cuál de los siguientes escenarios plantea un desafío para este equipo?

**Opciones:**
- A) Se pide al equipo que gestione una nueva pila de aplicación construida sobre servicios nativos de AWS
- B) La organización decide expandirse a Azure y quiere desplegar nueva infraestructura
- C) Se pide al equipo que construya una base de código reutilizable que pueda desplegar recursos en cualquier región de AWS
- D) Se encarga al equipo DevOps automatizar aprovisionamiento manual basado en consola web

**Respuesta Correcta:** B

**Explicación:** CloudFormation es específico de AWS; escenarios multi-cloud (ej. expandir a Azure) requieren herramientas IaC diferentes u enfoques alternativos.

---

## Question No. 215

**Tipo de Pregunta:** Opción Única

**Pregunta:** ¿Cuál comando te permite experimentar con expresiones terraform?

**Opciones:**
- A) Terraform console
- B) Terraform validate
- C) Terraform env
- D) Terraform test

**Respuesta Correcta:** A

**Explicación:** `terraform console` proporciona un REPL interactivo para evaluar y probar expresiones Terraform.

---

## Question No. 216

**Tipo de Pregunta:** Opción Única

**Pregunta:** Selecciona el comando que no causa que Terraform actualice su estado.

**Opciones:**
- A) Terraform destroy
- B) Terraform apply
- C) Terraform plan
- D) Terraform state list

**Respuesta Correcta:** D

**Explicación:** `terraform state list` es una operación de solo lectura que no consulta estado remoto; no dispara actualización.

---

## Question No. 217

**Tipo de Pregunta:** Opción Única

**Pregunta:** ¿De dónde NO puede Terraform cargar un provider?

**Opciones:**
- A) Directorio de plugins
- B) Caché de plugin de provider
- C) Distribución oficial de HashiCorp en releases.hashicorp.com
- D) Código fuente

**Respuesta Correcta:** D

**Explicación:** Terraform carga binarios de provider compilados, no código fuente; el código fuente debe compilarse primero.

---

## Question No. 218

**Tipo de Pregunta:** Opción Única

**Pregunta:** ¿Dónde almacena el backend local de Terraform su estado?

**Opciones:**
- A) En el archivo terraform
- B) En el directorio /tmp
- C) En el archivo terraform.tfstate
- D) En el archivo terraform.state del usuario

**Respuesta Correcta:** C

**Explicación:** El backend local almacena estado en el archivo `terraform.tfstate` en el directorio de trabajo.

---

## Question No. 219

**Tipo de Pregunta:** Opción Única

**Pregunta:** Estás usando un módulo de networking en tu configuración Terraform con etiqueta de nombre my-network. En tu configuración principal tienes el siguiente código: Cuando ejecutas terraform validate, obtienes un error. ¿Qué debes hacer para recuperar exitosamente este valor de tu módulo de networking?

**Opciones:**
- A) Cambiar el valor de referencia a my-network.outputs.vnet_id
- B) Definir el atributo vnet_id como una variable en el módulo de networking
- C) Definir el atributo vnet_id como un output en el módulo de networking
- D) Cambiar el valor de referencia a module.my.network.outputs.vnet_id

**Respuesta Correcta:** C

**Explicación:** Los outputs de módulo deben declararse en el módulo hijo antes de poder ser referenciados en la configuración raíz.

---

## Question No. 220

**Tipo de Pregunta:** Opción Única

**Pregunta:** ¿Qué tipo de bloque se usa para construir una colección de bloques de configuración anidados?

**Opciones:**
- A) Dynamic
- B) For_each
- C) Nesting
- D) repeated

**Respuesta Correcta:** A

**Explicación:** Los bloques `dynamic` generan bloques anidados dinámicamente basándose en valores de entrada o colecciones.

---

## Question No. 221

**Tipo de Pregunta:** Opción Única

**Pregunta:** Debes inicializar tu directorio de trabajo antes de ejecutar terraform validate.

**Opciones:**
- A) Verdadero
- B) Falso

**Respuesta Correcta:** B

**Explicación:** `terraform validate` puede ejecutarse sin inicialización; solo verifica sintaxis y estructura de configuración.

---

## Question No. 222

**Tipo de Pregunta:** Opción Única

**Pregunta:** Un módulo siempre puede referirse a todas las variables declaradas en su módulo padre.

**Opciones:**
- A) Verdadero
- B) Falso

**Respuesta Correcta:** B

**Explicación:** Los módulos tienen encapsulación; los módulos hijo no pueden acceder automáticamente a las variables del módulo padre a menos que se pasen explícitamente como argumentos de módulo.

---

## Question No. 223

**Tipo de Pregunta:** Opción Única

**Pregunta:** ¿Cuál de los siguientes NO es un tipo de colección válido de Terraform?

**Opciones:**
- A) Tree
- B) Map
- C) List
- D) set

**Respuesta Correcta:** A

**Explicación:** Los tipos de colección de Terraform son list, map, set y tuple. Tree no es un tipo de colección válido.

---

## Question No. 224

**Tipo de Pregunta:** Opción Única

**Pregunta:** Quieres saber desde qué rutas Terraform está cargando providers referenciados en tu configuración de Terraform. Necesitas habilitar mensajes de registro adicionales para descubrir esto. ¿Cuál de los siguientes lograría esto?

**Opciones:**
- A) Establecer verbose para cada provider en tu configuración de Terraform
- B) Establecer la variable de entorno TF_LOG_TRACE
- C) Establecer la variable de entorno TF_LOG_PATH
- D) Establecer la variable de entorno TF_log_TRACE

**Respuesta Correcta:** C

**Explicación:** La variable de entorno `TF_LOG_PATH` habilita el registro que muestra rutas de carga de providers e información de diagnóstico.

---

## Question No. 225

**Tipo de Pregunta:** Opción Única

**Pregunta:** ¿Qué comando de Terraform siempre causa que el archivo de estado se actualice con cambios que podrían haber sido realizados fuera de Terraform?

**Opciones:**
- A) Terraform plan --refresh-only
- B) Terraform show --json
- C) Terraform apply --lock-false
- D) Terraform plan target-state

**Respuesta Correcta:** A

**Explicación:** `terraform plan --refresh-only` consulta explícitamente recursos remotos y actualiza el estado sin modificar infraestructura.

---

## Question No. 226

**Tipo de Pregunta:** Opción Única

**Pregunta:** ¿Cómo determina Terraform las dependencias entre recursos?

**Opciones:**
- A) Terraform requiere que las dependencias de recursos se definan como módulos y se obtengan en orden
- B) Terraform construye automáticamente un gráfico de recursos basado en provisioners de recursos, meta-parámetros especiales y el archivo de estado (si está presente)
- C) Terraform requiere que los recursos en una configuración se listen en el orden en que serán creados para determinar dependencias
- D) Terraform requiere que todas las dependencias entre recursos se especifiquen usando el parámetro depends_on

**Respuesta Correcta:** B

**Explicación:** Terraform analiza referencias de recursos y meta-argumentos para determinar automáticamente el gráfico de dependencias sin ordenamiento explícito.

---

## Question No. 227

**Tipo de Pregunta:** Opción Única

**Pregunta:** El __________ determina cómo Terraform crea, actualiza o elimina recursos.

**Opciones:**
- A) Configuración de Terraform
- B) Provisioner de Terraform
- C) Provider de Terraform
- D) Núcleo de Terraform

**Respuesta Correcta:** C

**Explicación:** Los providers implementan operaciones del ciclo de vida de recursos y determinan las llamadas API específicas usadas para operaciones CRUD.

---

## Question No. 228

**Tipo de Pregunta:** Opción Única

**Pregunta:** ¿Cuál de los siguientes comandos se utilizaría para acceder a todos los atributos y detalles de un recurso gestionado por Terraform?

**Opciones:**
- A) Terraform state show 'provider_type_name'
- B) Terraform state list
- C) Terraform get provider_type_name
- D) Terraform state list provider_type_name

**Respuesta Correcta:** A

**Explicación:** `terraform state show` muestra todos los atributos y metadatos para un recurso específico del archivo de estado.

---

## Question No. 229

**Tipo de Pregunta:** Opción Múltiple

**Pregunta:** ¿Cuáles son ejemplos de infraestructura como código? Elige dos respuestas correctas.

**Opciones:**
- A) Imágenes de máquina virtual clonadas
- B) Archivos de configuración versionados
- C) Registros de base de datos de gestión de cambios
- D) Dockerfile

**Respuesta Correcta:** B, D

**Explicación:** Los ejemplos de IaC incluyen archivos de configuración versionados y definiciones de contenedores como Dockerfiles; imágenes VM y registros de bases de datos no son IaC basado en código.

---

## Question No. 230

**Tipo de Pregunta:** Opción Única

**Pregunta:** ¿Cuál método para compartir configuraciones de Terraform cumple los siguientes criterios: 1) Mantiene las configuraciones confidenciales dentro de tu organización 2) Soporta restricciones de versión semántica de Terraform 3) Proporciona un directorio navegable

**Opciones:**
- A) Subcarpeta dentro de un workspace
- B) Repositorio git genérico
- C) Registro privado de Terraform Cloud
- D) Registro de módulo público de Terraform

**Respuesta Correcta:** C

**Explicación:** El registro privado de Terraform Cloud cumple los tres criterios: confidencialidad, soporte de versiones semánticas e interfaz navegable.

---

## Question No. 231

**Tipo de Pregunta:** Opción Única

**Pregunta:** ¿Cómo especificas la versión de un módulo al publicarlo en el Registro Público de Módulos Terraform?

**Opciones:**
- A) Configurarlo en el código Terraform del módulo
- B) Mencionarlo en la página de configuración del módulo en el Registro de Módulos Terraform
- C) El Registro de Módulos Terraform no soporta versiones de módulos
- D) Etiquetar un release en el repositorio asociado

**Respuesta Correcta:** D

**Explicación:** Las versiones del módulo se gestionan mediante etiquetas git en el repositorio asociado; el registro detecta e indexa automáticamente los releases.

---

## Question No. 232

**Tipo de Pregunta:** Opción Única

**Pregunta:** El Registro Público de Módulos Terraform es gratuito de usar.

**Opciones:**
- A) Verdadero
- B) Falso

**Respuesta Correcta:** A

**Explicación:** El Registro Público de Módulos Terraform es gratuito para que cualquiera lo use y publique módulos.

---

## Question No. 233

**Tipo de Pregunta:** Opción Única

**Pregunta:** Ejecutar terraform fmt sin flags en un directorio con archivos de configuración Terraform verifica el formato de esos archivos sin cambiar su contenido.

**Opciones:**
- A) Verdadero
- B) Falso

**Respuesta Correcta:** A

**Explicación:** `terraform fmt` sin flags aplica cambios de formato. Usa `terraform fmt -check` para verificar el formato sin modificar archivos.

---

## Question No. 234

**Tipo de Pregunta:** Opción Única

**Pregunta:** ¿Qué hace este código? terraform { required_providers { aws = '>=3.0' }}

**Opciones:**
- A) Requiere cualquier versión del provider de AWS > = 3.0 y <4.0
- B) Requiere cualquier versión del provider de AWS >=3.0
- C) Requiere cualquier versión del provider de AWS > = 3.0 release mayor. como 4.1
- D) Requiere cualquier versión del provider de AWS > 3.0

**Respuesta Correcta:** B

**Explicación:** `>= 3.0` significa versión 3.0 o superior sin restricción de límite superior.

---

## Question No. 235

**Tipo de Pregunta:** Opción Única

**Pregunta:** ¿Qué logra el bloqueo de estado?

**Opciones:**
- A) Prevenir eliminación accidental Prevenir eliminación accidental del archivo de estado
- B) Bloquea comandos de Terraform de modificar, el archivo de estado
- C) Copia el archivo de estado de memoria a disco
- D) Cifra cualquier credencial almacenada en el archivo de estado

**Respuesta Correcta:** B

**Explicación:** El bloqueo de estado previene modificaciones concurrentes al bloquear operaciones de Terraform mientras otra operación mantiene el bloqueo.

---

## Question No. 236

**Tipo de Pregunta:** Opción Múltiple

**Pregunta:** ¿Cuáles parámetros requiere terraform import? Elige dos respuestas correctas.

**Opciones:**
- A) Provider
- B) Resource ID
- C) Resource address
- D) Path

**Respuesta Correcta:** A, C

**Explicación:** `terraform import` requiere el tipo de provider/recurso (A) y la dirección/identificador del recurso (C) para identificar e importar recursos existentes.

---

## Question No. 237

**Tipo de Pregunta:** Opción Única

**Pregunta:** Modificaste tu configuración de Terraform y ejecutaste Terraform plan para revisar los cambios. Simultáneamente, tu compañero de equipo modificó manualmente el componente de infraestructura en el que estabas trabajando. Dado que ya ejecutaste terraform plan localmente, el plan de ejecución para terraform apply será el mismo.

**Opciones:**
- A) Verdadero
- B) Falso

**Respuesta Correcta:** B

**Explicación:** `terraform apply` realiza una actualización fresca antes de la ejecución, detectando cambios externos realizados después de que se generó el plan.

---

## Question No. 238

**Tipo de Pregunta:** Opción Única

**Pregunta:** Tienes una configuración de Terraform que define una única máquina virtual sin referencias a ella. Has ejecutado terraform apply para crear el recurso, y luego eliminaste la definición de recurso de tu archivo de configuración de Terraform. ¿Qué sucederá cuando ejecutes terraform apply en el directorio de trabajo nuevamente?

**Opciones:**
- A) Terraform eliminará la máquina virtual del archivo de estado, pero el recurso seguirá existiendo
- B) Nada
- C) Terraform te pedirá que confirmes que deseas destruir toda la infraestructura
- D) Terraform destruirá la máquina virtual

**Respuesta Correcta:** A

**Explicación:** Eliminar un recurso de la configuración deja el recurso físico huérfano; Terraform lo elimina del estado pero deja la infraestructura intacta.

---

## Question No. 239

**Tipo de Pregunta:** Opción Múltiple

**Pregunta:** ¿Cómo puede un sistema basado en tickets ralentizar el aprovisionamiento de infraestructura y limitar la capacidad de escala? Elige dos respuestas correctas.

**Opciones:**
- A) Los usuarios finales tienen que solicitar cambios de infraestructura
- B) Los sistemas basados en tickets generan un rastro de auditoría completo del proceso de solicitud y cumplimiento
- C) Los usuarios pueden acceder al catálogo de recursos aprobados desde una lista desplegable en un formulario de solicitud
- D) Cuantos más recursos necesita tu organización, más tickets tiene que procesar tu equipo de infraestructura

**Respuesta Correcta:** A, D

**Explicación:** Tanto A como D representan cuellos de botella: procesos de aprobación manual y procesamiento lineal de tickets limitan la velocidad y escalabilidad del aprovisionamiento de infraestructura.

---

## Question No. 240

**Tipo de Pregunta:** Opción Única

**Pregunta:** Has creado una configuración main.tf de Terraform que consiste en un servidor de aplicación, una base de datos y un balanceador de carga. Ejecutaste terraform apply y Terraform creó todos los recursos exitosamente. Ahora te das cuenta de que no necesitas el balanceador de carga, así que ejecutas terraform destroy sin flags. ¿Qué sucederá?

**Opciones:**
- A) Terraform te preguntará cuál recurso deseas destruir
- B) Terraform destruirá el servidor de aplicación porque se lista primero en el código
- C) Terraform te pedirá que confirmes que deseas destruir toda la infraestructura
- D) Terraform destruirá el archivo main, tf
- E) Terraform destruirá inmediatamente toda la infraestructura

**Respuesta Correcta:** C

**Explicación:** `terraform destroy` sin flags muestra un plan y solicita confirmación antes de destruir cualquier recurso.

---

## Question No. 241

**Tipo de Pregunta:** Opción Única

**Pregunta:** Los nombres de variables de Terraform se guardan en el archivo de estado.

**Opciones:**
- A) Verdadero
- B) Falso

**Respuesta Correcta:** A

**Explicación:** Los nombres de variables y sus valores resueltos se almacenan en el archivo de estado para referencia y reutilización.

---

## Question No. 242

**Tipo de Pregunta:** Opción Única

**Pregunta:** Al usar múltiples configuraciones del mismo provider de Terraform, ¿qué meta-argumento debes incluir en cualquier configuración de provider no predeterminada?

**Opciones:**
- A) Alias
- B) Id
- C) Depends_on
- D) name

**Respuesta Correcta:** A

**Explicación:** El meta-argumento `alias` es requerido para definir y referenciar múltiples configuraciones de provider para el mismo provider.

---

## Question No. 243

**Tipo de Pregunta:** Opción Única

**Pregunta:** Un provider de Terraform NO es responsable de:

**Opciones:**
- A) Exponer recursos y fuentes de datos basados en una API
- B) Gestionar acciones a tomar basadas en diferencias de recursos
- C) Entender interacciones de API con algún servicio
- D) Aprovisionando infraestructura en múltiples regiones

**Respuesta Correcta:** B

**Explicación:** El núcleo de Terraform es responsable de gestionar acciones basadas en diferencias de recursos. Los providers exponen recursos e interactúan con APIs, pero no determinan la lógica del plan.

---

## Question No. 244

**Tipo de Pregunta:** Opción Única

**Pregunta:** En un workspace de Terraform Cloud vinculado a un repositorio de control de versiones, la ejecución de un plan especulativo inicia automáticamente cambios de commit al control de versiones.

**Opciones:**
- A) Verdadero
- B) Falso

**Respuesta Correcta:** B

**Explicación:** Las ejecuciones de plan especulativo en Terraform Cloud no confirman automáticamente cambios al control de versiones; solo previsualizan cambios.

---

## Question No. 245

**Tipo de Pregunta:** Opción Única

**Pregunta:** ¿Qué comando agrega recursos existentes al estado de Terraform?

**Opciones:**
- A) Terraform init
- B) Terraform plan
- C) Terraform refresh
- D) Terraform import
- E) Todos estos

**Respuesta Correcta:** D

**Explicación:** `terraform import` es el comando específico utilizado para agregar recursos de infraestructura existentes al estado de Terraform.

---

## Question No. 246

**Tipo de Pregunta:** Opción Única

**Pregunta:** ¿Cómo difiere la integración de Terraform Cloud de otros backends de estado como S3, Consul, etc?

**Opciones:**
- A) Puede ejecutar ejecuciones de Terraform en infraestructura dedicada en Terraform Cloud
- B) No muestra la salida de un apply de terraform localmente
- C) Solo es arable para clientes pagos
- D) Todas las anteriores

**Respuesta Correcta:** A

**Explicación:** El diferenciador principal de Terraform Cloud es que ejecuta operaciones de Terraform en infraestructura gestionada por Terraform Cloud en lugar de localmente.

---

## Question No. 247

**Tipo de Pregunta:** Opción Única

**Pregunta:** Establecer la variable de entorno TF_LOG a DEBUG hace que los mensajes de depuración se registren en stdout.

**Opciones:**
- A) Verdadero
- B) Falso

**Respuesta Correcta:** A

**Explicación:** Establecer `TF_LOG=DEBUG` habilita el registro de nivel de depuración en stdout, proporcionando información de diagnóstico detallada sobre operaciones de Terraform.

---

## Question No. 248

**Tipo de Pregunta:** Opción Múltiple

**Pregunta:** ¿Cuáles de estos son características de Terraform Cloud? Elige dos respuestas correctas.

**Opciones:**
- A) Visualización automatizada de despliegue de infraestructura
- B) Copias de seguridad automáticas
- C) Una interfaz de usuario basada en web (UI)
- D) Almacenamiento de estado remoto

**Respuesta Correcta:** C, D

**Explicación:** Terraform Cloud proporciona una UI basada en web para gestionar workspaces y configuraciones, más almacenamiento de estado remoto. No proporciona copias de seguridad automáticas o visualización de despliegue.

---

## Question No. 249

**Tipo de Pregunta:** Opción Única

**Pregunta:** No puedes instalar plugins de terceros usando terraform init.

**Opciones:**
- A) Verdadero
- B) Falso

**Respuesta Correcta:** B

**Explicación:** `terraform init` descarga e instala automáticamente los providers requeridos y plugins basados en la configuración.

---

## Question No. 250

**Tipo de Pregunta:** Opción Única

**Pregunta:** Solo el usuario que generó un plan puede aplicarlo.

**Opciones:**
- A) Verdadero
- B) Falso

**Respuesta Correcta:** B

**Explicación:** Cualquier usuario con permisos apropiados puede aplicar un plan de ejecución; no hay restricción basada en quién creó el plan.

---

## Question No. 251

**Tipo de Pregunta:** Opción Única

**Pregunta:** Puedes referenciar un recurso creado con for_each usando una expresión Splat ( * ).

**Opciones:**
- A) Verdadero
- B) Falso

**Respuesta Correcta:** B

**Explicación:** Las expresiones splat (`[*]`) funcionan de manera diferente con `for_each` que con `count`. Para `for_each`, referencias recursos directamente sin sintaxis splat.

---

## Question No. 252

**Tipo de Pregunta:** Opción Única

**Pregunta:** Cuando usas un backend remoto que necesita autenticación, HashiCorp recomienda que:

**Opciones:**
- A) Escribas las credenciales de autenticación en los archivos de configuración de Terraform
- B) Mantengas los archivos de configuración de Terraform en un almacén secreto
- C) Envíes tu configuración de Terraform a un repositorio git encriptado
- D) Uses configuración parcial para cargar las credenciales de autenticación fuera del código de Terraform

**Respuesta Correcta:** D

**Explicación:** HashiCorp recomienda usar configuración parcial para mantener credenciales de autenticación sensibles fuera de los archivos de código de Terraform para mejores prácticas de seguridad.

---

## Question No. 253

**Tipo de Pregunta:** Opción Única

**Pregunta:** ¿Cuál de las siguientes afirmaciones sobre módulos de Terraform NO es verdadera?

**Opciones:**
- A) Los módulos pueden llamar a otros módulos
- B) Un módulo es un contenedor para uno o más recursos
- C) Los módulos deben ser accesibles públicamente
- D) Puedes llamar al mismo módulo múltiples veces

**Respuesta Correcta:** C

**Explicación:** Los módulos no necesitan ser accesibles públicamente; pueden ser privados, locales, o en registros privados.

---

## Question No. 254

**Tipo de Pregunta:** Opción Única

**Pregunta:** Quieres definir una única variable de entrada para capturar valores de configuración para un servidor. Los valores deben representar memoria como número, y el nombre del servidor como string. ¿Qué tipo de variable podrías usar para esta entrada?

**Opciones:**
- A) List
- B) Object
- C) Map
- D) Terraform no soporta variables de entrada complejas de diferentes tipos

**Respuesta Correcta:** B

**Explicación:** El tipo `object` te permite definir variables de entrada con tipos de atributos mixtos, soportando números y strings en una única variable.

---

## Question No. 255

**Tipo de Pregunta:** Opción Única

**Pregunta:** ________ backends soportan bloqueo de estado.

**Opciones:**
- A) Todos
- B) Ninguno
- C) Algunos
- D) Solo local

**Respuesta Correcta:** C

**Explicación:** Algunos backends como Terraform Cloud, S3 y Consul soportan bloqueo de estado, mientras que otros como backends de archivo local no lo hacen.

---

## Question No. 256

**Tipo de Pregunta:** Opción Única

**Pregunta:** Es mejor práctica almacenar datos secretos en el mismo repositorio de control de versiones que tu configuración de Terraform.

**Opciones:**
- A) Verdadero
- B) Falso

**Respuesta Correcta:** B

**Explicación:** Los datos sensibles nunca deben almacenarse en repositorios de control de versiones; usa variables de entorno, gestores de secretos u otros métodos seguros.

---

## Question No. 257

**Tipo de Pregunta:** Opción Múltiple

**Pregunta:** Has declarado una variable llamada var.list que es una lista de objetos que todos tienen un atributo id. ¿Cuáles opciones producirán una lista de los IDs? Elige dos respuestas correctas.

**Opciones:**
- A) [ var.list [ * ] , id ]
- B) [ for o in var.list : o.Id ]
- C) var.list[*].id
- D) { for o in var.list : o => o.id }

**Respuesta Correcta:** A, C

**Explicación:** Tanto la sintaxis splat `var.list[*].id` como la notación de paréntesis `[ var.list [ * ] , id ]` extraen correctamente el atributo id de cada objeto en la lista.

---

## Question No. 258

**Tipo de Pregunta:** Opción Única

**Pregunta:** ¿Cómo gestiona Terraform la mayoría de dependencias entre recursos?

**Opciones:**
- A) Terraform gestionará automáticamente la mayoría de dependencias de recursos
- B) Usando el parámetro depends_on
- C) Al definir dependencias como módulos e incluirlos en un orden particular
- D) El orden en que los recursos aparecen en la configuración de Terraform indica dependencias

**Respuesta Correcta:** A

**Explicación:** Terraform construye automáticamente un gráfico de dependencias analizando referencias de recursos, eliminando la necesidad de especificación manual de dependencias en la mayoría de casos.

---

## Question No. 259

**Tipo de Pregunta:** Opción Única

**Pregunta:** ¿Qué backend usa la CLI de Terraform por defecto?

**Opciones:**
- A) Depende del proveedor de nube configurado
- B) HTTP
- C) Remote
- D) Terraform Cloud
- E) Local

**Respuesta Correcta:** E

**Explicación:** El backend local es el mecanismo de almacenamiento de estado predeterminado de Terraform, almacenando estado en un archivo local `terraform.tfstate`.

---

## Question No. 260

**Tipo de Pregunta:** Opción Única

**Pregunta:** ¿Cuál es una desventaja del uso de bloques dinámicos en Terraform?

**Opciones:**
- A) Los bloques dinámicos pueden construir bloques anidados repetibles
- B) Terraform se ejecutará más lentamente
- C) No pueden usarse para iterar a través de una lista de valores
- D) Hacen que la configuración sea más difícil de leer y entender

**Respuesta Correcta:** D

**Explicación:** Los bloques dinámicos, aunque poderosos, pueden hacer configuraciones de Terraform más complejas y difíciles de entender comparadas con definiciones de bloques estáticos.

---

## Question No. 261

**Tipo de Pregunta:** Opción Única

**Pregunta:** Puedes desarrollar un provider personalizado para gestionar sus recursos usando Terraform.

**Opciones:**
- A) Verdadero
- B) Falso

**Respuesta Correcta:** A

**Explicación:** El SDK de Terraform permite a los desarrolladores crear providers personalizados para gestionar recursos de cualquier sistema o servicio.

## Question No. 201

**Tipo de Pregunta:** Opción Múltiple

**Pregunta:** ¿Qué cambia terraform apply después de aprobar el plan de ejecución? (Elige dos.)

**Opciones:**
- A) Infraestructura cloud
- B) El directorio .terraform
- C) El plan de ejecución
- D) Archivo de estado
- E) Código Terraform

**Respuesta Correcta:** A, D

**Explicación:** `terraform apply` modifica infraestructura real y actualiza estado para reflejar el resultado.

**Explicación:**

Opción B es incorrecta: `.terraform` no es el objetivo principal de cambio tras aprobar plan.

Opción C es incorrecta: El plan es artefacto de entrada, no el estado final a cambiar.

Opción E es incorrecta: Apply no modifica el código fuente Terraform.

---

## Question No. 262

**Tipo de Pregunta:** Opción Única

**Pregunta:** ¿Cuál es el flujo de trabajo para desplegar nueva infraestructura con Terraform?

**Opciones:**
- A) Escribir la configuración de Terraform, ejecutar terraform init para inicializar el directorio de trabajo o workspace, y ejecutar terraform apply
- B) Escribir la configuración de Terraform, ejecutar terraform show para ver los cambios propuestos, y terraform apply para crear nueva infraestructura
- C) Escribir la configuración de Terraform, ejecutar terraform apply para crear infraestructura, usar terraform validate para confirmar que Terraform desplegó los recursos correctamente
- D) Escribir la configuración de Terraform, ejecutar terraform plan para inicializar el directorio de trabajo o workspace, y terraform apply para crear la infraestructura

**Respuesta Correcta:** A

**Explicación:** El flujo de trabajo estándar de Terraform es: escribir configuración → `terraform init` para inicializar → `terraform plan` para previsualizar → `terraform apply` para desplegar.

---

## Question No. 263

**Tipo de Pregunta:** Opción Única

**Pregunta:** ¿Cuándo tienen efecto los cambios invocados por terraform apply?

**Opciones:**
- A) Después de que Terraform haya actualizado el archivo de estado
- B) Una vez que el proveedor de recursos haya cumplido la solicitud
- C) Inmediatamente
- D) Ninguna de las anteriores es correcta

**Respuesta Correcta:** B

**Explicación:** Los cambios tienen efecto una vez que el proveedor de recursos (por ejemplo, AWS, Azure) ha cumplido la solicitud y creado o modificado la infraestructura real.

---

## Question No. 264

**Tipo de Pregunta:** Opción Única

**Pregunta:** Nunca has usado Terraform antes y te gustaría probarlo usando una cuenta de equipo compartida para un proveedor de nube. La cuenta de equipo compartida ya contiene 15 máquinas virtuales (VMs). Desarrollas una configuración de Terraform que contiene una VM, realizas terraform apply y ves que tu VM fue creada exitosamente. ¿Qué deberías hacer para eliminar la VM recién creada con Terraform?

**Opciones:**
- A) El archivo de estado de Terraform contiene las 16 VMs en la cuenta del equipo. Ejecuta terraform destroy y selecciona la VM recién creada.
- B) Elimina el archivo de estado de Terraform y ejecuta terraform apply.
- C) El archivo de estado de Terraform solo contiene la nueva VM. Ejecuta terraform destroy.
- D) Elimina la VM usando la consola del proveedor de nube y terraform apply para aplicar los cambios al archivo de estado de Terraform.

**Respuesta Correcta:** C

**Explicación:** El archivo de estado de Terraform solo rastrea los recursos gestionados por Terraform. Dado que solo se creó una VM con esta configuración, `terraform destroy` solo eliminará esa VM.

---

## Question No. 265

**Tipo de Pregunta:** Opción Única

**Pregunta:** ¿Cuál es la convención de estilo de Terraform para indentar un nivel de anidamiento en comparación con el nivel superior?

**Opciones:**
- A) Con un tabulador
- B) Con dos espacios
- C) Con cuatro espacios
- D) Con tres espacios

**Respuesta Correcta:** B

**Explicación:** La convención de estilo de Terraform es usar dos espacios para cada nivel de anidamiento, como lo impone `terraform fmt`.

---

## Question No. 266

**Tipo de Pregunta:** Opción Única

**Pregunta:** ¿Qué tipo de bloque de configuración creará un objeto de infraestructura con configuraciones especificadas dentro del bloque?

**Opciones:**
- A) provider
- B) state
- C) data
- D) resource

**Respuesta Correcta:** D

**Explicación:** El bloque `resource` se usa para definir y crear objetos de infraestructura. Los bloques `data` leen infraestructura existente, y los bloques `provider` configuran proveedores.

---

## Question No. 267

**Tipo de Pregunta:** Opción Única

**Pregunta:** ¿Cuál comando deberías ejecutar para verificar si todo el código en una configuración de Terraform que referencia múltiples módulos está correctamente formateado sin hacer cambios?

**Opciones:**
- A) terraform fmt -write-false
- B) terraform fmt -list -recursive
- C) terraform fmt -check -recursive
- D) terraform fmt -check

**Respuesta Correcta:** C

**Explicación:** `terraform fmt -check` verifica el formato sin hacer cambios, y `-recursive` asegura que todos los módulos en subdirectorios también sean verificados.

---

## Question No. 268

**Tipo de Pregunta:** Opción Única

**Pregunta:** ¿Cómo referenciarías los IDs de volumen asociados con los bloques ebs_block_device en esta configuración?

**Opciones:**
- A) aws_instance.example.ebs_block_device[sda2,sda3].volume_id
- B) aws_Instance.example.ebs_block_device.[*].volume_id
- C) aws_Instance.example.ebs_block_device.volume_ids
- D) aws_instance.example-ebs_block_device.*.volume_id

**Respuesta Correcta:** B

**Explicación:** La expresión splat `[*]` se usa para referenciar todas las instancias de un bloque anidado repetido y extraer un atributo específico de cada uno.

---

## Question No. 269

**Tipo de Pregunta:** Opción Única

**Pregunta:** Estás haciendo cambios al código existente de Terraform para agregar nueva infraestructura. ¿Cuándo es el mejor momento para ejecutar terraform validate?

**Opciones:**
- A) Después de ejecutar terraform apply para que puedas validar tu infraestructura
- B) Antes de ejecutar terraform apply para que puedas validar tus credenciales de provider
- C) Antes de ejecutar terraform plan para que puedas validar la sintaxis de tu código
- D) Después de ejecutar terraform plan para que puedas validar que tu archivo de estado es consistente con tu infraestructura

**Respuesta Correcta:** C

**Explicación:** `terraform validate` verifica sintaxis y consistencia interna de los archivos de configuración. Ejecutarlo antes de `terraform plan` detecta errores tempranamente sin hacer llamadas API.

---

## Question No. 270

**Tipo de Pregunta:** Opción Única

**Pregunta:** Como miembro de un equipo de operaciones que usa prácticas de infraestructura como código (IaC), te encargan hacer un cambio a un stack de infraestructura que corre en una nube pública. ¿Qué patrón seguiría las mejores prácticas de IaC para hacer un cambio?

**Opciones:**
- A) Hacer el cambio a través del endpoint de API de la nube pública
- B) Clonar el repositorio que contiene tu código de infraestructura y luego ejecutar el código
- C) Usar la consola de nube pública para hacer el cambio después de que se haya aprobado un registro de base de datos
- D) Hacer el cambio programáticamente a través del CLI de la nube pública
- E) Enviar un pull request y esperar una fusión aprobada de los cambios propuestos

**Respuesta Correcta:** E

**Explicación:** Las mejores prácticas de IaC requieren que todos los cambios pasen por control de versiones con revisión de código mediante pull requests, garantizando auditabilidad, flujos de aprobación y reproducibilidad.

---

## Question No. 271

**Tipo de Pregunta:** Opción Única

**Pregunta:** Debes usar diferentes comandos de Terraform dependiendo del proveedor de nube que uses.

**Opciones:**
- A) Verdadero
- B) Falso

**Respuesta Correcta:** B

**Explicación:** Los comandos de Terraform son independientes de la nube. Los mismos comandos (`init`, `plan`, `apply`, `destroy`) funcionan independientemente del proveedor de nube configurado.

---

## Question No. 272

**Tipo de Pregunta:** Opción Única

**Pregunta:** ¿Qué información expone automáticamente el Registro Público de Módulos de Terraform sobre los módulos publicados?

**Opciones:**
- A) Variables de entrada requeridas
- B) Variables de entrada opcionales y valores por defecto
- C) Outputs
- D) Todas las anteriores
- E) Ninguna de las anteriores

**Respuesta Correcta:** D

**Explicación:** El Registro Público de Módulos de Terraform analiza y expone automáticamente todos los metadatos del módulo incluyendo entradas requeridas, entradas opcionales con valores por defecto, y outputs.

---

## Question No. 273

**Tipo de Pregunta:** Opción Única

**Pregunta:** Como desarrollador, quieres asegurarte de que tus plugins estén actualizados con las últimas versiones. ¿Qué comando de Terraform deberías usar?

**Opciones:**
- A) terraform refresh -upgrade
- B) terraform apply -upgrade
- C) terraform init -upgrade
- D) terraform providers -upgrade

**Respuesta Correcta:** C

**Explicación:** `terraform init -upgrade` actualiza todos los providers y módulos a la última versión que satisface las restricciones de versión en la configuración.

---

## Question No. 274

**Tipo de Pregunta:** Opción Única

**Pregunta:** Has desplegado una nueva webapp con una dirección IP pública en un proveedor de nube. Sin embargo, no creaste ningún output para tu código. ¿Cuál es el mejor método para encontrar rápidamente la dirección IP del recurso que desplegaste?

**Opciones:**
- A) En una nueva carpeta, usa la fuente de datos terraform_remote_state para cargar el archivo de estado, luego escribe un output para cada recurso que encuentres en el archivo de estado
- B) Ejecuta terraform state list para encontrar el nombre del recurso, luego terraform state show para encontrar los atributos incluyendo la dirección IP pública
- C) Ejecuta terraform output ip_address para ver el resultado
- D) Ejecuta terraform destroy luego terraform apply y busca la dirección IP en stdout

**Respuesta Correcta:** B

**Explicación:** `terraform state list` muestra todos los recursos gestionados, y `terraform state show <recurso>` muestra todos los atributos incluyendo la dirección IP pública sin necesitar outputs definidos.

---

## Question No. 275

**Tipo de Pregunta:** Opción Única

**Pregunta:** Tu equipo de DevOps actualmente usa el backend local para tu configuración de Terraform. Quieres cambiar a un backend remoto para almacenar el archivo de estado en una ubicación central. ¿Cuál de los siguientes backends no funcionaría?

**Opciones:**
- A) Artifactory
- B) Amazon S3
- C) Terraform Cloud
- D) Git

**Respuesta Correcta:** D

**Explicación:** Git no es un backend de Terraform soportado. Los backends remotos soportados incluyen S3, Terraform Cloud, Consul, Artifactory, Azure Blob Storage, entre otros.

---

## Question No. 276

**Tipo de Pregunta:** Opción Única

**Pregunta:** Decides mover un archivo de estado de Terraform a Amazon S3 desde otra ubicación. Escribes el código en un archivo llamado backend.tf. ¿Qué comando migrará tu archivo de estado actual al nuevo backend remoto de S3?

**Opciones:**
- A) terraform state
- B) terraform init
- C) terraform push
- D) terraform refresh

**Respuesta Correcta:** B

**Explicación:** `terraform init` detecta el cambio en la configuración del backend y solicita automáticamente migrar el estado existente al nuevo backend.

---

## Question No. 277

**Tipo de Pregunta:** Opción Única

**Pregunta:** ¿Cuál de los siguientes no es un tipo de variable válido de Terraform?

**Opciones:**
- A) list
- B) array
- C) map
- D) string

**Respuesta Correcta:** B

**Explicación:** `array` no es un tipo válido de Terraform. Los tipos válidos incluyen string, number, bool, list, set, map, object y tuple.

---

## Question No. 278

**Tipo de Pregunta:** Opción Única

**Pregunta:** ¿A qué NO hace referencia Terraform cuando ejecuta terraform apply -refresh-only?

**Opciones:**
- A) Archivo de estado
- B) Credenciales
- C) Proveedor de nube
- D) Definiciones de recursos de Terraform en archivos de configuración

**Respuesta Correcta:** D

**Explicación:** `terraform apply -refresh-only` actualiza el archivo de estado consultando la infraestructura real, pero no referencia ni aplica definiciones de recursos de los archivos de configuración.

---

## Question No. 279

**Tipo de Pregunta:** Opción Única

**Pregunta:** Las asignaciones de variables de módulo se heredan del módulo padre y no necesitas establecerlas explícitamente.

**Opciones:**
- A) Verdadero
- B) Falso

**Respuesta Correcta:** B

**Explicación:** Las variables de módulo no se heredan automáticamente. Cada variable debe pasarse explícitamente al llamar un módulo usando los argumentos del bloque `module`.

---

## Question No. 280

**Tipo de Pregunta:** Opción Única

**Pregunta:** ¿Por qué esta configuración de backend no sigue las mejores prácticas?

**Opciones:**
- A) Debe incluirse un meta-argumento alias en los bloques de backend siempre que sea posible
- B) Deberías usar el backend de almacenamiento mejorado local siempre que sea posible
- C) No debes almacenar credenciales en la configuración de Terraform
- D) La configuración del backend debe contener múltiples credenciales para que más de un usuario pueda ejecutar terraform plan y terraform apply

**Respuesta Correcta:** C

**Explicación:** Codificar credenciales directamente en la configuración de Terraform es un riesgo de seguridad. Las credenciales deben proporcionarse mediante variables de entorno, roles IAM o configuración parcial.

---

## Question No. 281

**Tipo de Pregunta:** Opción Única

**Pregunta:** ¿Para qué usa Terraform el archivo .terraform.lock.hcl?

**Opciones:**
- A) No existe tal archivo
- B) Rastrear dependencias específicas de providers
- C) Prevenir que se ejecuten los comandos de Terraform
- D) Almacenar referencias a workspaces que están bloqueados

**Respuesta Correcta:** B

**Explicación:** El archivo `.terraform.lock.hcl` registra las versiones exactas de providers seleccionadas durante `terraform init`, garantizando versiones consistentes de providers en todos los miembros del equipo y entornos CI.

---

## Question No. 282

**Tipo de Pregunta:** Opción Única

**Pregunta:** Una vez que configuras un nuevo backend de Terraform con un bloque de código terraform, ¿qué comando(s) deberías usar para migrar el archivo de estado?

**Opciones:**
- A) terraform destroy, luego terraform apply
- B) terraform init
- C) terraform push
- D) terraform apply

**Respuesta Correcta:** B

**Explicación:** Ejecutar `terraform init` después de configurar un nuevo backend detecta el cambio y te solicita migrar el estado existente a la nueva ubicación del backend.

---

## Question No. 283

**Tipo de Pregunta:** Opción Única

**Pregunta:** Si actualizas la restricción de versión en tu configuración de Terraform, Terraform actualizará tu archivo de bloqueo la próxima vez que ejecutes terraform init.

**Opciones:**
- A) Verdadero
- B) Falso

**Respuesta Correcta:** B

**Explicación:** Actualizar las restricciones de versión por sí solo no actualiza el archivo de bloqueo. Debes ejecutar `terraform init -upgrade` para actualizar `.terraform.lock.hcl` con las nuevas restricciones.

---

## Question No. 284

**Tipo de Pregunta:** Opción Única

**Pregunta:** Tu equipo de seguridad escaneó algunos workspaces de Terraform y encontró secretos almacenados en texto plano en los archivos de estado. ¿Cómo puedes proteger esos datos?

**Opciones:**
- A) Editar tu archivo de estado para eliminar los datos sensibles
- B) Siempre almacenar tus secretos en un archivo secrets.tfvars
- C) Eliminar el archivo de estado cada vez que ejecutes Terraform
- D) Almacenar el estado en un backend encriptado

**Respuesta Correcta:** D

**Explicación:** Usar un backend remoto encriptado (por ejemplo, Terraform Cloud, S3 con SSE) garantiza que los archivos de estado estén encriptados en reposo, protegiendo los datos sensibles almacenados en el estado.

---

## Question No. 285

**Tipo de Pregunta:** Opción Única

**Pregunta:** Las variables declaradas dentro de un módulo son accesibles fuera del módulo.

**Opciones:**
- A) Verdadero
- B) Falso

**Respuesta Correcta:** B

**Explicación:** Las variables de módulo tienen alcance dentro del módulo. Para exponer valores fuera de un módulo, debes declarar valores `output` que el módulo llamador pueda referenciar.

---

## Question No. 286

**Tipo de Pregunta:** Opción Única

**Pregunta:** ¿Cuándo deberías escribir archivos de configuración de Terraform para infraestructura existente que quieres empezar a gestionar con Terraform?

**Opciones:**
- A) Puedes importar infraestructura sin código de Terraform correspondiente
- B) Terraform generará los archivos de configuración correspondientes por ti
- C) Antes de ejecutar terraform import
- D) Después de ejecutar terraform import

**Respuesta Correcta:** C

**Explicación:** Debes escribir la configuración de Terraform (bloques resource) antes de ejecutar `terraform import`. El comando import mapea el recurso existente a la configuración que has escrito.

---

## Question No. 287

**Tipo de Pregunta:** Opción Única

**Pregunta:** Estás construyendo un pipeline de CI/CD y necesitas inyectar variables sensibles en tu ejecución de Terraform. ¿Cómo puedes hacerlo de forma segura?

**Opciones:**
- A) Copiar las variables sensibles en tu código de Terraform
- B) Almacenar las variables sensibles en un archivo secure_varS.tf
- C) Almacenar las variables sensibles como texto plano en un repositorio de código fuente
- D) Pasar variables a Terraform con un flag -var

**Respuesta Correcta:** D

**Explicación:** Pasar variables sensibles mediante el flag `-var` en tiempo de ejecución (inyectadas por el sistema CI/CD desde un almacén de secretos) las mantiene fuera del código fuente y de los archivos de configuración.

---

## Question No. 288

**Tipo de Pregunta:** Opción Única

**Pregunta:** ¿Cómo puedes activar una ejecución en un workspace de Terraform Cloud que está conectado a un repositorio de Sistema de Control de Versiones (VCS)?

**Opciones:**
- A) Solo los propietarios de la organización de Terraform Cloud pueden establecer variables de workspace en workspaces conectados a VCS
- B) Hacer un commit de un cambio al directorio de trabajo y rama del VCS a la que está conectado el workspace de Terraform Cloud
- C) Solo los propietarios de la organización de Terraform Cloud pueden aprobar planes en workspaces conectados a VCS
- D) Solo los miembros de una organización VCS pueden abrir un pull request contra repositorios que están conectados a workspaces de Terraform Cloud

**Respuesta Correcta:** B

**Explicación:** Hacer un commit de un cambio a la rama monitoreada en el repositorio VCS activa automáticamente una nueva ejecución de Terraform Cloud mediante la integración de webhook VCS.

---

## Question No. 289

**Tipo de Pregunta:** Opción Única

**Pregunta:** ¿Qué almacena el backend 'local' predeterminado de Terraform?

**Opciones:**
- A) Archivos tfplan
- B) Archivo de estado
- C) Plugins de provider
- D) Binario de Terraform

**Respuesta Correcta:** B

**Explicación:** El backend local almacena el archivo de estado de Terraform (`terraform.tfstate`) en el sistema de archivos local en el directorio de trabajo.

---

## Question No. 290

**Tipo de Pregunta:** Opción Única

**Pregunta:** ¿Cuál de los siguientes no es una función de cadena válida en Terraform?

**Opciones:**
- A) chomp
- B) join
- C) slice
- D) split

**Respuesta Correcta:** C

**Explicación:** `slice` es una función de colección que opera en listas, no una función de cadena. Las funciones de cadena válidas incluyen `chomp`, `join`, `split`, `format`, `trim` y otras.

---

## Question No. 291

**Tipo de Pregunta:** Opción Única

**Pregunta:** ¿Qué característica impide que múltiples usuarios operen en el estado de Terraform al mismo tiempo?

**Opciones:**
- A) Bloqueo de estado
- B) Control de versiones
- C) Restricciones de provider
- D) Backends remotos

**Respuesta Correcta:** A

**Explicación:** El bloqueo de estado previene operaciones concurrentes bloqueando el archivo de estado cuando hay una operación de Terraform en progreso, previniendo conflictos y corrupción.

---

## Question No. 292

**Tipo de Pregunta:** Opción Única

**Pregunta:** Los providers de Terraform siempre se instalan desde Internet.

**Opciones:**
- A) Verdadero
- B) Falso

**Respuesta Correcta:** B

**Explicación:** Los providers también pueden instalarse desde espejos de sistema de archivos locales, registros privados o espejos de red — no exclusivamente desde internet público.

---

## Question No. 293

**Tipo de Pregunta:** Opción Única

**Pregunta:** Fuera del bloque required_providers, las configuraciones de Terraform siempre se refieren a los providers por sus nombres locales.

**Opciones:**
- A) Verdadero
- B) Falso

**Respuesta Correcta:** A

**Explicación:** Dentro de una configuración de Terraform, los providers siempre se referencian por su nombre local (definido en `required_providers`) fuera del propio bloque `required_providers`.

---

## Question No. 294

**Tipo de Pregunta:** Opción Múltiple

**Pregunta:** ¿Cuáles de las siguientes son ventajas de usar infraestructura como código (IaC) en lugar de aprovisionar con una interfaz gráfica de usuario (GUI)? Elige dos respuestas correctas.

**Opciones:**
- A) Te permite versionar, reutilizar y compartir la configuración de infraestructura
- B) Aprovisiona los mismos recursos a un costo menor
- C) Asegura tus credenciales
- D) Reduce el riesgo de error del operador
- E) Previene modificaciones manuales a tus recursos

**Respuesta Correcta:** A, D

**Explicación:** IaC habilita el control de versiones, reutilización y compartición de configuraciones (A), y reduce el error humano/operador mediante la automatización y repetibilidad (D).

---

## Question No. 295

**Tipo de Pregunta:** Opción Múltiple

**Pregunta:** Has aprovisionado algunas máquinas virtuales (VMs) en Google Cloud Platform (GCP) usando la herramienta de línea de comandos gcloud. Sin embargo, estás estandarizando con Terraform y quieres gestionar estas VMs con Terraform. ¿Cuáles son las dos cosas que debes hacer para lograrlo? Elige dos respuestas correctas.

**Opciones:**
- A) Ejecutar el comando terraform import-gcp
- B) Escribir la configuración de Terraform para las VMs existentes
- C) Usar el comando terraform import para las VMs existentes
- D) Aprovisionar nuevas VMs usando Terraform con los mismos nombres de VM

**Respuesta Correcta:** B, C

**Explicación:** Para traer infraestructura existente bajo gestión de Terraform debes: (B) escribir la configuración del recurso Terraform que coincida con los recursos existentes, y (C) ejecutar `terraform import` para mapearlos al estado.

---

## Question No. 296

**Tipo de Pregunta:** Opción Única

**Pregunta:** ¿Cuándo aplica Sentinel la lógica de políticas durante una ejecución de Terraform Cloud?

**Opciones:**
- A) Antes de la fase de plan
- B) Durante la fase de plan
- C) Antes de la fase de apply
- D) Después de la fase de apply

**Respuesta Correcta:** C

**Explicación:** Las políticas de Sentinel se ejecutan después de que se genera el plan y antes de la fase de apply, actuando como una compuerta de política como código para permitir o denegar cambios de infraestructura.

---

## Question No. 297

**Tipo de Pregunta:** Opción Única

**Pregunta:** Un desarrollador accidentalmente lanzó una VM (máquina virtual) fuera del flujo de trabajo de Terraform y terminó con dos servidores con el mismo nombre. No saben qué VM gestiona Terraform pero tienen una lista de todos los IDs de VM activos. ¿Cuál de los siguientes métodos podrías usar para descubrir qué instancia gestiona Terraform?

**Opciones:**
- A) Ejecutar terraform state list para encontrar los nombres de todas las VMs, luego ejecutar terraform state show para cada una para encontrar qué ID de VM gestiona Terraform
- B) Actualizar el código para incluir outputs para el ID de todas las VMs, luego ejecutar terraform plan para ver los outputs
- C) Ejecutar terraform taint/code en todas las VMs para recrearlas
- D) Usar terraform refresh/code para averiguar qué IDs ya son parte del estado

**Respuesta Correcta:** A

**Explicación:** `terraform state list` revela los nombres de recursos gestionados, y `terraform state show` muestra los atributos específicos (incluyendo ID) que Terraform rastrea para cada recurso.

---

## Question No. 298

**Tipo de Pregunta:** Opción Única

**Pregunta:** ¿Qué comando debes ejecutar primero antes de realizar más operaciones de Terraform en un directorio de trabajo?

**Opciones:**
- A) terraform import
- B) terraform workspace
- C) terraform plan
- D) terraform init

**Respuesta Correcta:** D

**Explicación:** `terraform init` debe ejecutarse primero en cualquier directorio de trabajo para inicializar el backend, descargar providers y configurar módulos antes de cualquier otra operación de Terraform.

---

## Question No. 299

**Tipo de Pregunta:** Opción Única

**Pregunta:** terraform validate confirma que tu infraestructura coincide con el archivo de estado de Terraform.

**Opciones:**
- A) Verdadero
- B) Falso

**Respuesta Correcta:** B

**Explicación:** `terraform validate` solo verifica la sintaxis y consistencia interna de los archivos de configuración de Terraform. No verifica el estado de la infraestructura ni realiza llamadas API.

---

## Question No. 300

**Tipo de Pregunta:** Opción Única

**Pregunta:** Estás creando una configuración de Terraform que necesita hacer uso de múltiples providers, uno para AWS y uno para Datadog. ¿Cuál de los siguientes bloques de provider te permitiría hacer esto?

**Opciones:**
- A) Un único bloque `terraform {}` que contiene tanto `provider "aws" {}` como `provider "datadog" {}` anidados dentro
- B) Dos bloques `provider` separados de nivel superior: `provider "aws" {}` y `provider "datadog" {}`
- C) Dos bloques `provider` separados de nivel superior con formato alineado
- D) Un único bloque `provider {}` con tanto `"aws" {}` como `"datadog" {}` anidados dentro

**Respuesta Correcta:** B

**Explicación:** Cada provider requiere su propio bloque `provider` de nivel superior. Los múltiples providers se soportan declarando bloques `provider "nombre" {}` separados en el nivel raíz de la configuración.

---

## Question No. 301

**Tipo de Pregunta:** Opción Única

**Pregunta:** La versión del módulo es requerida para referenciar un módulo en el Registro de Módulos de Terraform.

**Opciones:**
- A) Verdadero
- B) Falso

**Respuesta Correcta:** B

**Explicación:** La versión del módulo no es requerida al referenciar un módulo del Registro de Módulos de Terraform. Si bien especificar una restricción de versión es muy recomendable para uso en producción, omitirla es válido y Terraform usará la versión más reciente.

---

## Question No. 302

**Tipo de Pregunta:** Opción Única

**Pregunta:** terraform destroy es la única manera de eliminar infraestructura con Terraform.

**Opciones:**
- A) Verdadero
- B) Falso

**Respuesta Correcta:** B

**Explicación:** `terraform destroy` no es la única manera de eliminar infraestructura con Terraform. También puedes eliminar recursos borrando sus bloques de recurso de la configuración y ejecutando `terraform apply`, lo cual planificará y ejecutará la destrucción de cualquier recurso que ya no esté declarado. Otros métodos incluyen `terraform destroy -target=<recurso>` para destruir un recurso específico, o `terraform state rm` para eliminar un recurso del archivo de estado sin afectar la infraestructura real.

**Explicación:**

Opción A es incorrecta: Si bien `terraform destroy` es una forma común y directa de eliminar toda la infraestructura gestionada, no es el único mecanismo disponible. Terraform proporciona múltiples caminos para eliminar infraestructura dependiendo del caso de uso.

Opción B es correcta: Eliminar los bloques de recurso de la configuración y ejecutar `terraform apply` logra el mismo resultado de destruir esos recursos. Adicionalmente, la destrucción con objetivo específico y los comandos de manipulación de estado ofrecen opciones adicionales para la eliminación selectiva.

---

## Question No. 303

**Tipo de Pregunta:** Opción Única

**Pregunta:** ¿Cómo puedes habilitar el registro detallado (verbose logging) para solucionar problemas en Terraform?

**Opciones:**
- A) Establecer el indicador de nivel de registro en la línea de comandos.
- B) Establecer la variable de entorno TF_LOG.
- C) Establecer el nivel de registro en tu bloque terraform.

**Respuesta Correcta:** B

**Explicación:** Terraform utiliza la variable de entorno `TF_LOG` para habilitar el registro detallado. Puedes establecerla en uno de los siguientes niveles: `TRACE`, `DEBUG`, `INFO`, `WARN` o `ERROR`. Por ejemplo, ejecutar `export TF_LOG=DEBUG` antes de los comandos de Terraform producirá una salida detallada útil para solucionar problemas. Para persistir los registros en un archivo, se puede usar la variable `TF_LOG_PATH` junto con `TF_LOG`.

**Explicación:**

Opción A es incorrecta: Terraform no admite un indicador de línea de comandos como `--log-level` o similar para controlar la verbosidad del registro. Toda la configuración de registro se realiza mediante variables de entorno.

Opción C es incorrecta: El bloque `terraform {}` en tu configuración se usa para declarar los providers requeridos, la configuración del backend y la versión requerida de Terraform. No admite ninguna configuración de nivel de registro.

---

## Question No. 304

**Tipo de Pregunta:** Opción Única

**Pregunta:** ¿Qué tipo de información proporciona Terraform Registry sobre los módulos que aloja?

**Opciones:**
- A) Variables de entrada requeridas
- B) Salidas
- C) Variables de entrada opcionales y valores por defecto
- D) Todas las anteriores

**Respuesta Correcta:** D

**Explicación:** Las páginas de módulos en Terraform Registry documentan en detalle la interfaz del módulo. Incluyen las variables de entrada requeridas, las variables de entrada opcionales con sus valores por defecto y las salidas que el módulo expone. Como las tres categorías están disponibles en la documentación del módulo, la respuesta más completa y correcta es la opción D.

**Explicación:**

Opción A es incorrecta: Las variables requeridas sí se muestran, pero la opción es incompleta porque el registry también muestra entradas opcionales y salidas.

Opción B es incorrecta: Las salidas sí se muestran, pero esto representa solo una parte de la información del módulo publicada en el registry.

Opción C es incorrecta: Las entradas opcionales y sus valores por defecto sí aparecen, pero la opción omite otra información documentada como entradas requeridas y salidas.

---

## Question No. 305

**Tipo de Pregunta:** Opción Única

**Pregunta:** El siguiente exhibit muestra parte de una configuración de Terraform que te han pedido actualizar. El nombre de la Azure Virtual Network debe establecerse con el nombre del resource group seguido de un guion y la palabra vnet.

Exhibit:
```
data "azurerm_resource_group" "example" {
  name = var.resource_group_name
}

resource "azurerm_virtual_network" "example" {
  name = ____________________
}
```

¿Qué expresión cumple este requisito?

**Opciones:**
- A) `${data.azurerm_resource_group.example.name}-vnet`
- B) `concat(data.azurerm_resource_group.example.name, '-', 'vnet')`
- C) `join('-', var.resource_group_name, 'vnet')`
- D) `${azurerm_resource_group.example.name}-vnet`

**Respuesta Correcta:** A

**Explicación:** La opción A construye correctamente el nombre de la red virtual tomando el nombre del resource group desde el data source y agregando `-vnet`. La expresión referencia el bloque existente `data.azurerm_resource_group.example.name`, que es exactamente el valor solicitado en el requerimiento.

**Explicación:**

Opción B es incorrecta: `concat` está pensado para concatenar listas, no para construir una cadena a partir de valores escalares de tipo string en esa forma.

Opción C es incorrecta: `join` espera un separador y una lista de strings, pero esta opción pasa argumentos separados y además usa `var.resource_group_name` en lugar del valor leído desde el data source `data.azurerm_resource_group.example` mostrado en el exhibit.

Opción D es incorrecta: Hace referencia a `azurerm_resource_group.example.name`, pero el exhibit define un data source llamado `data.azurerm_resource_group.example`, no un bloque resource llamado `azurerm_resource_group.example`.

---

## Question No. 306

**Tipo de Pregunta:** Opción Única

**Pregunta:** ¿Cuál es una forma recomendada de compartir el estado de Terraform entre equipos?

**Opciones:**
- A) Usar un backend de estado remoto.
- B) No se recomienda ninguna configuración adicional.
- C) Guardar el archivo `terraform.tfstate` en control de versiones.
- D) Guardar el archivo `terraform.tfstate` en HashiCorp Vault.

**Respuesta Correcta:** A

**Explicación:** Un backend de estado remoto es el enfoque recomendado para colaboración entre equipos porque centraliza el estado, permite flujos concurrentes más seguros (normalmente con bloqueo de estado) y reduce el riesgo de drift y sobrescrituras accidentales desde estados locales.

**Explicación de opciones incorrectas:**

Opción B es incorrecta: En trabajo en equipo sí se requiere configuración adicional, especialmente estado remoto compartido, para evitar conflictos entre archivos de estado locales.

Opción C es incorrecta: Guardar `terraform.tfstate` en control de versiones no se recomienda porque el estado puede contener datos sensibles y no ofrece controles seguros de bloqueo/concurrencia.

Opción D es incorrecta: HashiCorp Vault está orientado principalmente a gestión de secretos, no a funcionar como backend estándar de estado de Terraform para operaciones colaborativas de estado.

---

## Question No. 307

**Tipo de Pregunta:** Opción Única

**Pregunta:** Terraform almacena el valor de una salida en su archivo de estado, incluso si el argumento `sensitive` está establecido en `true`.

**Opciones:**
- A) Verdadero
- B) Falso

**Respuesta Correcta:** A

**Explicación:** Marcar una salida como `sensitive = true` solo oculta el valor en la salida normal de la CLI y en algunas interfaces. Terraform igual conserva el valor real en el archivo de estado porque el estado debe mantener los datos reales para seguir recursos y dependencias.

**Explicación de opciones incorrectas:**

Opción B es incorrecta: `sensitive = true` no evita que se guarde en el estado; controla la visibilidad, no la persistencia.

---

## Question No. 308

**Tipo de Pregunta:** Opción Única

**Pregunta:** Puedes instalar plugins community y partner usando `terraform init`.

**Opciones:**
- A) Verdadero
- B) Falso

**Respuesta Correcta:** A

**Explicación:** `terraform init` inicializa el directorio de trabajo e instala los plugins de proveedores requeridos por la configuración. Eso incluye proveedores community y partner disponibles en el Terraform Registry o en las fuentes de proveedor configuradas.

**Explicación de opciones incorrectas:**

Opción B es incorrecta: La instalación de plugins/proveedores es una de las responsabilidades principales de `terraform init`, no de `plan` ni de `apply`.

---

## Question No. 309

**Tipo de Pregunta:** Opción Múltiple

**Pregunta:** Aprovisionaste máquinas virtuales (VMs) en Google Cloud Platform usando la herramienta de línea de comandos `gcloud`. ¿Qué se debe hacer para administrar esas VMs con Terraform en su lugar? (Selecciona las 2 respuestas correctas.)

**Opciones:**
- A) Selecciona las dos respuestas correctas a continuación.
- B) Ejecutar `terraform state pull`.
- C) Agregar un bloque `import` en la configuración.
- D) Agregar un bloque `resource` para la VM existente.
- E) Ejecutar `terraform apply -refresh-only`.

**Respuesta Correcta:** C, D

**Explicación:** Para que Terraform administre VMs existentes creadas fuera de Terraform, debes definir el bloque `resource` correspondiente en la configuración e importar la infraestructura existente al estado de Terraform. Un bloque `import` es la forma declarativa de realizar esa importación en los flujos actuales de Terraform.

**Explicación de opciones incorrectas:**

Opción A es incorrecta: Solo es una línea de instrucción y no representa una acción de Terraform.

Opción B es incorrecta: `terraform state pull` solo lee y muestra el archivo de estado actual; no importa recursos no administrados.

Opción E es incorrecta: `terraform apply -refresh-only` solo actualiza el estado de recursos ya administrados y no comienza a administrar recursos que aún no han sido importados.

---

## Question No. 310

**Tipo de Pregunta:** Opción Única

**Pregunta:** ¿Qué comando debes ejecutar antes de ejecutar un plan o apply por primera vez?

**Opciones:**
- A) terraform init
- B) terraform workspace
- C) terraform validate
- D) terraform import

**Respuesta Correcta:** A

**Explicación:** `terraform init` debe ejecutarse antes que cualquier otro comando del flujo de trabajo (`plan`, `apply`, etc.) en un directorio de trabajo nuevo o recién clonado. Descarga e instala los plugins de proveedores requeridos, inicializa el backend y configura el directorio `.terraform` local del que dependen los comandos posteriores.

**Explicación de opciones incorrectas:**

Opción B es incorrecta: `terraform workspace` se usa para administrar espacios de trabajo de Terraform y no puede usarse para inicializar un directorio de trabajo ni instalar proveedores.

Opción C es incorrecta: `terraform validate` verifica la corrección sintáctica y semántica de los archivos de configuración, pero requiere que el directorio ya esté inicializado con `terraform init` previamente.

Opción D es incorrecta: `terraform import` se usa para traer infraestructura existente bajo la administración de Terraform, pero también requiere que el directorio de trabajo esté inicializado previamente.

---

## Question No. 311

**Tipo de Pregunta:** Opción Única

**Pregunta:** Después de crear una nueva configuración de Terraform, tu configuración pasa `terraform validate` pero devuelve un error "Access Denied" del proveedor de nube al ejecutar `terraform plan`. ¿Por qué `terraform validate` no detectó este problema?

**Opciones:**
- A) Las variables solo se aplican y validan durante terraform plan, por lo que terraform validate asumió valores predeterminados y devolvió un mensaje de éxito.
- B) El directorio de trabajo no estaba inicializado, por lo que el plugin del proveedor de nube no estaba disponible al ejecutar el comando terraform validate.
- C) terraform validate solo verifica si una configuración es sintácticamente correcta e internamente consistente, y no se comunica con los proveedores.
- D) El backend remoto no estaba configurado, por lo que terraform validate no pudo cargar el estado y detectar las credenciales faltantes.

**Respuesta Correcta:** C

**Explicación:** `terraform validate` realiza un análisis estático de los archivos de configuración. Verifica errores de sintaxis, referencias inválidas y consistencia interna, pero no inicializa ni se comunica con ningún proveedor. Como nunca contacta al proveedor de nube, no puede detectar errores de autenticación o autorización como "Access Denied". Esos errores solo aparecen durante `terraform plan` o `terraform apply`, que sí realizan llamadas reales a la API del proveedor.

**Explicación de opciones incorrectas:**

Opción A es incorrecta: `terraform validate` no evalúa valores de variables ni ejecuta un plan; solo realiza una verificación de sintaxis y consistencia.

Opción B es incorrecta: Aunque `terraform init` es necesario antes de la mayoría de los comandos, `terraform validate` puede ejecutarse incluso en un directorio no inicializado con una verificación limitada, y el escenario indica que sí devolvió un mensaje de éxito, por lo que la inicialización no es la causa aquí.

Opción D es incorrecta: `terraform validate` no interactúa con el backend ni con el estado, por lo que la configuración del backend remoto no es relevante para explicar por qué pasó la validación.

---

## Question No. 312

**Tipo de Pregunta:** Opción Única

**Pregunta:** Se muestra un bloque `resource` en el espacio de Exhibit de esta página. ¿Cuál es el provider de este recurso?

**Exhibit:**
```hcl
resource "aws_vpc" "main" {}
```

**Opciones:**
- A) test
- B) vpc
- C) aws
- D) main

**Respuesta Correcta:** C

**Explicación:** En un bloque de recurso de Terraform como `resource "aws_vpc" "main"`, el provider se identifica por el prefijo del tipo de recurso. Aquí, `aws_vpc` comienza con `aws`, por lo que el provider es `aws`. La parte restante del tipo (`vpc`) describe la clase de recurso, mientras que la etiqueta final (`main`) es solo el nombre local de esa instancia del recurso dentro de la configuración.

**Explicación de opciones incorrectas:**

Opción A es incorrecta: `test` no es el nombre del provider en la estructura de un bloque `resource`. Si aparece en el exhibit, se interpretaría como un valor o una etiqueta, no como el namespace del provider.

Opción B es incorrecta: `vpc` representa el tipo o clase de recurso dentro del provider AWS, no el provider en sí. En `aws_vpc`, el prefijo del provider es `aws`.

Opción D es incorrecta: `main` normalmente es el nombre local asignado a la instancia del bloque de recurso. Sirve para referenciar el recurso en la configuración, pero no es el provider.

---

## Question No. 313

**Tipo de Pregunta:** Opción Única

**Pregunta:** Cuando ejecutas `terraform apply -refresh-only`, ¿cuál de las siguientes opciones no consulta Terraform para actualizar el archivo de estado?

**Opciones:**
- A) Los archivos de configuración de Terraform que definen los recursos.
- B) Las credenciales de autenticación del provider.
- C) El archivo de estado más reciente.
- D) La infraestructura real reportada por la API del provider.

**Respuesta Correcta:** A

**Explicación:** En modo `-refresh-only`, Terraform actualiza el estado conciliando el estado existente con la información real de la infraestructura obtenida desde las APIs del provider. Para eso usa el estado actual y credenciales válidas del provider. Los archivos de configuración que definen recursos no son la fuente que Terraform consulta para descubrir los cambios reales de infraestructura durante el refresh.

**Explicación de opciones incorrectas:**

Opción B es incorrecta: Terraform necesita autenticarse con el provider para leer los datos actuales de los objetos remotos durante el refresh.

Opción C es incorrecta: Terraform parte del snapshot de estado actual y lo actualiza según lo que detecta remotamente.

Opción D es incorrecta: Las respuestas de la API del provider son precisamente la base para detectar cambios fuera de Terraform y refrescar el estado.

---

## Question No. 314

**Tipo de Pregunta:** Opción Única

**Pregunta:** Tu configuración contiene un bloque `module` que referencia un módulo del Registro de Terraform y establece el argumento `version` en 1.0. Acabas de publicar una nueva versión del módulo y actualizaste tu configuración para apuntar a la versión 1.1. ¿Qué comando debe ejecutarse para instalar la nueva versión?

**Opciones:**
- A) terraform init
- B) terraform modules
- C) terraform plan
- D) terraform apply

**Respuesta Correcta:** A

**Explicación:** Cuando actualizas el argumento `version` de un módulo en tu configuración, Terraform no descarga automáticamente la nueva versión. Debes ejecutar `terraform init` (o `terraform init -upgrade`) para que Terraform obtenga e instale la versión actualizada del módulo en el directorio `.terraform`. Hasta que se ejecute `init`, los comandos `plan` o `apply` seguirán utilizando la versión descargada anteriormente.

**Explicación de opciones incorrectas:**

Opción B es incorrecta: `terraform modules` no es un comando válido de la CLI de Terraform. No existe tal subcomando en las herramientas de Terraform.

Opción C es incorrecta: `terraform plan` genera un plan de ejecución pero no descarga ni instala fuentes de módulos. Depende de los módulos ya obtenidos por `terraform init`.

Opción D es incorrecta: `terraform apply` aplica los cambios descritos por un plan, pero tampoco gestiona la instalación de módulos. La obtención de módulos es responsabilidad exclusiva de `terraform init`.

---

## Question No. 315

**Tipo de Pregunta:** Opción Múltiple

**Pregunta:** ¿Cuál de las siguientes acciones realiza HCP Terraform durante una evaluación de salud de un workspace?

**Opciones:**
- A) Ejecución de `terraform test`
- B) Validación de bloques `check`
- C) Estimación de costos de infraestructura
- D) Detección de drift de recursos
- E) Verificaciones de políticas Sentinel

**Respuesta Correcta:** B, D

**Explicación:** Las evaluaciones de salud de un workspace en HCP Terraform se enfocan en la salud continua de infraestructura que ya está siendo administrada. Evalúan los bloques `check` como parte de la validación continua y también detectan drift de recursos comparando la infraestructura real con el estado y la configuración de Terraform. Estas evaluaciones sirven para detectar problemas operativos y cambios hechos por fuera de Terraform, no para ejecutar todo el flujo normal de runs.

**Explicación de opciones incorrectas:**

Opción A es incorrecta: `terraform test` es un flujo de pruebas independiente de la CLI y no se ejecuta automáticamente como parte de las evaluaciones de salud del workspace.

Opción C es incorrecta: La estimación de costos pertenece al flujo de plan/run en HCP Terraform, no a las evaluaciones periódicas de salud del workspace.

Opción E es incorrecta: Las políticas de Sentinel se evalúan durante las ejecuciones de Terraform como compuertas de gobernanza alrededor de plan/apply, no durante las evaluaciones de salud del workspace.

---

## Question No. 316

**Tipo de Pregunta:** Opción Única

**Pregunta:** ¿Cuándo debes usar el comando `terraform force-unlock`?

**Opciones:**
- A) Cuando `terraform apply` ha fallado debido a un bloqueo del estado.
- B) Cuando tienes un cambio de alta prioridad.
- C) Cuando el desbloqueo automático ha fallado.
- D) Cuando ves un mensaje de estado indicando que Terraform no puede adquirir el bloqueo.

**Respuesta Correcta:** C

**Explicación:** Debes usar `terraform force-unlock` solo para eliminar manualmente un bloqueo de estado obsoleto cuando el desbloqueo automático normal de Terraform no funcionó. Este comando debe usarse con cuidado y únicamente después de confirmar que no hay otra operación de Terraform todavía en ejecución, porque quitar un bloqueo activo puede corromper el estado o permitir cambios en conflicto.

**Explicación de opciones incorrectas:**

Opción A es incorrecta: Que `terraform apply` falle no significa automáticamente que debas forzar el desbloqueo. Primero debes confirmar si el bloqueo sigue siendo válido o si todavía hay otro proceso operando sobre el estado.

Opción B es incorrecta: La urgencia de un cambio no es una razón válida para saltarse las protecciones de bloqueo de estado de Terraform.

Opción D es incorrecta: Un error al adquirir el bloqueo, por sí solo, no significa que el bloqueo esté obsoleto. Puede simplemente indicar que otra operación legítima de Terraform tiene actualmente el bloqueo.

---

## Question No. 317

**Tipo de Pregunta:** Opción Única

**Pregunta:** ¿Por qué es importante tratar tu archivo de estado de Terraform como sensible?

**Opciones:**
- A) Puede contener información como contraseñas y claves de recursos.
- B) Almacena todas las variables de entorno de la máquina que lo creó.
- C) Puede editarse manualmente para cambiar los recursos desplegados.
- D) Contiene información personal sobre el último usuario que lo actualizó.

**Respuesta Correcta:** A

**Explicación:** Los archivos de estado de Terraform pueden almacenar datos sensibles en texto plano, incluidos atributos de recursos como contraseñas, claves privadas, cadenas de conexión y otros secretos que se proporcionaron durante el aprovisionamiento. Por esta razón, los archivos de estado deben protegerse con controles de acceso adecuados, cifrado en reposo y backends remotos seguros (por ejemplo, Terraform Cloud, S3 con cifrado del lado del servidor) para evitar el acceso no autorizado a detalles sensibles de la infraestructura.

**Explicación de opciones incorrectas:**

Opción B es incorrecta: El estado de Terraform no captura las variables de entorno de la máquina que ejecutó el apply. Registra el estado de los recursos de infraestructura gestionados, no el entorno del sistema anfitrión.

Opción C es incorrecta: Aunque un archivo de estado puede editarse manualmente en teoría, esa no es la razón por la que se trata como sensible. Las ediciones manuales son desaconsejadas y peligrosas, pero la preocupación por la sensibilidad reside en los secretos que puede contener.

Opción D es incorrecta: El estado de Terraform no registra información personal sobre los usuarios. Rastrea atributos de recursos, metadatos y dependencias de la infraestructura que gestiona.

---

## Question No. 318

**Tipo de Pregunta:** Opción Única

**Pregunta:** Cuando falla la aserción de un bloque `check`, Terraform bloquea la ejecución de la operación actual.

**Opciones:**
- A) Verdadero
- B) Falso

**Respuesta Correcta:** B

**Explicación:** Cuando falla una aserción dentro de un bloque `check`, Terraform no detiene `terraform plan` ni `terraform apply`. Terraform informa el fallo como una advertencia y continúa con la operación actual. Si necesitas que una condición fallida bloquee la ejecución, debes usar mecanismos como validación de variables, precondiciones o poscondiciones en lugar de un bloque `check`.

**Explicación de opciones incorrectas:**

Opción A es incorrecta: Los bloques `check` están diseñados intencionalmente para no bloquear. Su propósito es mostrar advertencias sobre el estado o las expectativas sin impedir que Terraform continúe la operación.

# Terraform Certification Scenario

This scenario demonstrates key Terraform concepts from the Certification 004. It uses the `azurerm` backend from the `backend-state-bootstrap` folder with the backend key: `exercises-questions-terraform-004portal.tfstate`

## Table of Contents

<table>
<tr>
<td colspan="6"><strong>Section 1 — Questions 2 to 301</strong></td>
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
<td colspan="6"><strong>Section 2 — Questions 302 to 321</strong></td>
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
</td>
</tr>
</table>

## Question No. 2

**Question:** You want to create a string that combines a generated random_id and a variable and reuse that string several times in your configuration. What is the simplest correct way to implement this without repeating the random_id and variable?

**Options:**
- A) Use a module.
- B) Add an output value.
- C) Add a local value.
- D) Use a data source.

**Correct Answer:** C

**Explanation:** The simplest and most efficient way to assign a name to an expression for reusing it multiple times within the same module is by using local values (locals). Locals function as constants or temporary variables within the configuration, allowing you to combine values from different sources (such as a random_id resource and an input variable) in a single centralized expression. This improves readability and avoids code duplication, making maintenance easier if the logic of that text string changes in the future.

**Incorrect options explanation:**

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

---

## Question No. 81

**Question Type:** Single Choice

**Question:** Which argument can you use to prevent unexpected updates to a module's configuration when calling Terraform Registry modules?

**Options:**
- A) source
- B) count
- C) version
- D) lifecycle

**Correct Answer:** C

**Explanation:** Specifying the `version` argument in a module block pins the module to a particular version or version constraint from the Terraform Registry, preventing unexpected updates when newer versions are published.

**Explanation:**

Option A is incorrect: `source` specifies where the module comes from, not which version to use.

Option B is incorrect: `count` controls how many instances of a module are created.

Option D is incorrect: `lifecycle` is a meta-argument for resources that controls create/destroy behavior, not module version pinning.

---

## Question No. 82

**Question Type:** Single Choice

**Question:** Which of the following is available only in HCP Terraform workspaces and not in Terraform CLI?

**Options:**
- A) Dry runs with terraform plan.
- B) Secure variable storage.
- C) Using one workspace's state as a data source for another.
- D) Support for multiple cloud providers.

**Correct Answer:** B

**Explanation:** HCP Terraform provides encrypted, secure variable storage with access controls. Terraform CLI stores variables in plain `.tfvars` files or environment variables without built-in secure vault functionality.

**Explanation:**

Option A is incorrect: `terraform plan` (dry runs) is available in both Terraform CLI and HCP Terraform.

Option C is incorrect: Referencing another workspace's state via `terraform_remote_state` is available with CLI backends as well.

Option D is incorrect: Multi-provider support is a core Terraform feature available in both CLI and HCP Terraform.

---

## Question No. 83

**Question Type:** Single Choice

**Question:** What command can you run to generate DOT (Graphviz) formatted data to visualize Terraform dependencies?

**Options:**
- A) terraform refresh
- B) terraform graph
- C) terraform output
- D) terraform show

**Correct Answer:** B

**Explanation:** `terraform graph` produces a DOT-format dependency graph of Terraform resources and modules, which can be rendered with Graphviz tools such as `dot`.

**Explanation:**

Option A is incorrect: `terraform refresh` updates the state to match real infrastructure; it produces no graph output.

Option C is incorrect: `terraform output` prints output values from state.

Option D is incorrect: `terraform show` displays a human-readable view of the state or plan file.

---

## Question No. 84

**Question Type:** Single Choice

**Question:** A Terraform backend determines how Terraform loads state and stores updates when you execute which command?

**Options:**
- A) apply
- B) destroy
- C) Both of these are correct.
- D) Neither of these are correct.

**Correct Answer:** C

**Explanation:** The backend governs state loading and storage for any operation that reads or writes state. Both `terraform apply` and `terraform destroy` interact with the backend because both modify the state file.

**Explanation:**

Option A is incorrect: While apply does use the backend, selecting only apply is incomplete.

Option B is incorrect: While destroy does use the backend, selecting only destroy is incomplete.

Option D is incorrect: Both apply and destroy use the backend for state management.

---

## Question No. 85

**Question Type:** Single Choice

**Question:** terraform apply will fail if you have not run terraform plan first to update the plan output.

**Options:**
- A) True
- B) False

**Correct Answer:** B

**Explanation:** `terraform apply` can be run directly without a preceding `terraform plan`. When invoked without a saved plan file, it performs its own implicit plan and prompts for confirmation before applying.

**Explanation:**

Option A is incorrect: `terraform apply` does not require a prior `terraform plan`; it generates its own plan internally when no saved plan is provided.

---

## Question No. 86

**Question Type:** Single Choice

**Question:** When you initialize Terraform, where does it cache modules from the public Terraform Registry?

**Options:**
- A) In the /tmp directory.
- B) In the .terraform sub-directory.
- C) In memory.
- D) They are not cached.

**Correct Answer:** B

**Explanation:** `terraform init` downloads and caches all required modules (and providers) into the `.terraform` subdirectory of the working directory.

**Explanation:**

Option A is incorrect: Terraform does not use `/tmp` for module caching.

Option C is incorrect: Modules are written to disk, not kept only in memory.

Option D is incorrect: Modules are cached locally in `.terraform` to avoid re-downloading on every run.

---

## Question No. 87

**Question Type:** Multiple Choice

**Question:** Which of the following is true about terraform apply? (Pick 2 correct responses)

**Options:**
- A) You must pass the output of a terraform plan command to it.
- B) By default, it does not refresh your state file to reflect the current infrastructure configuration.
- C) Depending on provider specification, Terraform may need to destroy and recreate your infrastructure resources.
- D) You cannot target specific resources for the operation.
- E) It only operates on infrastructure defined in the current working directory or workspace.

**Correct Answer:** C, E

**Explanation:** Some resource changes (e.g., immutable attributes) require destroy-then-recreate cycles as defined by the provider schema. Additionally, `terraform apply` only manages resources declared in the current configuration's working directory or selected workspace.

**Explanation:**

Option A is incorrect: A saved plan file is optional; `terraform apply` can generate its own plan implicitly.

Option B is incorrect: By default, `terraform apply` does refresh state before planning (unless `-refresh=false` is set).

Option D is incorrect: You can target specific resources using the `-target` flag.

---

## Question No. 88

**Question Type:** Single Choice

**Question:** You have just developed a new Terraform configuration for two virtual machines with a cloud provider. You would like to create the infrastructure for the first time. Which Terraform command should you run first?

**Options:**
- A) terraform apply
- B) terraform init
- C) terraform plan
- D) terraform show

**Correct Answer:** B

**Explanation:** `terraform init` must be run before any other command in a new configuration. It downloads required providers and modules into the `.terraform` directory, making the configuration ready for plan and apply.

**Explanation:**

Option A is incorrect: `terraform apply` will fail if providers have not been downloaded first by `terraform init`.

Option C is incorrect: `terraform plan` also requires initialization before it can run.

Option D is incorrect: `terraform show` is used to inspect existing state or plan files, not to initialize.

---

## Question No. 89

**Question Type:** Multiple Choice

**Question:** What functionality do providers offer in Terraform? (Pick 3 correct responses)

**Options:**
- A) Interact with cloud provider APIs.
- B) Provision resources for on-premises infrastructure services.
- C) Group a collection of Terraform configuration files that map to a single state file.
- D) Provision resources for public cloud infrastructure services.
- E) Enforce security and compliance policies.

**Correct Answer:** A, B, D

**Explanation:** Terraform providers act as plugins that communicate with service APIs. They can target public cloud platforms (AWS, Azure, GCP), on-premises systems (VMware, Kubernetes on-prem), and other hosted services by wrapping their APIs.

**Explanation:**

Option C is incorrect: Grouping configuration files into a workspace/state is a Terraform workspace concept, not a provider responsibility.

Option E is incorrect: Security and compliance policy enforcement is handled by tools such as Sentinel or OPA, not providers.

---

## Question No. 90

**Question Type:** Single Choice

**Question:** Which command does not cause Terraform to refresh its state?

**Options:**
- A) terraform state list
- B) terraform plan
- C) terraform apply
- D) terraform destroy

**Correct Answer:** A

**Explanation:** `terraform state list` reads the existing state file to list resources but does not trigger a refresh against the real infrastructure. Commands like `plan`, `apply`, and `destroy` perform a state refresh by default before executing.

**Explanation:**

Option B is incorrect: `terraform plan` refreshes state by default before generating a plan.

Option C is incorrect: `terraform apply` refreshes state by default before applying changes.

Option D is incorrect: `terraform destroy` also refreshes state before destroying resources.

---

## Question No. 91

**Question Type:** Single Choice

**Question:** terraform init retrieves and caches the configuration for all remote modules.

**Options:**
- A) True
- B) False

**Correct Answer:** A

**Explanation:** `terraform init` downloads and caches referenced remote modules into the `.terraform` directory so the working directory has the module code required for planning and applying.

**Explanation:**

Option B is incorrect: Fetching remote modules is one of the primary responsibilities of `terraform init`.

---

## Question No. 92

**Question Type:** Single Choice

**Question:** You just upgraded the version of a provider in an existing Terraform project. What do you need to do to install the new provider?

**Options:**
- A) Run terraform refresh.
- B) Run terraform init -upgrade.
- C) Run terraform apply -upgrade.
- D) Upgrade your version of Terraform.

**Correct Answer:** B

**Explanation:** `terraform init -upgrade` tells Terraform to ignore the previously selected provider versions and install the newest versions allowed by the configuration constraints.

**Explanation:**

Option A is incorrect: `terraform refresh` updates state from real infrastructure and does not install providers.

Option C is incorrect: `terraform apply` has no `-upgrade` flag for provider installation.

Option D is incorrect: Upgrading the Terraform CLI itself is unrelated to downloading a newer provider version.

---

## Question No. 93

**Question Type:** Single Choice

**Question:** A child module can always access variables declared in its parent module.

**Options:**
- A) True
- B) False

**Correct Answer:** B

**Explanation:** Child modules do not implicitly inherit parent module variables. A parent module must explicitly pass values into a child module through module input arguments.

**Explanation:**

Option A is incorrect: Module variable scope is isolated; values must be passed explicitly.

---

## Question No. 94

**Question Type:** Single Choice

**Question:** A resource block is shown in the Exhibit section of this page. How would you reference the attribute name of this resource in HCL?

**Options:**
- A) resource.kubernetes_namespace.example.name
- B) kubernetes_namespace.example.name
- C) data.kubernetes.namespace.name
- D) kubernetes_namespace.test.name

**Correct Answer:** B

**Explanation:** Resource attributes in HCL are referenced with the pattern `resource_type.resource_name.attribute`. For a resource of type `kubernetes_namespace` named `example`, the correct reference is `kubernetes_namespace.example.name`.

**Explanation:**

Option A is incorrect: HCL references do not start with the literal `resource.` prefix.

Option C is incorrect: That is not the correct syntax or naming for a data source reference.

Option D is incorrect: The resource name must match the declared local name, which is `example` in the exhibit.

---

## Question No. 95

**Question Type:** Single Choice

**Question:** terraform apply is failing with the following error. What next step should you take to determine the root cause of the problem?

```yaml
Error loading state: AccessDenied: Access Denied
status code: 403, request id: 288766CE5CCA24A0, host id: web.example.com
```

**Options:**
- A) Run terraform login to reauthenticate with the provider.
- B) Set TF_LOG=DEBUG.
- C) Review /var/log/terraform.log for error messages.
- D) Review syslog for Terraform error messages.

**Correct Answer:** B

**Explanation:** Setting `TF_LOG=DEBUG` enables detailed Terraform diagnostic logging, which is the standard next step when you need more context to diagnose authentication, backend, or provider access problems.

**Explanation:**

Option A is incorrect: `terraform login` is for Terraform Cloud/HCP Terraform credentials, not a general fix for all provider or backend 403 errors.

Option C is incorrect: Terraform does not automatically write logs to `/var/log/terraform.log` unless explicitly configured.

Option D is incorrect: Terraform does not log to syslog by default.

---

## Question No. 96

**Question Type:** Single Choice

**Question:** A senior admin accidentally deleted some of your cloud instances. What will Terraform do when you run terraform apply?

**Options:**
- A) Tear down the entire workspace's infrastructure and rebuild it.
- B) Build a completely brand new set of infrastructure.
- C) Rebuild only the instances that were deleted.
- D) Stop and generate an error message about the missing instances.

**Correct Answer:** C

**Explanation:** After refreshing state, Terraform detects that the missing instances no longer exist and plans to recreate only the resources needed to bring actual infrastructure back in line with the configuration.

**Explanation:**

Option A is incorrect: Terraform does not rebuild everything unless the plan requires it.

Option B is incorrect: Terraform reconciles drift against the existing state; it does not create an entirely separate environment by default.

Option D is incorrect: Missing managed resources are normally treated as drift to correct, not as a fatal condition.

---

## Question No. 97

**Question Type:** Single Choice

**Question:** Terraform installs its providers during which phase?

**Options:**
- A) Plan
- B) Init
- C) Refresh
- D) All of the above

**Correct Answer:** B

**Explanation:** Provider plugins are downloaded and installed during `terraform init`, which prepares the working directory before planning or applying.

**Explanation:**

Option A is incorrect: `terraform plan` uses already installed providers.

Option C is incorrect: Refresh operations rely on installed providers but do not install them.

Option D is incorrect: Provider installation is specifically part of initialization.

---

## Question No. 98

**Question Type:** Single Choice

**Question:** terraform destroy is the only way to remove infrastructure.

**Options:**
- A) True
- B) False

**Correct Answer:** B

**Explanation:** Infrastructure can also be removed by changing configuration and running `terraform apply`, by deleting resources manually outside Terraform, or by using targeted operations. `terraform destroy` is only one way to remove managed resources.

**Explanation:**

Option A is incorrect: Terraform-managed infrastructure can be removed through other workflows besides a full destroy.

---

## Question No. 99

**Question Type:** Single Choice

**Question:** You created infrastructure outside the Terraform workflow that you now want to manage using Terraform. Which command brings the infrastructure into Terraform state?

**Options:**
- A) terraform get
- B) terraform refresh
- C) terraform import
- D) terraform init

**Correct Answer:** C

**Explanation:** `terraform import` associates an existing external resource with a Terraform resource address and records it in state so Terraform can manage it.

**Explanation:**

Option A is incorrect: `terraform get` retrieves modules.

Option B is incorrect: `terraform refresh` updates state for resources Terraform is already tracking.

Option D is incorrect: `terraform init` initializes the working directory and installs dependencies.

---

## Question No. 100

**Question Type:** Single Choice

**Question:** terraform init creates an example main.tf file in the current directory.

**Options:**
- A) True
- B) False

**Correct Answer:** B

**Explanation:** `terraform init` initializes an existing configuration directory. It does not scaffold sample Terraform files or create an example `main.tf` automatically.

**Explanation:**

Option A is incorrect: Terraform expects configuration files to already exist or be created by the user or another scaffolding tool.

---

## Question No. 101

**Question Type:** Single Choice

**Question:** Which statement describes a goal of Infrastructure as Code (IaC)?

**Options:**
- A) A pipeline process to test and deliver software.
- B) Write once, run anywhere.
- C) The programmatic configuration of resources.
- D) Defining a vendor-agnostic API.

**Correct Answer:** C

**Explanation:** A primary IaC goal is to define, provision, and manage infrastructure through code in a repeatable and auditable way.

**Explanation:**

Option A is incorrect: That describes CI/CD pipeline practices, not IaC's core goal.

Option B is incorrect: This is a portability slogan, not the central IaC objective.

Option D is incorrect: IaC tools can still be provider-specific and do not require defining a vendor-agnostic API.

---

## Question No. 102

**Question Type:** Single Choice

**Question:** You have a simple Terraform configuration containing one virtual machine (VM) in a cloud provider. You run terraform apply and the VM is created successfully. What will happen if you terraform apply again immediately afterward without changing any Terraform code?

**Options:**
- A) Terraform will terminate and recreate the VM.
- B) Terraform will create another duplicate VM.
- C) Terraform will apply the VM to the state file.
- D) Nothing

**Correct Answer:** D

**Explanation:** Terraform is declarative and idempotent. If configuration and infrastructure already match, a second `terraform apply` results in no changes.

**Explanation:**

Option A is incorrect: Terraform will not recreate a resource unless a change requires replacement.

Option B is incorrect: Terraform does not duplicate managed resources when no configuration change exists.

Option C is incorrect: The resource was already tracked in state after the first apply.

---

## Question No. 103

**Question Type:** Single Choice

**Question:** A resource block is shown in the Exhibit space of this page. What is the Terraform resource name of the resource block?

**Options:**
- A) test
- B) google
- C) compute_instance
- D) main

**Correct Answer:** A

**Explanation:** In a resource declaration like `resource "google_compute_instance" "test" { ... }`, the resource name is the second label (`test`).

**Explanation:**

Option B is incorrect: `google` is part of the provider/type namespace, not the resource's local name.

Option C is incorrect: `compute_instance` is part of the resource type, not the resource name.

Option D is incorrect: `main` is not the declared local name in the exhibit pattern.

---

## Question No. 104

**Question Type:** Single Choice

**Question:** You use a cloud provider account that is shared with other team members. You previously used Terraform to create a load balancer that listens on port 80. After application changes, you updated the Terraform code to change the port to 443.

You run terraform plan and see that the execution plan shows the port changing from 80 to 443 like you intended and step away to grab some coffee.

In the meantime, another team member manually changes the load balancer port to 443 through the cloud provider console before you get back to your desk.

What will happen when you run terraform apply upon returning to your desk?

**Options:**
- A) Terraform will recreate the load balancer.
- B) Terraform will fail with an error because the state file is no longer accurate.
- C) Terraform will change the load balancer port to 80, and then change it back to 443.
- D) Terraform will not make any changes to the load balancer and will update the state file to reflect the manual change.

**Correct Answer:** D

**Explanation:** During apply, Terraform refreshes state before making changes. Since the real resource already matches desired configuration (443), no action is required; state is updated to current reality.

**Explanation:**

Option A is incorrect: Recreation is unnecessary when the current and desired settings already match.

Option B is incorrect: Drift is handled through refresh, not an automatic failure in this scenario.

Option C is incorrect: Terraform does not perform a needless flip-flop when desired state is already present.

---

## Question No. 105

**Question Type:** Single Choice

**Question:** Terraform variables and outputs that set the description argument will store that description in the state file.

**Options:**
- A) True
- B) False

**Correct Answer:** B

**Explanation:** The `description` argument is documentation metadata in configuration. Terraform state stores resource instances and output values, not variable/output descriptions as managed state data.

**Explanation:**

Option A is incorrect: Descriptions help humans understand configuration, but are not stored as stateful infrastructure values.

---

## Question No. 106

**Question Type:** Single Choice

**Question:** terraform validate uses provider APIs to verify your infrastructure settings.

**Options:**
- A) True
- B) False

**Correct Answer:** B

**Explanation:** `terraform validate` performs static checks on configuration syntax and internal consistency. It does not call provider APIs or inspect live infrastructure.

**Explanation:**

Option A is incorrect: Provider/API interaction happens during plan/apply/refresh flows, not validate.

---

## Question No. 107

**Question Type:** Single Choice

**Question:** Before you can use a new backend or HCP Terraform/Terraform Cloud integration, you must first execute terraform init.

**Options:**
- A) True
- B) False

**Correct Answer:** A

**Explanation:** Backend and cloud integration setup is initialized through `terraform init`, which configures backend settings and prepares the working directory.

**Explanation:**

Option B is incorrect: Terraform requires initialization before using a new backend configuration.

---

## Question No. 108

**Question Type:** Single Choice

**Question:** Using the terraform state rm command against a resource will destroy it.

**Options:**
- A) True
- B) False

**Correct Answer:** B

**Explanation:** `terraform state rm` removes the resource binding from state only. It does not destroy the actual remote infrastructure object.

**Explanation:**

Option A is incorrect: The command affects Terraform state tracking, not the underlying resource lifecycle.

---

## Question No. 109

**Question Type:** Single Choice

**Question:** Which of the following is not a way to trigger terraform destroy?

**Options:**
- A) Using the destroy command with auto-approve.
- B) Passing --destroy at the end of a plan request.
- C) Running terraform destroy from the correct directory and then typing yes when prompted in the CLI.

**Correct Answer:** B

**Explanation:** Destroy mode for planning is `terraform plan -destroy` (single hyphen flag style), and `terraform destroy` itself executes destruction. The presented `--destroy at the end of a plan request` wording is not the standard valid method.

**Explanation:**

Option A is incorrect: `terraform destroy -auto-approve` is a valid way to trigger destruction.

Option C is incorrect: Running `terraform destroy` and confirming is the standard interactive flow.

---

## Question No. 110

**Question Type:** Multiple Choice

**Question:** Which of these are features of HCP Terraform/Terraform Cloud? Pick the 2 correct responses below.

**Options:**
- A) Automated infrastructure deployment visualization.
- B) A web-based user interface (UI).
- C) Automatic backups of configuration and state.
- D) Remote state storage.

**Correct Answer:** B, D

**Explanation:** HCP Terraform provides a web UI for team workflows and managed remote state storage for collaboration and consistency.

**Explanation:**

Option A is incorrect: This is not a core named feature in the way presented.

Option C is incorrect: State versioning exists, but "automatic backups of configuration and state" is not the canonical feature pairing expected here.

---

## Question No. 111

**Question Type:** Single Choice

**Question:** Which command(s) adds existing resources in a public cloud into Terraform state?

**Options:**
- A) terraform init
- B) terraform plan
- C) terraform refresh
- D) terraform import
- E) All of these

**Correct Answer:** D

**Explanation:** `terraform import` is the command specifically designed to map existing infrastructure resources into Terraform state.

**Explanation:**

Option A is incorrect: `terraform init` initializes the working directory.

Option B is incorrect: `terraform plan` previews changes.

Option C is incorrect: `terraform refresh` updates state for resources already managed by state.

Option E is incorrect: Only one option in the list performs import into state.

---

## Question No. 112

**Question Type:** Single Choice

**Question:** In a HCP Terraform/Terraform Cloud workspace linked to a version control repository, speculative plan runs start automatically when you merge or commit changes to version control.

**Options:**
- A) True
- B) False

**Correct Answer:** A

**Explanation:** In VCS-connected workspaces, incoming code changes trigger runs automatically, including speculative planning behavior for proposed changes.

**Explanation:**

Option B is incorrect: Automatic run triggering is a core behavior of VCS-driven workflows.

---

## Question No. 113

**Question Type:** Single Choice

**Question:** What is the Terraform style convention for indenting a nesting level compared to the one above it?

**Options:**
- A) With two spaces.
- B) With four spaces.
- C) With three spaces.
- D) With a tab.

**Correct Answer:** A

**Explanation:** Terraform style conventions and formatter output use two spaces for each indentation level in HCL.

**Explanation:**

Option B is incorrect: Four spaces are not Terraform's default style convention.

Option C is incorrect: Three spaces are not used by Terraform formatting standards.

Option D is incorrect: Tabs are not the style convention produced by `terraform fmt`.

---

## Question No. 114

**Question Type:** Single Choice

**Question:** A module block is shown in the Exhibit space of this page. When you use a module block to reference a module from the Terraform Registry such as the one in the example, how do you specify version 1.0.0 of the module?

**Options:**
- A) Append ?ref=v1.0.0 argument to the source path.
- B) You cannot. Modules stored on the public Terraform Registry do not support versioning.
- C) Add a version = '1.0.0' attribute to the module block.
- D) Nothing. Modules stored on the public Terraform module Registry always default to version 1.0.0.

**Correct Answer:** C

**Explanation:** Registry modules are versioned via the `version` argument in the module block, e.g. `version = "1.0.0"`.

**Explanation:**

Option A is incorrect: `?ref=` syntax applies to VCS sources, not Terraform Registry modules.

Option B is incorrect: Registry modules support semantic versions.

Option D is incorrect: Registry modules do not default universally to 1.0.0.

---

## Question No. 115

**Question Type:** Single Choice

**Question:** When do you need to explicitly execute Terraform in refresh-only mode?

**Options:**
- A) Before every terraform plan.
- B) Before every terraform apply.
- C) Before every terraform import.
- D) None of the above.

**Correct Answer:** D

**Explanation:** Refresh-only mode is a specialized operation used when you intentionally want to sync state with real infrastructure without changing resources. It is not required before routine plan/apply/import workflows.

**Explanation:**

Option A is incorrect: `terraform plan` refreshes state by default.

Option B is incorrect: `terraform apply` also refreshes state by default before applying changes.

Option C is incorrect: Importing resources does not require a prior refresh-only run.

---

## Question No. 116

**Question Type:** Single Choice

**Question:** Which method for sharing Terraform modules fulfills the following criteria:

Keeps the module configurations confidential within your organization.

Supports Terraform's semantic version constraints.

Provides a browsable directory of your modules.

**Options:**
- A) A Git repository containing your modules.
- B) Public Terraform module registry.
- C) A subfolder within your workspace.
- D) HCP Terraform/Terraform Cloud private registry.

**Correct Answer:** D

**Explanation:** The HCP Terraform private registry provides private module publishing with semantic versioning and a browsable module catalog for organizations.

**Explanation:**

Option A is incorrect: A Git repo can host modules, but it does not natively provide the same private registry browsing/version workflow.

Option B is incorrect: Public registry is not confidential.

Option C is incorrect: A local subfolder is not a private registry with catalog/version management features.

---

## Question No. 117

**Question Type:** Single Choice

**Question:** What is the provider for the resource shown in the Exhibit?

```hcl
resource "aws_vpc" "main" {
  name = "test"
}
```

**Options:**
- A) VPC
- B) test
- C) main
- D) aws

**Correct Answer:** D

**Explanation:** In `aws_vpc`, the provider prefix is `aws` and the resource type is `vpc`. The provider is therefore AWS.

**Explanation:**

Option A is incorrect: VPC is the resource type portion, not the provider.

Option B is incorrect: `test` is a value assigned in the block.

Option C is incorrect: `main` is the local resource name.

---

## Question No. 118

**Question Type:** Single Choice

**Question:** Your root module contains a variable named num_servers. Which is the correct way to pass its value to a child module with an input named servers?

**Options:**
- A) servers = num_servers
- B) servers = var(num_servers)
- C) servers = var.num_servers
- D) servers = ${var.num_servers}

**Correct Answer:** C

**Explanation:** In modern HCL expressions, root module variables are referenced as `var.<name>`, so the correct assignment is `servers = var.num_servers`.

**Explanation:**

Option A is incorrect: Unqualified `num_servers` is not the proper variable reference syntax.

Option B is incorrect: `var()` function syntax does not exist in Terraform.

Option D is incorrect: Interpolation-only syntax is legacy and unnecessary in current HCL expression contexts.

---

## Question No. 119

**Question Type:** Single Choice

**Question:** When you include a module block in your configuration that references a module from the Terraform Registry, the 'version' attribute is required.

**Options:**
- A) True
- B) False

**Correct Answer:** B

**Explanation:** The `version` argument is optional for registry modules, though pinning versions is strongly recommended to avoid unexpected upgrades.

**Explanation:**

Option A is incorrect: Terraform can resolve a registry module without an explicit version constraint.

---

## Question No. 120

**Question Type:** Multiple Choice

**Question:** You want to use API tokens and other secrets within your team's Terraform workspaces. Where does HashiCorp recommend you store these sensitive values? (Pick the 3 correct responses)

**Options:**
- A) In an HCP Terraform/Terraform Cloud variable, with the sensitive option checked.
- B) In HashiCorp Vault.
- C) In a terraform.tfvars file, securely managed and shared with your team.
- D) In a terraform.tfvars file, checked into your version control system.
- E) In a plaintext document on a shared drive.

**Correct Answer:** A, B, C

**Explanation:** Recommended secure approaches include sensitive workspace variables and secret managers like Vault. If tfvars is used, it must be handled securely outside version control with strong access controls.

**Explanation:**

Option D is incorrect: Sensitive values should not be committed to version control.

Option E is incorrect: Plaintext shared documents are not an acceptable secret management practice.

---

## Question No. 121

**Question Type:** Single Choice

**Question:** Terraform configuration can only call modules from the public registry.

**Options:**
- A) True
- B) False

**Correct Answer:** B

**Explanation:** Terraform can source modules from many locations: local paths, VCS repositories, private registries, and the public Terraform Registry.

**Explanation:**

Option A is incorrect: Public registry is only one of several supported module sources.

---

## Question No. 122

**Question Type:** Multiple Choice

**Question:** You used Terraform to create an ephemeral development environment in the cloud and are now ready to destroy all the infrastructure described by your Terraform configuration. To be safe, you would like to first see all the infrastructure that Terraform will delete.

Which command should you use to show all the resources that will be deleted? (Pick the 2 correct responses)

**Options:**
- A) Run `terraform destroy`. This will output all the resources that will be deleted before prompting for approval.
- B) Run `terraform plan -destroy`.
- C) Run `terraform state rm *`.

**Correct Answer:** A, B

**Explanation:** Both `terraform destroy` (interactive) and `terraform plan -destroy` show the planned deletions before changes are finalized.

**Explanation:**

Option C is incorrect: `terraform state rm` only removes resources from Terraform state; it does not destroy infrastructure.

---

## Question No. 123

**Question Type:** Multiple Choice

**Question:** Which of these are benefits of using Sentinel with HCP Terraform/Terraform Cloud? (Pick the 3 correct responses)

**Options:**
- A) You can enforce a list of approved AWS AMIs.
- B) Sentinel policies can be written in HashiCorp Configuration Language (HCL).
- C) You can check out and check in cloud access keys.
- D) Policy-as-code can enforce security best practices.

**Correct Answer:** A, B, D

**Explanation:** Sentinel enables policy-as-code governance for runs, including controls such as allowlists and security guardrails.

**Explanation:**

Option C is incorrect: Key checkout/check-in is secret management functionality, not a Sentinel capability.

---

## Question No. 124

**Question Type:** Single Choice

**Question:** Which of these statements about HCP Terraform/Terraform Cloud workspaces is false?

**Options:**
- A) They can securely store cloud credentials.
- B) They have role-based access controls.
- C) Plans and applies can be triggered via version control system integrations.
- D) You must use the CLI to switch between workspaces.

**Correct Answer:** D

**Explanation:** HCP Terraform provides a web UI and API for workspace selection and management; CLI-only switching is not required.

**Explanation:**

Option A is incorrect: Secure credential handling is supported.

Option B is incorrect: RBAC is supported.

Option C is incorrect: VCS-triggered runs are a core capability.

---

## Question No. 125

**Question Type:** Multiple Choice

**Question:** Which of these actions are forbidden when the Terraform state file is locked? (Pick the 3 correct responses)

**Options:**
- A) terraform apply
- B) terraform state list
- C) terraform destroy
- D) terraform fmt

**Correct Answer:** A, B, C

**Explanation:** When state is locked, state-dependent operations are blocked to prevent concurrent modification risks.

**Explanation:**

Option D is incorrect: `terraform fmt` only formats files and does not require state access.

---

## Question No. 126

**Question Type:** Multiple Choice

**Question:** Which of these are features of HCP Terraform/Terraform Cloud? (Pick the 2 correct responses)

**Options:**
- A) Automatic backups of configuration and state.
- B) Remote state storage.
- C) Automated infrastructure deployment visualization.
- D) A web-based user interface (UI).

**Correct Answer:** B, D

**Explanation:** HCP Terraform's core features include managed remote state and a web UI for runs, governance, and collaboration.

**Explanation:**

Option A is incorrect: Not expressed as a core standalone feature in this context.

Option C is incorrect: This phrasing is not a canonical feature in the expected answer set.

---

## Question No. 127

**Question Type:** Single Choice

**Question:** Terraform encrypts sensitive values stored in your state file.

**Options:**
- A) True
- B) False

**Correct Answer:** B

**Explanation:** Marking a value as `sensitive` redacts it in CLI/UI output, but it can still exist in state. Encryption depends on backend/storage configuration.

**Explanation:**

Option A is incorrect: Sensitivity masking is not equivalent to automatic encryption of state contents.

---

## Question No. 128

**Question Type:** Single Choice

**Question:** What is the provider for this resource?

```hcl
resource "aws_vpc" "main" {
  name = "test"
}
```

**Options:**
- A) Vpc
- B) Test
- C) Main
- D) aws

**Correct Answer:** D

**Explanation:** In `aws_vpc`, `aws` is the provider prefix and `vpc` is the resource type.

**Explanation:**

Option A is incorrect: VPC is the resource type segment.

Option B is incorrect: `test` is a value used in the block.

Option C is incorrect: `main` is the local resource name.

---

## Question No. 129

**Question Type:** Single Choice

**Question:** All modules published on the official Terraform Module Registry have been verified by HashiCorp.

**Options:**
- A) True
- B) False

**Correct Answer:** B

**Explanation:** Not all public registry modules are HashiCorp-verified; verification is indicated separately for specific publishers/modules.

**Explanation:**

Option A is incorrect: Verification is not universal across every published module.

---

## Question No. 130

**Question Type:** Single Choice

**Question:** You have a list of numbers that represents the number of free CPU cores on each virtual cluster: numcpus = [18, 3, 7, 11, 2]

What Terraform function could you use to select the largest number from the list?

**Options:**
- A) top(numcpus)
- B) max(numcpus)
- C) ceil(numcpus)
- D) hight[numcpus]

**Correct Answer:** B

**Explanation:** `max(...)` returns the greatest numeric value among the provided arguments.

**Explanation:**

Option A is incorrect: `top` is not a Terraform function.

Option C is incorrect: `ceil` rounds a single number upward, not selects max from a list.

Option D is incorrect: This is not valid Terraform function syntax.

---

## Question No. 131

**Question Type:** Single Choice

**Question:** Multiple team members are collaborating on infrastructure using Terraform and want to format the Terraform code following standard Terraform-style convention.

How should they ensure the code satisfies conventions?

**Options:**
- A) Terraform automatically formats configuration on terraform apply
- B) Run terraform validate prior to executing terraform plan or terraform apply
- C) Use terraform fmt
- D) Replace all tabs with spaces

**Correct Answer:** C

**Explanation:** `terraform fmt` is the canonical formatter that enforces Terraform style conventions consistently.

**Explanation:**

Option A is incorrect: `terraform apply` does not auto-format files.

Option B is incorrect: `terraform validate` checks correctness, not style formatting.

Option D is incorrect: Manual replacements are incomplete and unreliable compared to `terraform fmt`.

---

## Question No. 132

**Question Type:** Single Choice

**Question:** How can terraform plan aid in the development process?

**Options:**
- A) Initializes your working directory containing your Terraform configuration files
- B) Validates your expectations against the execution plan without permanently modifying state
- C) Formats your Terraform configuration files
- D) Reconciles Terraform's state against deployed resources and permanently modifies state using the current status of deployed resources

**Correct Answer:** B

**Explanation:** `terraform plan` previews actions so you can validate intent before making infrastructure changes.

**Explanation:**

Option A is incorrect: Initialization is done by `terraform init`.

Option C is incorrect: Formatting is done by `terraform fmt`.

Option D is incorrect: This describes refresh-style state reconciliation behavior, not the purpose of plan.

---

## Question No. 133

**Question Type:** Single Choice

**Question:** You can access state stored with the local backend by using terraform_remote_state data source.

**Options:**
- A) True
- B) False

**Correct Answer:** A

**Explanation:** `terraform_remote_state` supports the local backend when configured with the appropriate local state path.

**Explanation:**

Option B is incorrect: Local backend state can be read this way when configured correctly.

---

## Question No. 134

**Question Type:** Single Choice

**Question:** All standard backend types support state locking, and remote operations like plan, apply, and destroy.

**Options:**
- A) True
- B) False

**Correct Answer:** B

**Explanation:** Backend capabilities differ. Not all backends support locking, and remote execution is specific to certain backends/workflows.

**Explanation:**

Option A is incorrect: Backend features are not uniform across all backend types.

---

## Question No. 135

**Question Type:** Single Choice

**Question:** A Terraform output that sets the 'sensitive' argument to true will not store that value in the state file.

**Options:**
- A) True
- B) False

**Correct Answer:** B

**Explanation:** Sensitive outputs are redacted in display, but their values can still be present in state.

**Explanation:**

Option A is incorrect: `sensitive = true` controls visibility, not omission from state storage.

---

## Question No. 136

**Question Type:** Single Choice

**Question:** You want to define multiple data disks as nested blocks inside the resource block for a virtual machine. What Terraform feature would help you define the blocks using the values in a variable?

**Options:**
- A) Local values
- B) Count arguments
- C) Collection functions
- D) Dynamic blocks

**Correct Answer:** D

**Explanation:** `dynamic` blocks are used to generate nested block structures from input collections.

**Explanation:**

Option A is incorrect: Locals can hold computed values but do not directly generate nested block instances.

Option B is incorrect: `count` applies to whole resources/modules, not arbitrary nested block generation.

Option C is incorrect: Functions transform data but do not declare repeated nested block syntax by themselves.

---

## Question No. 137

**Question Type:** Single Choice

**Question:** When does Terraform create the .terraform.lock.hcl file?

**Options:**
- A) After your first terraform plan
- B) After your first terraform apply
- C) After your first terraform init
- D) When you enable state locking

**Correct Answer:** C

**Explanation:** The dependency lock file is created/updated during `terraform init` when provider selections are resolved.

**Explanation:**

Option A is incorrect: Plan relies on already initialized provider selection.

Option B is incorrect: Apply is not the creation trigger for the lock file.

Option D is incorrect: State locking is unrelated to dependency lock file creation.

---

## Question No. 138

**Question Type:** Single Choice

**Question:** What is terraform plan -refresh-only intended to detect?

**Options:**
- A) Terraform configuration code changes
- B) Corrupt state files
- C) State file drift
- D) Empty state files

**Correct Answer:** C

**Explanation:** Refresh-only mode compares recorded state with real infrastructure to surface and reconcile drift.

**Explanation:**

Option A is incorrect: Code change detection is standard plan diff behavior, not the purpose of refresh-only mode.

Option B is incorrect: It is not a corruption scanner.

Option D is incorrect: It is not specifically intended for empty state detection.

---

## Question No. 139

**Question Type:** Multiple Choice

**Question:** Which of these are features of Terraform Cloud? Choose two correct answers.

**Options:**
- A) A web-based user interface (UI)
- B) Automated infrastructure deployment visualization
- C) Automatic backups
- D) Remote state storage

**Correct Answer:** A, D

**Explanation:** Terraform Cloud offers a web UI and managed remote state storage as core collaboration capabilities.

**Explanation:**

Option B is incorrect: Not a canonical feature name in this exam context.

Option C is incorrect: While state versions exist, this option is not the expected core pairing here.

---

## Question No. 140

**Question Type:** Single Choice

**Question:** What does terraform import do?

**Options:**
- A) Imports existing resources into the state file
- B) Imports all infrastructure from a given cloud provider
- C) Imports a new Terraform module
- D) Imports clean copies of tainted resources
- E) None of the above

**Correct Answer:** A

**Explanation:** `terraform import` maps an existing real resource to a Terraform address in state.

**Explanation:**

Option B is incorrect: Import targets specific resources, not all infrastructure.

Option C is incorrect: Module retrieval is done by `terraform init`.

Option D is incorrect: Taint/replace workflows are unrelated to import.

Option E is incorrect: Option A is correct.

---

## Question No. 141

**Question Type:** Single Choice

**Question:** Which Terraform command checks that your configuration syntax is correct?

**Options:**
- A) terraform validate
- B) terraform init
- C) terraform show
- D) terraform fmt

**Correct Answer:** A

**Explanation:** `terraform validate` performs syntax and internal consistency checks for configuration files.

**Explanation:**

Option B is incorrect: `init` initializes providers/modules/backend.

Option C is incorrect: `show` renders state/plan output.

Option D is incorrect: `fmt` formats style, not semantic validation.

---

## Question No. 142

**Question Type:** Single Choice

**Question:** terraform validate reports syntax check errors for which of the following?

**Options:**
- A) Code contains tabs for indentation instead of spaces
- B) There is a missing value for a variable
- C) The state file does not match the current infrastructure
- D) None of the above

**Correct Answer:** D

**Explanation:** `terraform validate` checks configuration structure and semantics, not indentation style, runtime variable assignment completeness, or infrastructure drift.

**Explanation:**

Option A is incorrect: Indentation style is formatter concern, not validate failure by itself.

Option B is incorrect: Missing runtime variable values are usually surfaced during plan/apply execution context.

Option C is incorrect: Drift is detected via refresh/plan against real infrastructure.

---

## Question No. 143

**Question Type:** Single Choice

**Question:** Infrastructure as Code (IaC) can be stored in a version control system along with application code.

**Options:**
- A) True
- B) False

**Correct Answer:** A

**Explanation:** Storing IaC in version control is a foundational best practice for collaboration, traceability, and change history.

**Explanation:**

Option B is incorrect: IaC is commonly and correctly managed in VCS repositories.

---

## Question No. 144

**Question Type:** Single Choice

**Question:** Where in your Terraform configuration do you specify a state backend?

**Options:**
- A) The resource block
- B) The data source block
- C) The terraform block
- D) The provider block

**Correct Answer:** C

**Explanation:** Backend configuration is declared in the top-level `terraform` block.

**Explanation:**

Option A is incorrect: Resource blocks define infrastructure objects.

Option B is incorrect: Data source blocks read existing data.

Option D is incorrect: Provider blocks configure provider authentication/behavior.

---

## Question No. 145

**Question Type:** Single Choice

**Question:** In a Terraform Cloud workspace linked to a version control repository, speculative plan runs start automatically when you merge or commit changes to version control.

**Options:**
- A) True
- B) False

**Correct Answer:** A

**Explanation:** VCS-connected Terraform Cloud workspaces automatically trigger runs from incoming repository changes.

**Explanation:**

Option B is incorrect: Automatic run triggering is expected behavior in this integration model.

---

## Question No. 146

**Question Type:** Single Choice

**Question:** Which of the following arguments are required when declaring a Terraform output?

**Options:**
- A) value
- B) description
- C) default
- D) sensitive

**Correct Answer:** A

**Explanation:** The only required argument in an output block is `value`.

**Explanation:**

Option B is incorrect: `description` is optional metadata.

Option C is incorrect: `default` is for variable blocks, not output blocks.

Option D is incorrect: `sensitive` is optional.

---

## Question No. 147

**Question Type:** Single Choice

**Question:** You're writing a Terraform configuration that needs to read input from a local file called id_rsa.pub . Which built-in Terraform function can you use to import the file's contents as a string?

**Options:**
- A) file('id_rsa.pub')
- B) templaTefil('id_rsa.pub')
- C) filebase64('id_rsa.pub')
- D) fileset<'id_rsa.pub')

**Correct Answer:** A

**Explanation:** `file("...")` returns file contents as a raw string.

**Explanation:**

Option B is incorrect: The function name/syntax is invalid.

Option C is incorrect: `filebase64` returns Base64-encoded content, not plain string text.

Option D is incorrect: `fileset` returns matching file paths for a pattern, not file content.

---

## Question No. 148

**Question Type:** Single Choice

**Question:** While attempting to deploy resources into your cloud provider using Terraform, you begin to see some odd behavior and experience slow responses. In order to troubleshoot you decide to turn on Terraform debugging. Which environment variables must be configured to make Terraform's logging more verbose?

**Options:**
- A) TF_LOG_PAIH
- B) TF_LOG
- C) TF_VAR_log_path
- D) TF_VAR_log_level

**Correct Answer:** B

**Explanation:** Terraform debug verbosity is controlled by the `TF_LOG` environment variable (for example `TRACE`, `DEBUG`, etc.).

**Explanation:**

Option A is incorrect: This is a misspelled/invalid variable.

Option C is incorrect: `TF_VAR_*` passes input variables, not Terraform logging controls.

Option D is incorrect: `TF_VAR_*` is not used to control Terraform internal log verbosity.

---

## Question No. 149

**Question Type:** Single Choice

**Question:** Before you can use a remote backend, you must first execute terra-form init.

**Options:**
- A) True
- B) False

**Correct Answer:** A

**Explanation:** Backend initialization and migration steps are handled via `terraform init`.

**Explanation:**

Option B is incorrect: Terraform requires initialization to configure and use backend settings.

---

## Question No. 150

**Question Type:** Single Choice

**Question:** Why would you use the -replace flag for terraform apply?

**Options:**
- A) You want Terraform to ignore a resource on the next apply
- B) You want Terraform to destroy all the infrastructure in your workspace
- C) You want to force Terraform to destroy a resource on the next apply
- D) You want to force Terraform to destroy and recreate a resource on the next apply

**Correct Answer:** D

**Explanation:** The `-replace` option forces replacement of a specific resource instance during apply.

**Explanation:**

Option A is incorrect: Ignoring resources is handled differently (for example lifecycle or state strategies).

Option B is incorrect: Full teardown is done with destroy workflows.

Option C is incorrect: Replacement means destroy then recreate, not destroy-only.

---

## Question No. 151

**Question Type:** Single Choice

**Question:** terraform plan updates your state file.

**Options:**
- A) True
- B) False

**Correct Answer:** B

**Explanation:** `terraform plan` previews intended changes and does not apply infrastructure modifications.

**Explanation:**

Option A is incorrect: Plan is for preview/validation, not execution of changes.

---

## Question No. 152

**Question Type:** Single Choice

**Question:** Define the purpose of state in Terraform.

**Options:**
- A) State maps real world resources to your configuration and keeps track of metadata
- B) State lets you enforce resource configurations that relate to compliance policies
- C) State stores variables and lets you quickly reuse existing code
- D) State codifies the dependencies of related resources

**Correct Answer:** A

**Explanation:** Terraform state is the mapping between configuration and real infrastructure, including metadata and resource IDs.

**Explanation:**

Option B is incorrect: Compliance policies are enforced by governance tools/policies, not by state itself.

Option C is incorrect: Variables are configuration inputs, not the purpose of state.

Option D is incorrect: Dependencies are derived from configuration references and graph analysis.

---

## Question No. 153

**Question Type:** Single Choice

**Question:** Which of these actions will prevent two Terraform runs from changing the same state file at the same time?

**Options:**
- A) Refresh the state after running Terraform
- B) Delete the state before running Terraform
- C) Configure state locking for your state backend
- D) Run Terraform with parallelism set to 1

**Correct Answer:** C

**Explanation:** State locking prevents concurrent operations from modifying the same state simultaneously.

**Explanation:**

Option A is incorrect: Refresh does not provide mutual exclusion.

Option B is incorrect: Deleting state is destructive and unrelated to concurrency control.

Option D is incorrect: Parallelism controls resource operations in one run, not cross-run locking.

---

## Question No. 154

**Question Type:** Single Choice

**Question:** Which type of block fetches or computes information for use elsewhere in a Terraform configuration?

**Options:**
- A) data
- B) local
- C) resource
- D) provider

**Correct Answer:** A

**Explanation:** `data` blocks fetch read-only information from providers for use in other expressions.

**Explanation:**

Option B is incorrect: Locals compute values but do not fetch external data.

Option C is incorrect: Resource blocks manage infrastructure objects.

Option D is incorrect: Provider blocks configure provider behavior/authentication.

---

## Question No. 155

**Question Type:** Single Choice

**Question:** Changing the Terraform backend from the default 'local' backend to a different one after performing your first terraform apply is:

**Options:**
- A) Optional
- B) Impossible
- C) Mandatory
- D) Discouraged

**Correct Answer:** A

**Explanation:** Backend migration is possible and optional; if you change backend, Terraform can migrate state with `terraform init`.

**Explanation:**

Option B is incorrect: It is possible to migrate backend/state.

Option C is incorrect: You are not required to change from local backend.

Option D is incorrect: It is a normal supported workflow.

---

## Question No. 156

**Question Type:** Single Choice

**Question:** Which of the following is not a valid source path for specifying a module?

**Options:**
- A) source = 'github.com/hashicorp/example'
- B) source = './module?version=v1.6.0'
- C) source = 'hashicorp/consul/aws'
- D) source = './module'

**Correct Answer:** B

**Explanation:** Version query parameters are not valid for local paths. Local sources use plain relative/absolute paths.

**Explanation:**

Option A is incorrect: GitHub VCS source syntax is valid.

Option C is incorrect: Registry source syntax is valid.

Option D is incorrect: Local relative source is valid.

---

## Question No. 157

**Question Type:** Multiple Choice

**Question:** What are some benefits of using Sentinel with Terraform Cloud/Terraform Cloud? Choose three correct answers.

**Options:**
- A) You can restrict specific resource configurations, such as disallowing the use of CIDR=0.0.0.0/0.
- B) You can check out and check in cloud access keys
- C) Sentinel Policies can be written in HashiCorp Configuration Language (HCL)
- D) Policy-as-code can enforce security best practices
- E) You can enforce a list of approved AWS AMIs

**Correct Answer:** A, D, E

**Explanation:** Sentinel is policy-as-code for governance and can enforce security constraints and allowlists.

**Explanation:**

Option B is incorrect: Key checkout/check-in is secret-management functionality, not Sentinel.

Option C is incorrect: Sentinel uses its own policy language, not HCL.

---

## Question No. 158

**Question Type:** Multiple Choice

**Question:** Which of the following are advantages of using infrastructure as code (IaC) instead of provisioning with a graphical user interface (GUI)? Choose two correct answers.

**Options:**
- A) Prevents manual modifications to your resources
- B) Lets you version, reuse, and share infrastructure configuration
- C) Secures your credentials
- D) Provisions the same resources at a lower cost
- E) Reduces risk of operator error

**Correct Answer:** B, E

**Explanation:** IaC improves repeatability, reusability, collaboration, and reduces manual human error.

**Explanation:**

Option A is incorrect: IaC cannot fully prevent manual out-of-band changes.

Option C is incorrect: Credential security depends on secret-handling approach, not IaC alone.

Option D is incorrect: IaC does not inherently change cloud pricing.

---

## Question No. 159

**Question Type:** Single Choice

**Question:** Which of the following is not true of Terraform providers?

**Options:**
- A) An individual person can write a Terraform Provider
- B) A community of users can maintain a provider
- C) HashiCorp maintains some providers
- D) Cloud providers and infrastructure vendors can write, maintain, or collaborate on Terraform providers
- E) providers
- F) None of the above

**Correct Answer:** F

**Explanation:** All substantive statements about provider authorship/maintenance are true.

**Explanation:**

Option A is incorrect: Individuals can create providers.

Option B is incorrect: Communities can maintain providers.

Option C is incorrect: HashiCorp maintains a subset of providers.

Option D is incorrect: Vendors commonly maintain or contribute providers.

---

## Question No. 160

**Question Type:** Single Choice

**Question:** The Terraform binary version and provider versions must match each other in a single configuration.

**Options:**
- A) True
- B) False

**Correct Answer:** B

**Explanation:** Terraform CLI and providers have separate versioning; provider constraints are declared independently.

**Explanation:**

Option A is incorrect: They do not need to be numerically matched version-to-version.

---

## Question No. 161

**Question Type:** Single Choice

**Question:** Which of these is true about Terraform's plugin-based architecture?

**Options:**
- A) Terraform can only source providers from the internet
- B) Every provider in a configuration has its own state file for its resources
- C) You can create a provider for your API if none exists
- D) All providers are part of the Terraform core binary

**Correct Answer:** C

**Explanation:** Terraform providers are plugins, and custom providers can be created for unsupported APIs.

**Explanation:**

Option A is incorrect: Providers can also be installed from local mirrors/private registries.

Option B is incorrect: State is per workspace/state, not per provider.

Option D is incorrect: Providers are external plugins, not all embedded in core.

---

## Question No. 162

**Question Type:** Single Choice

**Question:** Which of the following is not a benefit of adopting infrastructure as code?

**Options:**
- A) Versioning
- B) A Graphical User Interface
- C) Reusability of code
- D) Automation

**Correct Answer:** B

**Explanation:** IaC is code-driven automation, not a GUI-based approach.

**Explanation:**

Option A is incorrect: Versioning is a key IaC benefit.

Option C is incorrect: Reusability is a key IaC benefit.

Option D is incorrect: Automation is a key IaC benefit.

---

## Question No. 163

**Question Type:** Single Choice

**Question:** Which task does terraform init not perform?

**Options:**
- A) Validates all required variables are present
- B) Sources any modules and copies the configuration locally
- C) Connects to the backend
- D) Sources all providers used in the configuration and downloads them

**Correct Answer:** A

**Explanation:** `terraform init` sets up backend/modules/providers but does not validate all required runtime variable values.

**Explanation:**

Option B is incorrect: Module source initialization is part of init.

Option C is incorrect: Backend initialization is part of init.

Option D is incorrect: Provider installation is part of init.

---

## Question No. 164

**Question Type:** Single Choice

**Question:** Any user can publish modules to the public Terraform Module Registry.

**Options:**
- A) True
- B) False

**Correct Answer:** A

**Explanation:** Any user can publish public modules if requirements for source/repository integration are met.

**Explanation:**

Option B is incorrect: Publishing is not limited to HashiCorp-only authors.

---

## Question No. 165

**Question Type:** Single Choice

**Question:** Which of these commands makes your code more human readable?

**Options:**
- A) Terraform validate
- B) Terraform output
- C) Terraform show
- D) Terraform fmt

**Correct Answer:** D

**Explanation:** `terraform fmt` formats configuration into canonical style, improving readability.

**Explanation:**

Option A is incorrect: Validate checks configuration correctness, not formatting.

Option B is incorrect: Output prints values.

Option C is incorrect: Show renders state/plan details.

---

## Question No. 166

**Question Type:** Single Choice

**Question:** Terraform configuration (including any module references) can contain only one Terraform provider type.

**Options:**
- A) True
- B) False

**Correct Answer:** B

**Explanation:** A single configuration can use multiple providers and provider aliases.

**Explanation:**

Option A is incorrect: Terraform supports multi-provider configurations.

---

## Question No. 167

**Question Type:** Single Choice

**Question:** Which of the following module source paths does not specify a remote module?

**Options:**
- A) Source = "module/consul"
- B) Source = "github.com/micorp/example"
- C) Source = "git@github.com:hasicorp/example.git"
- D) Source = "hasicorp/consul/aws"

**Correct Answer:** A

**Explanation:** `module/consul` is interpreted as a local path-style reference, not an explicit remote module source.

**Explanation:**

Option B is incorrect: GitHub path indicates remote VCS source.

Option C is incorrect: Git SSH URL indicates remote source.

Option D is incorrect: Registry-style source indicates remote module.

---

## Question No. 168

**Question Type:** Single Choice

**Question:** How could you reference an attribute from the vsphere_datacenter data source for use with the datacenter_id argument within the vsphere_folder resource in the following configuration?

**Options:**
- A) data.vsphere_datacenter.DC.id
- B) vsphere_datacenter.dc.id
- C) data,dc,id
- D) data.vsphere_datacenter,dc

**Correct Answer:** A

**Explanation:** Data source references use `data.<type>.<name>.<attribute>` format.

**Explanation:**

Option B is incorrect: It omits the `data.` prefix.

Option C is incorrect: Comma-separated format is invalid syntax.

Option D is incorrect: Comma usage makes the reference invalid.

---

## Question No. 169

**Question Type:** Single Choice

**Question:** Terraform providers are part of the Terraform core binary.

**Options:**
- A) True
- B) False

**Correct Answer:** B

**Explanation:** Providers are external plugins downloaded separately from Terraform core.

**Explanation:**

Option A is incorrect: Core and providers are separate components.

---

## Question No. 170

**Question Type:** Single Choice

**Question:** HashiCorp Configuration Language (HCL) supports user-defined functions.

**Options:**
- A) True
- B) False

**Correct Answer:** B

**Explanation:** HCL provides built-in functions but does not support user-defined custom functions.

**Explanation:**

Option A is incorrect: User-defined function declaration is not a feature in Terraform/HCL.

---

## Question No. 171

**Question Type:** Single Choice

**Question:** A developer on your team is going to leaf down an existing deployment managed by Terraform and deploy a new one. However, there is a server resource named aws_instant.ubuntu[1] they would like to keep. What command should they use to tell Terraform to stop managing that specific resource?

**Options:**
- A) Terraform plan rm:aws_instance.ubuntu[1]
- B) Terraform state rm:aws_instance.ubuntu[1]
- C) Terraform apply rm:aws_instance.ubuntu[1]
- D) Terraform destory rm:aws_instance.ubuntu[1]

**Correct Answer:** B

**Explanation:** `terraform state rm <address>` removes a resource from state without destroying the real object.

**Explanation:**

Option A is incorrect: No such `plan rm` command exists.

Option C is incorrect: No such `apply rm` command exists.

Option D is incorrect: No such `destroy rm` command exists.

---

## Question No. 172

**Question Type:** Single Choice

**Question:** Which of the following is not a key principle of infrastructure as code?

**Options:**
- A) Self-describing infrastructure
- B) Idempotence
- C) Versioned infrastructure
- D) Golden images

**Correct Answer:** D

**Explanation:** Golden images are an infrastructure strategy, not a core IaC principle.

**Explanation:**

Option A is incorrect: Self-describing infrastructure aligns with IaC practices.

Option B is incorrect: Idempotence is a central IaC principle.

Option C is incorrect: Versioning is a central IaC principle.

---

## Question No. 173

**Question Type:** Single Choice

**Question:** Your risk management organization requires that new AWS S3 buckets must be private and encrypted at rest. How can Terraform Cloud automatically and proactively enforce this security control?

**Options:**
- A) Auditing cloud storage buckets with a vulnerability scanning tool
- B) By adding variables to each Terraform Cloud workspace to ensure these settings are always enabled
- C) With an S3 module with proper settings for buckets
- D) With a Sentinel policy, which runs before every apply

**Correct Answer:** D

**Explanation:** Sentinel policies can enforce mandatory controls in run workflows before apply.

**Explanation:**

Option A is incorrect: Auditing is detective, not preventive enforcement in the Terraform workflow.

Option B is incorrect: Variables alone do not enforce mandatory policy compliance.

Option C is incorrect: Modules help standardize, but policy enforcement is done by governance controls.

---

## Question No. 174

**Question Type:** Single Choice

**Question:** What is the name of the default file where Terraform stores the state?

**Options:**
- A) terraform.tfstate

**Correct Answer:** A

**Explanation:** Local backend default state file is named `terraform.tfstate`.

---

## Question No. 175

**Question Type:** Multiple Choice

**Question:** Which two steps are required to provision new infrastructure in the Terraform workflow? Choose two correct answers.

**Options:**
- A) Plan
- B) Import
- C) Validate
- D) Init
- E) apply

**Correct Answer:** D, E

**Explanation:** You must initialize first (`init`) and then execute creation (`apply`) to provision resources.

**Explanation:**

Option A is incorrect: Plan is highly recommended but not strictly required for provisioning.

Option B is incorrect: Import is for existing resources, not provisioning new ones.

Option C is incorrect: Validate is recommended but not required for execution.

---

## Question No. 176

**Question Type:** Single Choice

**Question:** You add a new provider to your configuration and immediately run terraform apply in the CD using the local backend. Why does the apply fail?

**Options:**
- A) The Terraform CD needs you to log into Terraform Cloud first
- B) Terraform requires you to manually run terraform plan first
- C) Terraform needs to install the necessary plugins first
- D) Terraform needs you to format your code according to best practices first

**Correct Answer:** C

**Explanation:** After adding a provider, Terraform must run initialization to install provider plugins before apply can succeed.

**Explanation:**

Option A is incorrect: Local backend does not require Terraform Cloud login for this case.

Option B is incorrect: Plan is optional for apply.

Option D is incorrect: Formatting is unrelated to provider plugin installation.

---

## Question No. 177

**Question Type:** Single Choice

**Question:** Which Terraform collection type should you use to store key/value pairs?

**Options:**
- A) Set
- B) Map
- C) Tuple
- D) list

**Correct Answer:** B

**Explanation:** `map` is the Terraform collection type for key/value associations.

**Explanation:**

Option A is incorrect: Set stores unique unordered values, not key/value pairs.

Option C is incorrect: Tuple is an ordered sequence of potentially mixed types.

Option D is incorrect: List is ordered values, no keys.

---

## Question No. 178

**Question Type:** Single Choice

**Question:** In Terraform HCL, an object type of object({name=string, age=number}) would match this value.

**Options:**
- A) Option A
- B) Option B
- C) Option C
- D) Option D

**Correct Answer:** B

**Explanation:** The valid match is the object where `name` is a quoted string and `age` is numeric.

**Explanation:**

Option A is incorrect: `age` is not numeric.

Option C is incorrect: `name` and `age` values are invalid for the declared types.

Option D is incorrect: `name` is not quoted as a string.

---

## Question No. 179

**Question Type:** Single Choice

**Question:** Which provider authentication method prevents credentials from being stored in the state file?

**Options:**
- A) Using environment variables
- B) Specifying the login credentials in the provider block
- C) Setting credentials as Terraform variables
- D) None of the above

**Correct Answer:** A

**Explanation:** Environment variables keep secrets out of static configuration files and are the preferred secure mechanism in many workflows.

**Explanation:**

Option B is incorrect: Hardcoding credentials in provider blocks is not recommended.

Option C is incorrect: Passing secrets as variables can still expose them depending on usage/state/output.

Option D is incorrect: A is a valid secure approach.

---

## Question No. 180

**Question Type:** Single Choice

**Question:** Terraform can only manage resource dependencies if you set them explicitly with the depends_on argument.

**Options:**
- A) True
- B) False

**Correct Answer:** B

**Explanation:** Terraform infers most dependencies automatically from expression references; `depends_on` is for explicit additional dependency control.

**Explanation:**

Option A is incorrect: Explicit `depends_on` is not required for all dependencies.

---

## Question No. 181

**Question Type:** Single Choice

**Question:** You should run terraform fmt to rewrite all Terraform configurations within the current working directory to conform to Terraform-style conventions.

**Options:**
- A) True
- B) False

**Correct Answer:** B

**Explanation:** `terraform fmt` formats the current directory by default; recursive formatting of subdirectories requires `-recursive`.

**Explanation:**

Option A is incorrect: The statement overstates default behavior without `-recursive`.

---

## Question No. 182

**Question Type:** Single Choice

**Question:** What value does the Terraform Cloud private registry provide over the public Terraform Module Registry?

**Options:**
- A) The ability to share modules publicly with any user of Terraform
- B) The ability to restrict modules to members of Terraform Cloud or Enterprise organizations
- C) The ability to tag modules by version or release
- D) The ability to share modules with public Terraform users and members of Terraform Cloud Organizations

**Correct Answer:** B

**Explanation:** Private registry allows organization-scoped access control for modules.

**Explanation:**

Option A is incorrect: That describes public sharing, not private-registry value.

Option C is incorrect: Versioning exists in both contexts.

Option D is incorrect: Private registry is not for unrestricted public sharing.

---

## Question No. 183

**Question Type:** Single Choice

**Question:** When should you run terraform init?

**Options:**
- A) Every time you run terraform apply
- B) Before you start coding a new Terraform project
- C) After you run terraform plan for the time in a new terraform project and before you run terraform apply
- D) After you start coding a new terraform project and before you run terraform plan for the first time.

**Correct Answer:** D

**Explanation:** Run `terraform init` after creating configuration files and before first plan/apply.

**Explanation:**

Option A is incorrect: Re-running init each apply is unnecessary unless init-related changes occur.

Option B is incorrect: Init requires an actual configuration directory context.

Option C is incorrect: Plan cannot run successfully before initialization.

---

## Question No. 184

**Question Type:** Single Choice

**Question:** You can configure Terraform to log to a file using the TF_LOG environment variable.

**Options:**
- A) True
- B) False

**Correct Answer:** B

**Explanation:** `TF_LOG` sets log verbosity; file output path is configured with `TF_LOG_PATH`.

**Explanation:**

Option A is incorrect: TF_LOG alone does not specify log file destination.

---

## Question No. 185

**Question Type:** Multiple Choice

**Question:** You have used Terraform to create an ephemeral development environment in the cloud and are now ready to destroy all the Infrastructure described by your Terraform configuration. To be safe, you would like to first see all the infrastructure that Terraform will delete.

Which command should you use to show all of the resources that will be deleted? Choose two correct answers.

**Options:**
- A) Run terraform state rm
- B) Run terraform show -destroy
- C) Run terraform destroy and it will first output all the resource that will be deleted before prompting for approval
- D) Run terraform plan -destroy

**Correct Answer:** C, D

**Explanation:** `terraform destroy` shows the delete plan before approval and `terraform plan -destroy` previews full deletion.

**Explanation:**

Option A is incorrect: `state rm` detaches resources from state, it does not destroy infrastructure.

Option B is incorrect: `terraform show -destroy` is not the standard workflow command for planning destroys.

---

## Question No. 186

**Question Type:** Single Choice

**Question:** Which configuration consistency errors does terraform validate report?

**Options:**
- A) Terraform module isn't the latest version
- B) Differences between local and remote state
- C) Declaring a resource identifier more than once
- D) A mix of spaces and tabs in configuration files

**Correct Answer:** C

**Explanation:** `terraform validate` catches configuration-level issues such as duplicate identifiers and invalid constructs.

**Explanation:**

Option A is incorrect: Validate does not enforce latest module versions.

Option B is incorrect: Drift/state differences are runtime concerns.

Option D is incorrect: Formatting style concerns are handled by `terraform fmt`.

---

## Question No. 187

**Question Type:** Single Choice

**Question:** You are writing a child Terraform module that provisions an AWS instance. You want to reference the IP address returned by the child module in the root configuration. You name the instance resource 'main'.

Which of these is the correct way to define the output value?

**Options:**
- A) Option A
- B) Option B
- C) Option C
- D) Option D

**Correct Answer:** N/A (options not visible in source image)

**Explanation:** The expected Terraform expression pattern is usually `value = aws_instance.main.<ip_attribute>` (for example `public_ip`), but the screenshot does not show actual option content.

---

## Question No. 188

**Question Type:** Single Choice

**Question:** Terraform configuration can only import modules from the public registry.

**Options:**
- A) True
- B) False

**Correct Answer:** B

**Explanation:** Modules can be sourced from local paths, VCS URLs, private registries, and public registry.

**Explanation:**

Option A is incorrect: Public registry is not the only source.

---

## Question No. 189

**Question Type:** Single Choice

**Question:** Which is the best way to specify a tag of v1.0.0 when referencing a module stored in Git (for example. Git::https://example.com/vpc.git)?

**Options:**
- A) Append pref=v1.0.0 argument to the source path
- B) Add version = "1.0.0" parameter to module block
- C) Nothing modules stored on GitHub always default to version 1.0.0

**Correct Answer:** A

**Explanation:** For VCS module sources, you pin revisions/tags using `?ref=` on the source URL.

**Explanation:**

Option B is incorrect: `version` argument is for registry modules, not generic Git URLs.

Option C is incorrect: Git sources do not default to `1.0.0`.

---

## Question No. 190

**Question Type:** Single Choice

**Question:** When should you use the force-unlock command?

**Options:**
- A) You have a high priority change
- B) Automatic unlocking failed
- C) apply failed due to a state lock
- D) You see a status message that you cannot acquire the lock

**Correct Answer:** D

**Explanation:** Use `force-unlock` only when a lock is stale and Terraform cannot acquire it.

**Explanation:**

Option A is incorrect: Priority does not justify bypassing lock safety.

Option B is incorrect: This can be related, but the actionable trigger is stale lock acquisition failure.

Option C is incorrect: Not all lock errors should be force-unlocked; verify stale-lock condition first.

---

## Question No. 191

**Question Type:** Single Choice

**Question:** Which of these statements about Terraform Cloud workspaces is false?

**Options:**
- A) They have role-based access controls
- B) You must use the CLI to switch between workspaces
- C) Plans and applies can be triggered via version control system integrations
- D) They can securely store cloud credentials

**Correct Answer:** B

**Explanation:** Workspace switching/management can be done in UI/API; CLI-only is false.

**Explanation:**

Option A is incorrect: RBAC is supported.

Option C is incorrect: VCS-triggered runs are supported.

Option D is incorrect: Secure credential storage is supported.

---

## Question No. 192

**Question Type:** Multiple Choice

**Question:** Which of these are secure options for storing secrets for connecting to a Terraform remote backend? Choose two correct answers.

**Options:**
- A) A variable file
- B) Defined in Environment variables
- C) Inside the backend block within the Terraform configuration
- D) Defined in a connection configuration outside of Terraform

**Correct Answer:** B, D

**Explanation:** Secure practice is keeping secrets out of committed Terraform config/state by using environment variables or external secure connection management.

**Explanation:**

Option A is incorrect: Variable files are often unsafe unless strongly protected and excluded from VCS.

Option C is incorrect: Hardcoding backend secrets in configuration is not secure.

---

## Question No. 193

**Question Type:** Multiple Choice

**Question:** Which are forbidden actions when the terraform state file is locked? Choose three correct answers.

**Options:**
- A) Terraform state list
- B) Terraform destroy
- C) Terraform validate
- D) Terraform validate
- E) Terraform fmt
- F) Terraform apply

**Correct Answer:** A, B, F

**Explanation:** Lock-sensitive operations that read/write managed resources/state are blocked while lock is held.

**Explanation:**

Option C is incorrect: Validate does not require backend state lock.

Option D is incorrect: Same reason as C.

Option E is incorrect: Fmt only changes local formatting.

---

## Question No. 194

**Question Type:** Single Choice

**Question:** Which of the following methods, used to provision resources into a public cloud, demonstrates the concept of infrastructure as code?

**Options:**
- A) curl commands manually run from a terminal
- B) A sequence of REST requests you pass to a public cloud API endpoint
- C) A script that contains a series of public cloud CLI commands
- D) A series of commands you enter into a public cloud console

**Correct Answer:** C

**Explanation:** Scripted, repeatable, versionable provisioning via code (such as CLI scripts) demonstrates IaC principles better than ad-hoc manual commands.

**Explanation:**

Option A is incorrect: Manual one-off commands are not robust IaC workflow.

Option B is incorrect: Could be automated, but this option is less directly framed as maintainable IaC in exam context.

Option D is incorrect: Manual console actions are not IaC.

---

## Question No. 195

**Question Type:** Single Choice

**Question:** Which of the following should you put into the required_providers block?

**Options:**
- A) version >= 3.1
- B) version = ">= 3.1"
- C) version ~> 3.1

**Correct Answer:** B

**Explanation:** Provider version constraints in `required_providers` use quoted string syntax like `version = ">= 3.1"`.

**Explanation:**

Option A is incorrect: Missing assignment/quoted constraint expression format.

Option C is incorrect: Missing `=` and quotes in shown form.

---

## Question No. 196

**Question Type:** Multiple Choice

**Question:** When using Terraform to deploy resources into Azure, which scenarios are true regarding state files? (Choose two.)

**Options:**
- A) When you change a Terraform-managed resource via the Azure Cloud Console, Terraform updates the state file to reflect the change during the next plan or apply
- B) Changing resources via the Azure Cloud Console records the change in the current state file
- C) When you change a resource via the Azure Cloud Console, Terraform records the changes in a new state file
- D) Changing resources via the Azure Cloud Console does not update current state file

**Correct Answer:** A, D

**Explanation:** Out-of-band console changes do not immediately update Terraform state; state is reconciled on subsequent refresh/plan/apply.

**Explanation:**

Option B is incorrect: Console actions do not directly write Terraform state.

Option C is incorrect: Terraform does not create a new state file for this.

---

## Question No. 197

**Question Type:** Single Choice

**Question:** Which option cannot be used to keep secrets out of Terraform configuration files?

**Options:**
- A) A Terraform provider
- B) Environment variables
- C) A -var flag
- D) secure string

**Correct Answer:** D

**Explanation:** `secure string` is not a Terraform mechanism for secret injection/handling.

**Explanation:**

Option A is incorrect: Providers can support external auth mechanisms.

Option B is incorrect: Environment variables are a common secure pattern.

Option C is incorrect: Runtime `-var` can keep secrets out of static files.

---

## Question No. 198

**Question Type:** Single Choice

**Question:** If you manually destroy infrastructure, what is the best practice reflecting this change in Terraform?

**Options:**
- A) Run terraform refresh
- B) It will happen automatically
- C) Manually update the state file
- D) Run terraform import

**Correct Answer:** A

**Explanation:** Refreshing/replanning reconciles state with real infrastructure after out-of-band changes.

**Explanation:**

Option B is incorrect: State does not update instantly without Terraform operations.

Option C is incorrect: Manual state edits are risky and discouraged.

Option D is incorrect: Import is for adding existing resources into state.

---

## Question No. 199

**Question Type:** Single Choice

**Question:** Which of the following commands would you use to access all of the attributes and details of a resource managed by Terraform?

**Options:**
- A) terraform state list 'provider_type.name'
- B) terraform state show 'provider_type.name'
- C) terraform get 'provider_type.name'
- D) terraform state list

**Correct Answer:** B

**Explanation:** `terraform state show <address>` prints detailed state attributes for one managed resource.

**Explanation:**

Option A is incorrect: List only enumerates addresses.

Option C is incorrect: Get is module retrieval, not state inspection.

Option D is incorrect: List without address still only returns resource addresses.

---

## Question No. 200

**Question Type:** Single Choice

**Question:** You are working on some new application features and you want to spin up a copy of your production deployment to perform some quick tests. In order to avoid having to configure a new state backend, what open source Terraform feature would allow you create multiple states but still be associated with your current code?

**Options:**
- A) Terraform data sources
- B) Terraform local values
- C) Terraform modules
- D) Terraform workspaces
- E) None of the above

**Correct Answer:** D

**Explanation:** Workspaces allow multiple state instances for the same configuration.

**Explanation:**

Option A is incorrect: Data sources read existing infrastructure data.

Option B is incorrect: Locals are computed expressions within one configuration.

Option C is incorrect: Modules organize/reuse code but do not create isolated states by themselves.

Option E is incorrect: Workspaces are exactly designed for this use case.

---

## Question No. 201

**Question Type:** Multiple Choice

**Question:** Which of the following does terraform apply change after you approve the execution plan? (Choose two.)

**Options:**
- A) Cloud infrastructure
- B) The .terraform directory
- C) The execution plan
- D) State file
- E) Terraform code

**Correct Answer:** A, D

**Explanation:** `terraform apply` changes real infrastructure and updates state to reflect resulting resource reality.

---

## Question No. 202

**Question Type:** Single Choice

**Question:** One remote backend configuration always maps to a single remote workspace.

**Options:**
- A) True
- B) False

**Correct Answer:** B

**Explanation:** A remote backend can support multiple workspaces for different environments or configurations.

---

## Question No. 203

**Question Type:** Single Choice

**Question:** You have multiple team members collaborating on infrastructure as code (IaC) using Terraform, and want to apply formatting standards for readability. How can you format Terraform HCL (HashiCorp Configuration Language) code according to standard Terraform style convention?

**Options:**
- A) Run the terraform fmt command during the code linting phase of your CI/CD process
- B) Designate one person in each team to review and format everyone's code
- C) Manually apply two spaces indentation and align equal sign '=' characters in every Terraform file (*.tf)
- D) Write a shell script to transform Terraform files using tools such as AWK, Python, and sed

**Correct Answer:** A

**Explanation:** `terraform fmt` is the standard tool for applying Terraform formatting conventions automatically and consistently.

---

## Question No. 204

**Question Type:** Single Choice

**Question:** A provider configuration block is required in every Terraform configuration.

**Options:**
- A) True
- B) False

**Correct Answer:** B

**Explanation:** Provider blocks are optional if no resources requiring provider configuration are declared.

---

## Question No. 205

**Question Type:** Single Choice

**Question:** How is terraform import run?

**Options:**
- A) As a part of terraform init
- B) As a part of terraform plan
- C) As a part of terraform refresh
- D) By an explicit call
- E) All of the above

**Correct Answer:** D

**Explanation:** `terraform import` must be run explicitly as a separate command to import existing resources into state.

---

## Question No. 206

**Question Type:** Single Choice

**Question:** A terraform apply can not ________ infrastructure.

**Options:**
- A) change
- B) destroy
- C) provision
- D) import

**Correct Answer:** D

**Explanation:** `terraform apply` executes changes but does not import existing resources; import requires explicit `terraform import` command.

---

## Question No. 207

**Question Type:** Single Choice

**Question:** If a module declares a variable with a default, that variable must also be defined within the module.

**Options:**
- A) True
- B) False

**Correct Answer:** B

**Explanation:** A module variable with a default value is optional; it does not require explicit definition in module calls.

---

## Question No. 208

**Question Type:** Single Choice

**Question:** How would you output returned values from a child module in the Terraform CLI output?

**Options:**
- A) Declare the output in the root configuration
- B) Declare the output in the child module
- C) Declare the output in both the root and child module
- D) None of the above

**Correct Answer:** C

**Explanation:** Module outputs must be declared in the child module, and root-level outputs can reference them for CLI display.

---

## Question No. 209

**Question Type:** Single Choice

**Question:** You've used Terraform to deploy a virtual machine and a database. You want to replace this virtual machine instance with an identical one without affecting the database. What is the best way to achieve this using Terraform?

**Options:**
- A) Use the terraform state rm command to remove the VM from state file
- B) Use the terraform taint command targeting the VMs then run terraform plan and terraform apply
- C) Use the terraform apply command targeting the VM resources only
- D) Delete the Terraform VM resources from your Terraform code then run terraform plan and terraform apply

**Correct Answer:** B

**Explanation:** `terraform taint` marks a resource for destruction and recreation, allowing clean replacement without affecting other resources.

---

## Question No. 210

**Question Type:** Single Choice

**Question:** You have to initialize a Terraform backend before it can be configured.

**Options:**
- A) True
- B) False

**Correct Answer:** A

**Explanation:** `terraform init` must be executed to configure and initialize the backend before use.

---

## Question No. 211

**Question Type:** Single Choice

**Question:** What is a key benefit of the Terraform state file?

**Options:**
- A) A state file can schedule recurring infrastructure tasks
- B) A state file is a source of truth for resources provisioned with Terraform
- C) A state file is a source of truth for resources provisioned with a public cloud console
- D) A state file is the desired state expressed by the Terraform code files

**Correct Answer:** B

**Explanation:** State file maps Terraform code to actual provisioned resources, serving as the authoritative record.

---

## Question No. 212

**Question Type:** Single Choice

**Question:** You add a new resource to an existing Terraform configuration, but do not update the version constraint in the configuration. The existing and new resources use the same provider. The working contains a .terraform.lock.hcl file. How will Terraform choose which version of the provider to use?

**Options:**
- A) Terraform will use the version recorded in your lock file
- B) Terraform will use the latest version of the provider for the new resource and the version recorded in the lock file to manage existing resources
- C) Terraform will check your state file to determine the provider version to use
- D) Terraform will use the latest version of the provider available at the time you provision your new resource

**Correct Answer:** A

**Explanation:** The lock file ensures consistent provider versions across all resources; Terraform uses the locked version for both existing and new resources.

---

## Question No. 213

**Question Type:** Single Choice

**Question:** When using a remote backend or terraform Cloud integration, where does Terraform save resource state?

**Options:**
- A) In an environment variable
- B) On the disk
- C) In the remote backend or Terraform Cloud
- D) In memory

**Correct Answer:** C

**Explanation:** Remote backends and Terraform Cloud manage state in their own storage, not locally.

---

## Question No. 214

**Question Type:** Single Choice

**Question:** If a DevOps team adopts AWS CloudFormation as their standardized method for provisioning public cloud resources, which of the following scenarios poses a challenge for this team?

**Options:**
- A) The team is asked to manage a new application stack built on AWS-native services
- B) The organization decides to expand into Azure wishes to deploy new infrastructure
- C) The team is asked to build a reusable code based that can deploy resources into any AWS region
- D) The DevOps team is tasked with automating a manual, web console-based provisioning.

**Correct Answer:** B

**Explanation:** CloudFormation is AWS-specific; multi-cloud scenarios (e.g., expanding to Azure) require different IaC tools or approaches.

---

## Question No. 215

**Question Type:** Single Choice

**Question:** Which command lets you experiment with terraform expressions?

**Options:**
- A) Terraform console
- B) Terraform validate
- C) Terraform env
- D) Terraform test

**Correct Answer:** A

**Explanation:** `terraform console` provides an interactive REPL for evaluating and testing Terraform expressions.

---

## Question No. 216

**Question Type:** Single Choice

**Question:** Select the command that doesn't cause Terraform to refresh its state.

**Options:**
- A) Terraform destroy
- B) Terraform apply
- C) Terraform plan
- D) Terraform state list

**Correct Answer:** D

**Explanation:** `terraform state list` is a read-only operation that does not query remote state; it does not trigger refresh.

---

## Question No. 217

**Question Type:** Single Choice

**Question:** Where can Terraform not load a provider from?

**Options:**
- A) Plugins directory
- B) Provider plugin cache
- C) Official HashiCorp Distribution on releases.hashicorp.com
- D) Source code

**Correct Answer:** D

**Explanation:** Terraform loads compiled provider binaries, not source code; source code must be compiled first.

---

## Question No. 218

**Question Type:** Single Choice

**Question:** Where does the Terraform local backend store its state?

**Options:**
- A) In the terraform file
- B) In the /tmp directory
- C) In the terraform.tfstate file
- D) In the user's terraform.state file

**Correct Answer:** C

**Explanation:** Local backend stores state in `terraform.tfstate` file in the working directory.

---

## Question No. 219

**Question Type:** Single Choice

**Question:** You are using a networking module in your Terraform configuration with the name label my-network. In your main configuration you have the following code: When you run terraform validate, you get an error. What must you do to successfully retrieve this value from your networking module?

**Options:**
- A) Change the reference value to my-network.outputs.vnet_id
- B) Define the attribute vnet_id as a variable in the networking module
- C) Define the attribute vnet_id as an output in the networking module
- D) Change the reference value module.my.network.outputs.vnet_id

**Correct Answer:** C

**Explanation:** Module outputs must be declared in the child module before they can be referenced in the root configuration.

---

## Question No. 220

**Question Type:** Single Choice

**Question:** What type of block is used to construct a collection of nested configuration blocks?

**Options:**
- A) Dynamic
- B) For_each
- C) Nesting
- D) repeated

**Correct Answer:** A

**Explanation:** `dynamic` blocks generate nested blocks dynamically based on input values or collections.

---

## Question No. 221

**Question Type:** Single Choice

**Question:** You must initialize your working directory before running terraform validate.

**Options:**
- A) True
- B) False

**Correct Answer:** B

**Explanation:** `terraform validate` can run without initialization; it only checks syntax and configuration structure.

---

## Question No. 222

**Question Type:** Single Choice

**Question:** A module can always refer to all variables declared in its parent module.

**Options:**
- A) True
- B) False

**Correct Answer:** B

**Explanation:** Modules have encapsulation; child modules cannot automatically access parent module variables unless explicitly passed as module arguments.

---

## Question No. 223

**Question Type:** Single Choice

**Question:** Which of the following is not a valid Terraform collection type?

**Options:**
- A) Tree
- B) Map
- C) List
- D) set

**Correct Answer:** A

**Explanation:** Terraform collection types are list, map, set, and tuple. Tree is not a valid collection type.

---

## Question No. 224

**Question Type:** Single Choice

**Question:** You want to know from which paths Terraform is loading providers referenced in your Terraform configuration. You need to enable additional logging messages to find this out. Which of the following would achieve this?

**Options:**
- A) Set verbose for each provider in your Terraform configuration
- B) Set the environment variable TF_LOG_TRACE
- C) Set the environment variable TF_LOG_PATH
- D) Set the environment variable TF_log_TRACE

**Correct Answer:** C

**Explanation:** `TF_LOG_PATH` environment variable enables logging that shows provider loading paths and other diagnostic information.

---

## Question No. 225

**Question Type:** Single Choice

**Question:** What Terraform command always causes a state file to be updated with changes that might have been made outside of Terraform?

**Options:**
- A) Terraform plan --refresh-only
- B) Terraform show --json
- C) Terraform apply --lock-false
- D) Terraform plan target-state

**Correct Answer:** A

**Explanation:** `terraform plan --refresh-only` explicitly queries remote resources and updates state without modifying infrastructure.

---

## Question No. 226

**Question Type:** Single Choice

**Question:** How does Terraform determine dependencies between resources?

**Options:**
- A) Terraform requires resource dependencies to be defined as modules and sourced in order
- B) Terraform automatically builds a resource graph based on resources provisioners, special meta-parameters, and the state file (if present)
- C) Terraform requires resources in a configuration to be listed in the order they will be created to determine dependencies
- D) Terraform requires all dependencies between resources to be specified using the depends_on parameter

**Correct Answer:** B

**Explanation:** Terraform analyzes resource references and meta-arguments to automatically determine the dependency graph without explicit ordering.

---

## Question No. 227

**Question Type:** Single Choice

**Question:** The __________ determines how Terraform creates, updates, or delete resources.

**Options:**
- A) Terraform configuration
- B) Terraform provisioner
- C) Terraform provider
- D) Terraform core

**Correct Answer:** C

**Explanation:** Providers implement resource lifecycle operations and determine the specific API calls used for CRUD operations.

---

## Question No. 228

**Question Type:** Single Choice

**Question:** Which of the following command would be used to access all of the attributes and details of a resource managed by Terraform?

**Options:**
- A) Terraform state show 'provider_type_name'
- B) Terraform state list
- C) Terraform get provider_type_name
- D) Terraform state list provider_type_name

**Correct Answer:** A

**Explanation:** `terraform state show` displays all attributes and metadata for a specific resource from the state file.

---

## Question No. 229

**Question Type:** Multiple Choice

**Question:** Which are examples of infrastructure as code? Choose two correct answers.

**Options:**
- A) Cloned virtual machine images
- B) Versioned configuration files
- C) Change management database records
- D) Dockerfile

**Correct Answer:** B, D

**Explanation:** IaC examples include versioned configuration files and container definitions like Dockerfiles; VM images and database records are not code-based IaC.

---

## Question No. 230

**Question Type:** Single Choice

**Question:** Which method for sharing Terraform configurations fulfills the following criteria: 1) Keeps the configurations confidential within your organization 2) Support Terraform's semantic version constraints 3) Provides a browsable directory

**Options:**
- A) Subfolder within a workspace
- B) Generic git repository
- C) Terraform Cloud private registry
- D) Public Terraform module registry

**Correct Answer:** C

**Explanation:** Terraform Cloud private registry meets all three criteria: confidentiality, semantic versioning support, and browsable interface.

---

## Question No. 231

**Question Type:** Single Choice

**Question:** How do you specify a module's version when publishing it to the public terraform Module Registry?

**Options:**
- A) Configuration it in the module's Terraform code
- B) Mention it on the module's configuration page on the Terraform Module Registry
- C) The Terraform Module Registry does not support versioning modules
- D) Tag a release in the associated repo

**Correct Answer:** D

**Explanation:** Module versions are managed by git tags in the associated repository; the registry auto-detects and indexes releases.

---

## Question No. 232

**Question Type:** Single Choice

**Question:** The public Terraform Module Registry is free to use.

**Options:**
- A) True
- B) False

**Correct Answer:** A

**Explanation:** The public Terraform Module Registry is free for anyone to use and publish modules to.

---

## Question No. 233

**Question Type:** Single Choice

**Question:** Running terraform fmt without any flags in a directory with Terraform configuration files check the formatting of those files without changing their contents.

**Options:**
- A) True
- B) False

**Correct Answer:** A

**Explanation:** `terraform fmt` without flags applies formatting changes. Use `terraform fmt -check` to verify formatting without modifying files.

---

## Question No. 234

**Question Type:** Single Choice

**Question:** What does this code do? terraform { required_providers { aws = '>=3.0' }}

**Options:**
- A) Requires any version of the AWS provider > = 3.0 and <4.0
- B) Requires any version of the AWS provider >=3.0
- C) Requires any version of the AWS provider > = 3.0 major release. like 4.1
- D) Requires any version of the AWS provider > 3.0

**Correct Answer:** B

**Explanation:** `>= 3.0` means version 3.0 or greater with no upper bound constraint.

---

## Question No. 235

**Question Type:** Single Choice

**Question:** What does state locking accomplish?

**Options:**
- A) Prevent accidental Prevent accident deletion of the state file
- B) Blocks Terraform commands from modifying, the state file
- C) Copies the state file from memory to disk
- D) Encrypts any credentials stored within the state file

**Correct Answer:** B

**Explanation:** State locking prevents concurrent modifications by blocking Terraform operations while another operation holds the lock.

---

## Question No. 236

**Question Type:** Multiple Choice

**Question:** Which parameters does terraform import require? Choose two correct answers.

**Options:**
- A) Provider
- B) Resource ID
- C) Resource address
- D) Path

**Correct Answer:** A, C

**Explanation:** `terraform import` requires the provider/resource type (A) and the resource address/identifier (C) to identify and import existing resources.

---

## Question No. 237

**Question Type:** Single Choice

**Question:** You modified your Terraform configuration and ran Terraform plan to review the changes. Simultaneously, your teammate manually modified the infrastructure component you are working on. Since you already ran terraform plan locally, the execution plan for terraform apply will be the same.

**Options:**
- A) True
- B) False

**Correct Answer:** B

**Explanation:** `terraform apply` performs a fresh refresh before execution, detecting external changes made after the plan was generated.

---

## Question No. 238

**Question Type:** Single Choice

**Question:** You have a Terraform configuration that defines a single virtual machine with no references to it. You have run terraform apply to create the resource, and then removed the resource definition from your Terraform configuration file. What will happen you run terraform apply in the working directory again?

**Options:**
- A) Terraform will remove the virtual machine from the state file, but the resource will still exist
- B) Nothing
- C) Terraform will prompt you to confirm that you want to destroy all the infrastructure
- D) Terraform will destroy the virtual machine

**Correct Answer:** A

**Explanation:** Removing a resource from configuration leaves the physical resource orphaned; Terraform removes it from state but leaves the infrastructure intact.

---

## Question No. 239

**Question Type:** Multiple Choice

**Question:** How can a ticket-based system slow down infrastructure provisioning and limit the ability to scale? Choose two correct answers.

**Options:**
- A) End-users have to request infrastructure changes
- B) Ticket based systems generate a full audit trail of the request and fulfillment process
- C) Users can access catalog of approved resources from drop down list in a request form
- D) The more resources your organization needs, the more tickets your infrastructure team has to process

**Correct Answer:** A, D

**Explanation:** Both A and D represent bottlenecks: manual approval processes and linear ticket processing limit infrastructure provisioning speed and scalability.

---

## Question No. 240

**Question Type:** Single Choice

**Question:** You have created a main.tf Terraform configuration consisting of an application server, a database and a load balanced. You ran terraform apply and Terraform created all of the resources successfully. Now you realize that you do not actually need the load balancer, so you run terraform destroy without any flags. What will happen?

**Options:**
- A) Terraform will prompt you to pick which resource you want to destroy
- B) Terraform will destroy the application server because it is listed first in the code
- C) Terraform will prompt you to confirm that you want to destroy all the infrastructure
- D) Terraform will destroy the main, tf file
- E) Terraform will immediately destroy all the infrastructure

**Correct Answer:** C

**Explanation:** `terraform destroy` without flags shows a plan and prompts for confirmation before destroying any resources.

---

## Question No. 241

**Question Type:** Single Choice

**Question:** Terraform variable names are saved in the state file.

**Options:**
- A) True
- B) False

**Correct Answer:** A

**Explanation:** Variable names and their resolved values are stored in the state file for reference and reuse.

---

## Question No. 242

**Question Type:** Single Choice

**Question:** When using multiple configuration of the same Terraform provider, what meta-argument must you include in any non-default provider configurations?

**Options:**
- A) Alias
- B) Id
- C) Depends_on
- D) name

**Correct Answer:** A

**Explanation:** The `alias` meta-argument is required to define and reference multiple provider configurations for the same provider.

---

## Question No. 243

**Question Type:** Single Choice

**Question:** A Terraform provider is NOT responsible for:

**Options:**
- A) Exposing resources and data sources based on an API
- B) Managing actions to take based on resources differences
- C) Understanding API interactions with some service
- D) Provisioning infrastructure in multiple regions

**Correct Answer:** B

**Explanation:** Terraform core is responsible for managing actions based on resource differences. Providers expose resources and interact with APIs, but don't determine the plan logic.

---

## Question No. 244

**Question Type:** Single Choice

**Question:** In a Terraform Cloud workspace linked to a version control repository speculative plan run start automatically commit changes to version control.

**Options:**
- A) True
- B) False

**Correct Answer:** B

**Explanation:** Speculative plan runs in Terraform Cloud do not automatically commit changes to version control; they only preview changes.

---

## Question No. 245

**Question Type:** Single Choice

**Question:** Which command add existing resources into Terraform state?

**Options:**
- A) Terraform init
- B) Terraform plan
- C) Terraform refresh
- D) Terraform import
- E) All of these

**Correct Answer:** D

**Explanation:** `terraform import` is the specific command used to add existing infrastructure resources into Terraform state management.

---

## Question No. 246

**Question Type:** Single Choice

**Question:** How does the Terraform cloud integration differ from other state backends such as S3, Consul, etc?

**Options:**
- A) It can execute Terraform runs on dedicated infrastructure in Terraform Cloud
- B) It doesn't show the output of a terraform apply locally
- C) It is only arable lo paying customers
- D) All of the above

**Correct Answer:** A

**Explanation:** Terraform Cloud's primary differentiator is that it executes Terraform operations on Terraform Cloud's managed infrastructure rather than locally.

---

## Question No. 247

**Question Type:** Single Choice

**Question:** Setting the TF_LOG environment variable to DEBUG causes debug messages to be logged into stdout.

**Options:**
- A) True
- B) False

**Correct Answer:** A

**Explanation:** Setting `TF_LOG=DEBUG` enables debug-level logging output to stdout, providing detailed diagnostic information about Terraform operations.

---

## Question No. 248

**Question Type:** Multiple Choice

**Question:** Which of these ate features of Terraform Cloud? Choose two correct answers.

**Options:**
- A) Automated infrastructure deployment visualization
- B) Automatic backups
- C) A web-based user interface (UI)
- D) Remote state storage

**Correct Answer:** C, D

**Explanation:** Terraform Cloud provides a web-based UI for managing workspaces and configurations, plus remote state storage. It does not provide automated backups or deployment visualization.

---

## Question No. 249

**Question Type:** Single Choice

**Question:** You cannot install third party plugins using terraform init.

**Options:**
- A) True
- B) False

**Correct Answer:** B

**Explanation:** `terraform init` automatically downloads and installs required providers and plugins based on the configuration.

---

## Question No. 250

**Question Type:** Single Choice

**Question:** Only the user that generated a plan may apply it.

**Options:**
- A) True
- B) False

**Correct Answer:** B

**Explanation:** Any user with appropriate permissions can apply an execution plan; there is no restriction based on who created the plan.

---

## Question No. 251

**Question Type:** Single Choice

**Question:** You can reference a resource created with for_each using a Splat ( * ) expression.

**Options:**
- A) True
- B) False

**Correct Answer:** B

**Explanation:** Splat expressions (`[*]`) work with `for_each` differently than with `count`. For `for_each`, you reference resources directly without splat syntax.

---

## Question No. 252

**Question Type:** Single Choice

**Question:** When you use a remote backend that needs authentication, HashiCorp recommends that you:

**Options:**
- A) Write the authentication credentials in the Terraform configuration files
- B) Keep the Terraform configuration files in a secret store
- C) Push your Terraform configuration to an encrypted git repository
- D) Use partial configuration to load the authentication credentials outside of the Terraform code

**Correct Answer:** D

**Explanation:** HashiCorp recommends using partial configuration to keep sensitive authentication credentials outside of Terraform code files for better security practices.

---

## Question No. 253

**Question Type:** Single Choice

**Question:** Which of the following statements about Terraform modules is not true?

**Options:**
- A) Modules can call other modules
- B) A module is a container for one or more resources
- C) Modules must be publicly accessible
- D) You can call the same module multiple times

**Correct Answer:** C

**Explanation:** Modules do not need to be publicly accessible; they can be private, local, or in private registries.

---

## Question No. 254

**Question Type:** Single Choice

**Question:** You want to define a single input variable to capture configuration values for a server. The values must represent memory as a number, and the server name as a string. Which variable type could you use for this input?

**Options:**
- A) List
- B) Object
- C) Map
- D) Terraform does not support complex input variables of different types

**Correct Answer:** B

**Explanation:** The `object` type allows you to define input variables with mixed attribute types, supporting both numbers and strings in a single variable.

---

## Question No. 255

**Question Type:** Single Choice

**Question:** ________ backends support state locking.

**Options:**
- A) All
- B) No
- C) Some
- D) Only local

**Correct Answer:** C

**Explanation:** Some backends like Terraform Cloud, S3, and Consul support state locking, while others like local file backends do not.

---

## Question No. 256

**Question Type:** Single Choice

**Question:** It is best practice to store secret data in the same version control repository as your Terraform configuration.

**Options:**
- A) True
- B) False

**Correct Answer:** B

**Explanation:** Sensitive data should never be stored in version control repositories; use environment variables, secret managers, or other secure methods.

---

## Question No. 257

**Question Type:** Multiple Choice

**Question:** You have declared a variable called var.list which is a list of objects that all have an attribute id . Which options will produce a list of the IDs? Choose two correct answers.

**Options:**
- A) [ var.list [ * ] , id ]
- B) [ for o in var.list : o.Id ]
- C) var.list[*].id
- D) { for o in var.list : o => o.id }

**Correct Answer:** A, C

**Explanation:** Both splat syntax `var.list[*].id` and bracket notation `[ var.list [ * ] , id ]` correctly extract the id attribute from each object in the list.

---

## Question No. 258

**Question Type:** Single Choice

**Question:** How does Terraform manage most dependencies between resources?

**Options:**
- A) Terraform will automatically manage most resource dependencies
- B) Using the depends_on parameter
- C) By defining dependencies as modules and including them in a particular order
- D) The order that resources appear in Terraform configuration indicates dependencies

**Correct Answer:** A

**Explanation:** Terraform automatically builds a dependency graph by analyzing resource references, eliminating the need for manual dependency specification in most cases.

---

## Question No. 259

**Question Type:** Single Choice

**Question:** Which backend does the Terraform CLI use by default?

**Options:**
- A) Depends on the cloud provider configured
- B) HTTP
- C) Remote
- D) Terraform Cloud
- E) Local

**Correct Answer:** E

**Explanation:** The local backend is Terraform's default state storage mechanism, storing state in a local `terraform.tfstate` file.

---

## Question No. 260

**Question Type:** Single Choice

**Question:** What is one disadvantage of using dynamic blocks in Terraform?

**Options:**
- A) Dynamic blocks can construct repeatable nested blocks
- B) Terraform will run more slowly
- C) They cannot be used to loop through a list of values
- D) They make configuration harder to read and understand

**Correct Answer:** D

**Explanation:** Dynamic blocks, while powerful, can make Terraform configurations more complex and harder to understand compared to static block definitions.

---

## Question No. 261

**Question Type:** Single Choice

**Question:** You can develop a custom provider to manage its resources using Terraform.

**Options:**
- A) True
- B) False

**Correct Answer:** A

**Explanation:** Terraform SDK allows developers to create custom providers to manage resources from any system or service.

Option B is incorrect: `.terraform` may contain plugins/modules but is not the primary change target after plan approval.

Option C is incorrect: The saved/previewed plan is an input artifact, not the end-state target.

Option E is incorrect: Terraform source code is not modified by apply.

---

## Question No. 262

**Question Type:** Single Choice

**Question:** What is the workflow for deploying new infrastructure with Terraform?

**Options:**
- A) Write Terraform configuration, run terraform init to initialize the working directory or workspace, and run terraform apply
- B) Write Terraform configuration, run terraform show to view proposed changes, and terraform apply to create new infrastructure
- C) Write Terraform configuration, run terraform apply to create infrastructure, use terraform validate to confirm Terraform deployed resources correctly
- D) Write Terraform configuration, run terraform plan to initialize the working directory or workspace, and terraform apply to create the infrastructure

**Correct Answer:** A

**Explanation:** The standard Terraform workflow is: write configuration → `terraform init` to initialize → `terraform plan` to preview → `terraform apply` to deploy.

---

## Question No. 263

**Question Type:** Single Choice

**Question:** When do changes invoked by terraform apply take effect?

**Options:**
- A) After Terraform has updated the state file
- B) Once the resource provider has fulfilled the request
- C) Immediately
- D) None of the above are correct

**Correct Answer:** B

**Explanation:** Changes take effect once the resource provider (e.g., AWS, Azure) has fulfilled the request and created or modified the actual infrastructure.

---

## Question No. 264

**Question Type:** Single Choice

**Question:** You have never used Terraform before and would like to test it out using a shared team account for a cloud provider. The shared team account already contains 15 virtual machines (VMs). You develop a Terraform configuration containing one VM, perform terraform apply, and see that your VM was created successfully. What should you do to delete the newly-created VM with Terraform?

**Options:**
- A) The Terraform state file contains all 16 VMs in the team account. Execute terraform destroy and select the newly-created VM.
- B) Delete the Terraform state file and execute terraform apply.
- C) The Terraform state file only contains the one new VM. Execute terraform destroy.
- D) Delete the VM using the cloud provider console and terraform apply to apply the changes to the Terraform state file.

**Correct Answer:** C

**Explanation:** Terraform's state file only tracks resources managed by Terraform. Since only one VM was created with this configuration, `terraform destroy` will only remove that one VM.

---

## Question No. 265

**Question Type:** Single Choice

**Question:** What is the Terraform style convention for indenting a nesting level compared to the one above it?

**Options:**
- A) With a tab
- B) With two spaces
- C) With four spaces
- D) With three spaces

**Correct Answer:** B

**Explanation:** The Terraform style convention is to use two spaces for each nesting level, as enforced by `terraform fmt`.

---

## Question No. 266

**Question Type:** Single Choice

**Question:** What kind of configuration block will create an infrastructure object with settings specified within the block?

**Options:**
- A) provider
- B) state
- C) data
- D) resource

**Correct Answer:** D

**Explanation:** The `resource` block is used to define and create infrastructure objects. `data` blocks read existing infrastructure, and `provider` blocks configure providers.

---

## Question No. 267

**Question Type:** Single Choice

**Question:** Which command should you run to check if all code in a Terraform configuration that references multiple modules is properly formatted without making changes?

**Options:**
- A) terraform fmt -write-false
- B) terraform fmt -list -recursive
- C) terraform fmt -check -recursive
- D) terraform fmt -check

**Correct Answer:** C

**Explanation:** `terraform fmt -check` verifies formatting without making changes, and `-recursive` ensures all modules in subdirectories are also checked.

---

## Question No. 268

**Question Type:** Single Choice

**Question:** How would you reference the volume IDs associated with the ebs_block_device blocks in this configuration?

**Options:**
- A) aws_instance.example.ebs_block_device[sda2,sda3].volume_id
- B) aws_Instance.example.ebs_block_device.[*].volume_id
- C) aws_Instance.example.ebs_block_device.volume_ids
- D) aws_instance.example-ebs_block_device.*.volume_id

**Correct Answer:** B

**Explanation:** The splat expression `[*]` is used to reference all instances of a repeated nested block and extract a specific attribute from each.

---

## Question No. 269

**Question Type:** Single Choice

**Question:** You are making changes to existing Terraform code to add some new infrastructure. When is the best time to run terraform validate?

**Options:**
- A) After you run terraform apply so you can validate your infrastructure
- B) Before you run terraform apply so you can validate your provider credentials
- C) Before you run terraform plan so you can validate your code syntax
- D) After you run terraform plan so you can validate that your state file is consistent with your infrastructure

**Correct Answer:** C

**Explanation:** `terraform validate` checks syntax and internal consistency of configuration files. Running it before `terraform plan` catches errors early without making any API calls.

---

## Question No. 270

**Question Type:** Single Choice

**Question:** As a member of an operations team that uses infrastructure as code (IaC) practices, you are tasked with making a change to an infrastructure stack running in a public cloud. Which pattern would follow IaC best practices for making a change?

**Options:**
- A) Make the change via the public cloud API endpoint
- B) Clone the repository containing your infrastructure code and then run the code
- C) Use the public cloud console to make the change after a database record has been approved
- D) Make the change programmatically via the public cloud CLI
- E) Submit a pull request and wait for an approved merge of the proposed changes

**Correct Answer:** E

**Explanation:** IaC best practices require all changes to go through version control with peer review via pull requests, ensuring auditability, approval workflows, and reproducibility.

---

## Question No. 271

**Question Type:** Single Choice

**Question:** You must use different Terraform commands depending on the cloud provider you use.

**Options:**
- A) True
- B) False

**Correct Answer:** B

**Explanation:** Terraform commands are cloud-agnostic. The same commands (`init`, `plan`, `apply`, `destroy`) work regardless of which cloud provider is configured.

---

## Question No. 272

**Question Type:** Single Choice

**Question:** What information does the public Terraform Module Registry automatically expose about published modules?

**Options:**
- A) Required input variables
- B) Optional inputs variables and default values
- C) Outputs
- D) All of the above
- E) None of the above

**Correct Answer:** D

**Explanation:** The public Terraform Module Registry automatically parses and exposes all module metadata including required inputs, optional inputs with defaults, and outputs.

---

## Question No. 273

**Question Type:** Single Choice

**Question:** As a developer, you want to ensure your plugins are up to date with the latest versions. Which Terraform command should you use?

**Options:**
- A) terraform refresh -upgrade
- B) terraform apply -upgrade
- C) terraform init -upgrade
- D) terraform providers -upgrade

**Correct Answer:** C

**Explanation:** `terraform init -upgrade` upgrades all providers and modules to the latest version that satisfies the version constraints in the configuration.

---

## Question No. 274

**Question Type:** Single Choice

**Question:** You have deployed a new webapp with a public IP address on a cloud provider. However, you did not create any outputs for your code. What is the best method to quickly find the IP address of the resource you deployed?

**Options:**
- A) In a new folder, use the terraform_remote_state data source to load in the state file, then write an output for each resource that you find the state file
- B) Run terraform state list to find the name of the resource, then terraform state show to find the attributes including public IP address
- C) Run terraform output ip_address to view the result
- D) Run terraform destroy then terraform apply and look for the IP address in stdout

**Correct Answer:** B

**Explanation:** `terraform state list` shows all managed resources, and `terraform state show <resource>` displays all attributes including the public IP address without needing defined outputs.

---

## Question No. 275

**Question Type:** Single Choice

**Question:** Your DevOps team is currently using the local backend for your Terraform configuration. You would like to move to a remote backend to store the state file in a central location. Which of the following backends would not work?

**Options:**
- A) Artifactory
- B) Amazon S3
- C) Terraform Cloud
- D) Git

**Correct Answer:** D

**Explanation:** Git is not a supported Terraform backend. Supported remote backends include S3, Terraform Cloud, Consul, Artifactory, Azure Blob Storage, and others.

---

## Question No. 276

**Question Type:** Single Choice

**Question:** You decide to move a Terraform state file to Amazon S3 from another location. You write the code below into a file called backend.tf. Which command will migrate your current state file to the new S3 remote backend?

**Options:**
- A) terraform state
- B) terraform init
- C) terraform push
- D) terraform refresh

**Correct Answer:** B

**Explanation:** `terraform init` detects the backend configuration change and automatically prompts to migrate the existing state to the new backend.

---

## Question No. 277

**Question Type:** Single Choice

**Question:** Which of the following is not a valid Terraform variable type?

**Options:**
- A) list
- B) array
- C) map
- D) string

**Correct Answer:** B

**Explanation:** `array` is not a valid Terraform type. Valid types include string, number, bool, list, set, map, object, and tuple.

---

## Question No. 278

**Question Type:** Single Choice

**Question:** What does Terraform not reference when running a terraform apply -refresh-only?

**Options:**
- A) State file
- B) Credentials
- C) Cloud provider
- D) Terraform resource definitions in configuration files

**Correct Answer:** D

**Explanation:** `terraform apply -refresh-only` updates the state file by querying the actual infrastructure, but does not reference or apply resource definitions from configuration files.

---

## Question No. 279

**Question Type:** Single Choice

**Question:** Module variable assignments are inherited from the parent module and you do not need to explicitly set them.

**Options:**
- A) True
- B) False

**Correct Answer:** B

**Explanation:** Module variables are not automatically inherited. Each variable must be explicitly passed when calling a module using the `module` block arguments.

---

## Question No. 280

**Question Type:** Single Choice

**Question:** Why does this backend configuration not follow best practices?

**Options:**
- A) An alias meta-argument should be included in backend blocks whenever possible
- B) You should use the local enhanced storage backend whenever possible
- C) You should not store credentials in Terraform configuration
- D) The backend configuration should contain multiple credentials so that more than one user can execute terraform plan and terraform apply

**Correct Answer:** C

**Explanation:** Hardcoding credentials in Terraform configuration is a security risk. Credentials should be provided via environment variables, IAM roles, or partial configuration.

---

## Question No. 281

**Question Type:** Single Choice

**Question:** What does Terraform use the .terraform.lock.hcl file for?

**Options:**
- A) There is no such file
- B) Tracking specific provider dependencies
- C) Preventing Terraform runs from occurring
- D) Storing references to workspaces which are locked

**Correct Answer:** B

**Explanation:** The `.terraform.lock.hcl` file records the exact provider versions selected during `terraform init`, ensuring consistent provider versions across all team members and CI environments.

---

## Question No. 282

**Question Type:** Single Choice

**Question:** Once you configure a new Terraform backend with a terraform code block, which command(s) should you use to migrate the state file?

**Options:**
- A) terraform destroy, then terraform apply
- B) terraform init
- C) terraform push
- D) terraform apply

**Correct Answer:** B

**Explanation:** Running `terraform init` after configuring a new backend detects the change and prompts you to migrate the existing state to the new backend location.

---

## Question No. 283

**Question Type:** Single Choice

**Question:** If you update the version constraint in your Terraform configuration, Terraform will update your lock file the next time you run terraform init.

**Options:**
- A) True
- B) False

**Correct Answer:** B

**Explanation:** Updating version constraints alone does not update the lock file. You must run `terraform init -upgrade` to update `.terraform.lock.hcl` to reflect new constraints.

---

## Question No. 284

**Question Type:** Single Choice

**Question:** Your security team scanned some Terraform workspaces and found secrets stored in plaintext in state files. How can you protect that data?

**Options:**
- A) Edit your state file to scrub out the sensitive data
- B) Always store your secrets in a secrets.tfvars file
- C) Delete the state file every time you run Terraform
- D) Store the state in an encrypted backend

**Correct Answer:** D

**Explanation:** Using an encrypted remote backend (e.g., Terraform Cloud, S3 with SSE) ensures state files are encrypted at rest, protecting sensitive data stored in state.

---

## Question No. 285

**Question Type:** Single Choice

**Question:** Variables declared within a module are accessible outside of the module.

**Options:**
- A) True
- B) False

**Correct Answer:** B

**Explanation:** Module variables are scoped to the module. To expose values outside a module, you must declare `output` values that the calling module can reference.

---

## Question No. 286

**Question Type:** Single Choice

**Question:** When should you write Terraform configuration files for existing infrastructure that you want to start managing with Terraform?

**Options:**
- A) You can import infrastructure without corresponding Terraform code
- B) Terraform will generate the corresponding configuration files for you
- C) Before you run terraform import
- D) After you run terraform import

**Correct Answer:** C

**Explanation:** You must write the Terraform configuration (resource blocks) before running `terraform import`. The import command maps the existing resource to the configuration you've written.

---

## Question No. 287

**Question Type:** Single Choice

**Question:** You're building a CI/CD (continuous integration/continuous delivery) pipeline and need to inject sensitive variables into your Terraform run. How can you do this safely?

**Options:**
- A) Copy the sensitive variables into your Terraform code
- B) Store the sensitive variables in a secure_varS.tf file
- C) Store the sensitive variables as plain text in a source code repository
- D) Pass variables to Terraform with a -var flag

**Correct Answer:** D

**Explanation:** Passing sensitive variables via the `-var` flag at runtime (injected by the CI/CD system from a secret store) keeps them out of source code and configuration files.

---

## Question No. 288

**Question Type:** Single Choice

**Question:** How can you trigger a run in a Terraform Cloud workspace that is connected to a Version Control System (VCS) repository?

**Options:**
- A) Only Terraform Cloud organization owners can set workspace variables on VCS connected workspaces
- B) Commit a change to the VCS working directory and branch that the Terraform Cloud workspace is connected to
- C) Only Terraform Cloud organization owners can approve plans in VCS connected workspaces
- D) Only members of a VCS organization can open a pull request against repositories that are connected to Terraform Cloud workspaces

**Correct Answer:** B

**Explanation:** Committing a change to the monitored branch in the VCS repository automatically triggers a new Terraform Cloud run via the VCS webhook integration.

---

## Question No. 289

**Question Type:** Single Choice

**Question:** What does the default 'local' Terraform backend store?

**Options:**
- A) tfplan files
- B) State file
- C) Provider plugins
- D) Terraform binary

**Correct Answer:** B

**Explanation:** The local backend stores the Terraform state file (`terraform.tfstate`) on the local filesystem in the working directory.

---

## Question No. 290

**Question Type:** Single Choice

**Question:** Which of the following is not a valid string function in Terraform?

**Options:**
- A) chomp
- B) join
- C) slice
- D) split

**Correct Answer:** C

**Explanation:** `slice` is a collection function that works on lists, not a string function. Valid string functions include `chomp`, `join`, `split`, `format`, `trim`, and others.

---

## Question No. 291

**Question Type:** Single Choice

**Question:** What feature stops multiple users from operating on the Terraform state at the same time?

**Options:**
- A) State locking
- B) Version control
- C) Provider constraints
- D) Remote backends

**Correct Answer:** A

**Explanation:** State locking prevents concurrent operations by locking the state file when a Terraform operation is in progress, preventing conflicts and corruption.

---

## Question No. 292

**Question Type:** Single Choice

**Question:** Terraform providers are always installed from the Internet.

**Options:**
- A) True
- B) False

**Correct Answer:** B

**Explanation:** Providers can also be installed from local filesystem mirrors, private registries, or network mirrors — not exclusively from the public internet.

---

## Question No. 293

**Question Type:** Single Choice

**Question:** Outside of the required_providers block, Terraform configurations always refer to providers by their local names.

**Options:**
- A) True
- B) False

**Correct Answer:** A

**Explanation:** Within a Terraform configuration, providers are always referenced by their local name (defined in `required_providers`) outside of the `required_providers` block itself.

---

## Question No. 294

**Question Type:** Multiple Choice

**Question:** Which of the following are advantages of using infrastructure as code (IaC) instead of provisioning with a graphical user interface (GUI)? Choose two correct answers.

**Options:**
- A) Lets you version, reuse, and share infrastructure configuration
- B) Provisions the same resources at a lower cost
- C) Secures your credentials
- D) Reduces risk of operator error
- E) Prevents manual modifications to your resources

**Correct Answer:** A, D

**Explanation:** IaC enables version control, reuse, and sharing of configurations (A), and reduces human/operator error through automation and repeatability (D). Cost, credential security, and preventing manual changes are not inherent IaC advantages.

---

## Question No. 295

**Question Type:** Multiple Choice

**Question:** You have provisioned some virtual machines (VMs) on Google Cloud Platform (GCP) using the gcloud command line tool. However, you are standardizing with Terraform and want to manage these VMs using Terraform instead. What are the two things you must do to achieve this? Choose two correct answers.

**Options:**
- A) Run the terraform import-gcp command
- B) Write Terraform configuration for the existing VMs
- C) Use the terraform import command for the existing VMs
- D) Provision new VMs using Terraform with the same VM names

**Correct Answer:** B, C

**Explanation:** To bring existing infrastructure under Terraform management you must: (B) write the Terraform resource configuration matching the existing resources, and (C) run `terraform import` to map them to state.

---

## Question No. 296

**Question Type:** Single Choice

**Question:** When does Sentinel enforce policy logic during a Terraform Cloud run?

**Options:**
- A) Before the plan phase
- B) During the plan phase
- C) Before the apply phase
- D) After the apply phase

**Correct Answer:** C

**Explanation:** Sentinel policies run after the plan is generated and before the apply phase, acting as a policy-as-code gate to allow or deny infrastructure changes.

---

## Question No. 297

**Question Type:** Single Choice

**Question:** A developer accidentally launched a VM (virtual machine) outside of the Terraform workflow and ended up with two servers with the same name. They don't know which VM Terraform manages but do have a list of all active VM IDs. Which of the following methods could you use to discover which instance Terraform manages?

**Options:**
- A) Run terraform state list to find the names of all VMs, then run terraform state show for each of them to find which VM ID Terraform manages
- B) Update the code to include outputs for the ID of all VMs, then run terraform plan to view the outputs
- C) Run terraform taint/code on all the VMs to recreate them
- D) Use terraform refresh/code to find out which IDs are already part of state

**Correct Answer:** A

**Explanation:** `terraform state list` reveals managed resource names, and `terraform state show` displays the specific attributes (including ID) Terraform tracks for each resource.

---

## Question No. 298

**Question Type:** Single Choice

**Question:** Which command must you first run before performing further Terraform operations in a working directory?

**Options:**
- A) terraform import
- B) terraform workspace
- C) terraform plan
- D) terraform init

**Correct Answer:** D

**Explanation:** `terraform init` must be run first in any working directory to initialize the backend, download providers, and set up modules before any other Terraform operations.

---

## Question No. 299

**Question Type:** Single Choice

**Question:** terraform validate confirms that your infrastructure matches the Terraform state file.

**Options:**
- A) True
- B) False

**Correct Answer:** B

**Explanation:** `terraform validate` only checks the syntax and internal consistency of Terraform configuration files. It does not check infrastructure state or make any API calls.

---

## Question No. 300

**Question Type:** Single Choice

**Question:** You are creating a Terraform configuration which needs to make use of multiple providers, one for AWS and one for Datadog. Which of the following provider blocks would allow you to do this?

**Options:**
- A) A single `terraform {}` block containing both `provider "aws" {}` and `provider "datadog" {}` nested inside
- B) Two separate top-level `provider` blocks: `provider "aws" {}` and `provider "datadog" {}`
- C) Two separate top-level `provider` blocks with aligned formatting
- D) A single `provider {}` block with both `"aws" {}` and `"datadog" {}` nested inside

**Correct Answer:** B

**Explanation:** Each provider requires its own top-level `provider` block. Multiple providers are supported by declaring separate `provider "name" {}` blocks at the root level of the configuration.

---

## Question No. 301

**Question Type:** Single Choice

**Question:** Module version is required to reference a module on the Terraform Module Registry.

**Options:**
- A) True
- B) False

**Correct Answer:** B

**Explanation:** Module version is not required when referencing a module from the Terraform Module Registry. While specifying a version constraint is strongly recommended for production use, omitting it is valid and Terraform will use the latest version.

---

## Question No. 302

**Question Type:** Single Choice

**Question:** terraform destroy is the only way to remove infrastructure with Terraform.

**Options:**
- A) True
- B) False

**Correct Answer:** B

**Explanation:** `terraform destroy` is not the only way to remove infrastructure with Terraform. You can also remove resources by deleting their resource blocks from the configuration and running `terraform apply`, which will plan and execute the destruction of any resources that are no longer declared. Other methods include `terraform destroy -target=<resource>` to destroy a specific resource, or `terraform state rm` to remove a resource from the state file without affecting the actual infrastructure.

**Explanation:**

Option A is incorrect: While `terraform destroy` is a common and direct way to tear down all managed infrastructure, it is not the only mechanism available. Terraform provides multiple paths to remove infrastructure depending on the use case.

Option B is correct: Removing resource blocks from the configuration and running `terraform apply` achieves the same result of destroying those resources. Additionally, targeted destruction and state manipulation commands provide further options for selective removal.

---

## Question No. 303

**Question Type:** Single Choice

**Question:** How can you enable verbose logging to troubleshoot Terraform?

**Options:**
- A) Set the log level command-line flag.
- B) Set the TF_LOG environment variable.
- C) Set the log level in your terraform block.

**Correct Answer:** B

**Explanation:** Terraform uses the `TF_LOG` environment variable to enable detailed logging. You can set it to one of the following log levels: `TRACE`, `DEBUG`, `INFO`, `WARN`, or `ERROR`. For example, running `export TF_LOG=DEBUG` before executing Terraform commands will produce verbose output useful for troubleshooting. To persist logs to a file, the `TF_LOG_PATH` environment variable can be used alongside `TF_LOG`.

**Explanation:**

Option A is incorrect: Terraform does not support a command-line flag such as `--log-level` or similar to control logging verbosity. All logging configuration is done through environment variables.

Option C is incorrect: The `terraform {}` block in your configuration is used to declare required providers, backend configuration, and required Terraform version. It does not support any log level setting.

---

## Question No. 304

**Question Type:** Single Choice

**Question:** Which type of information does the Terraform Registry provide about the modules it hosts?

**Options:**
- A) Required input variables
- B) Outputs
- C) Optional input variables and default values
- D) All of these are provided

**Correct Answer:** D

**Explanation:** Terraform Registry module pages document the module interface in detail. They list required input variables, optional input variables including default values, and outputs exported by the module. Because all three categories are available in the registry documentation for modules, the most complete and correct answer is option D.

**Explanation:**

Option A is incorrect: Required input variables are indeed shown, but this option is incomplete because the registry also shows optional inputs and outputs.

Option B is incorrect: Outputs are shown, but this is only one part of the module information presented by the registry.

Option C is incorrect: Optional inputs and defaults are shown, but this still omits other documented information such as required inputs and outputs.

---

## Question No. 305

**Question Type:** Single Choice

**Question:** The exhibit below shows part of a Terraform configuration you have been asked to update. The name of the Azure Virtual Network should be set to the name of the resource group followed by a dash and the word vnet.

Exhibit:
```
data "azurerm_resource_group" "example" {
  name = var.resource_group_name
}

resource "azurerm_virtual_network" "example" {
  name = ____________________
}
```

Which expression fulfills this requirement?

**Options:**
- A) `${data.azurerm_resource_group.example.name}-vnet`
- B) `concat(data.azurerm_resource_group.example.name, '-', 'vnet')`
- C) `join('-', var.resource_group_name, 'vnet')`
- D) `${azurerm_resource_group.example.name}-vnet`

**Correct Answer:** A

**Explanation:** Option A correctly builds the virtual network name by taking the resource group name from the data source and appending `-vnet`. The expression references the existing data block `data.azurerm_resource_group.example.name`, which is exactly the value requested in the requirement.

**Explanation:**

Option B is incorrect: `concat` is intended for concatenating lists, not for building a string from scalar string values in this form.

Option C is incorrect: `join` expects a separator and a list of strings, but this option passes separate string arguments and also uses `var.resource_group_name` instead of the value read from the `data.azurerm_resource_group.example` data source shown in the exhibit.

Option D is incorrect: It references `azurerm_resource_group.example.name`, but the exhibit defines a data source named `data.azurerm_resource_group.example`, not a resource block named `azurerm_resource_group.example`.

---

## Question No. 306

**Question Type:** Single Choice

**Question:** Which is a recommended way to share Terraform state across teams?

**Options:**
- A) Use a remote state backend.
- B) No additional configuration is recommended.
- C) Store the `terraform.tfstate` file in version control.
- D) Store the `terraform.tfstate` file in HashiCorp Vault.

**Correct Answer:** A

**Explanation:** A remote state backend is the recommended approach for team collaboration because it centralizes state, supports safe concurrent workflows (often through state locking), and reduces the risk of drift and accidental overwrites from local state files.

**Incorrect options explanation:**

Option B is incorrect: Team usage generally does require additional configuration, especially remote shared state, to avoid conflicting local state files.

Option C is incorrect: Storing `terraform.tfstate` in version control is discouraged because state can contain sensitive data and does not provide safe locking/concurrency controls.

Option D is incorrect: HashiCorp Vault is primarily for secrets management, not as a standard Terraform state backend for collaborative state operations.

---

## Question No. 307

**Question Type:** Single Choice

**Question:** Terraform stores the value of an output in its state file, even if the `sensitive` argument is set to `true`.

**Options:**
- A) True
- B) False

**Correct Answer:** A

**Explanation:** Marking an output as `sensitive = true` only hides the value from normal CLI display and some UI outputs. Terraform still keeps the real value in the state file because state must retain actual data to track resources and dependencies.

**Incorrect options explanation:**

Option B is incorrect: `sensitive = true` does not prevent storage in state; it controls visibility, not persistence.

---

## Question No. 308

**Question Type:** Single Choice

**Question:** You can install community and partner plugins using `terraform init`.

**Options:**
- A) True
- B) False

**Correct Answer:** A

**Explanation:** `terraform init` initializes the working directory and installs the required provider plugins declared in the configuration. That includes community and partner providers available through the Terraform Registry or configured provider sources.

**Incorrect options explanation:**

Option B is incorrect: Plugin/provider installation is one of the core responsibilities of `terraform init`, not `plan` or `apply`.

---

## Question No. 309

**Question Type:** Multiple Choice

**Question:** You provisioned virtual machines (VMs) on Google Cloud Platform using the gcloud command-line tool. What must be done to manage these VMs using Terraform instead? (Pick the 2 correct responses.)

**Options:**
- A) Pick the two correct responses below.
- B) Run `terraform state pull`.
- C) Add an import block to the configuration.
- D) Add a resource block for the existing VM.
- E) Run `terraform apply -refresh-only`.

**Correct Answer:** C, D

**Explanation:** To bring existing VMs created outside Terraform under Terraform management, you must define the corresponding `resource` block in configuration and import the existing infrastructure into Terraform state. Using an `import` block is the declarative way to perform that import in current Terraform workflows.

**Incorrect options explanation:**

Option A is incorrect: It is only an instruction line and does not represent a Terraform action.

Option B is incorrect: `terraform state pull` only reads and outputs the current state file; it does not import unmanaged resources.

Option E is incorrect: `terraform apply -refresh-only` only updates state from already managed resources and does not start managing resources that are not yet imported.

---

## Question No. 310

**Question Type:** Single Choice

**Question:** Which command must you run before you run a plan or apply for the first time?

**Options:**
- A) terraform init
- B) terraform workspace
- C) terraform validate
- D) terraform import

**Correct Answer:** A

**Explanation:** `terraform init` must be run before any other workflow commands (`plan`, `apply`, etc.) in a new or freshly cloned working directory. It downloads and installs the required provider plugins, initializes the backend, and sets up the local `.terraform` directory that subsequent commands depend on.

**Incorrect options explanation:**

Option B is incorrect: `terraform workspace` is used to manage Terraform workspaces and cannot be used to initialize a working directory or install providers.

Option C is incorrect: `terraform validate` checks the syntactic and semantic correctness of the configuration files, but it requires the directory to already be initialized with `terraform init` first.

Option D is incorrect: `terraform import` is used to bring existing infrastructure under Terraform management, but it also requires the working directory to be initialized beforehand.

---

## Question No. 311

**Question Type:** Single Choice

**Question:** After creating a new Terraform configuration, your configuration passes `terraform validate` but returns an "Access Denied" error from the cloud provider when running `terraform plan`. Why did `terraform validate` not catch this issue?

**Options:**
- A) Variables are only applied and validated during terraform plan, so terraform validate assumed defaults and returned a success message.
- B) The working directory was not initialized, so the cloud provider plugin was unavailable when running the terraform validate command.
- C) terraform validate only checks whether a configuration is syntactically correct and internally consistent, and it does not communicate with providers.
- D) The remote backend was not configured, so terraform validate could not load the state and detect the missing credentials.

**Correct Answer:** C

**Explanation:** `terraform validate` performs a purely static analysis of the configuration files. It checks for syntax errors, invalid references, and internal consistency but does not initialize or communicate with any provider. Because it never contacts the cloud provider, it cannot detect authentication or authorization errors such as "Access Denied". Those errors only surface during `terraform plan` or `terraform apply`, which make real API calls to the provider.

**Incorrect options explanation:**

Option A is incorrect: `terraform validate` does not evaluate variable values or run a plan; it performs a syntax and consistency check only.

Option B is incorrect: Although `terraform init` is required before most commands, `terraform validate` can still run in an uninitialized directory with a limited check, and the scenario states it did return a success message, so initialization is not the cause here.

Option D is incorrect: `terraform validate` does not interact with the backend or state at all, so remote backend configuration is irrelevant to why it passed.

---

## Question No. 312

**Question Type:** Single Choice

**Question:** A resource block is shown in the Exhibit space of this page. What is the provider for this resource?

**Exhibit:**
```hcl
resource "aws_vpc" "main" {}
```

**Options:**
- A) test
- B) vpc
- C) aws
- D) main

**Correct Answer:** C

**Explanation:** In a Terraform resource block such as `resource "aws_vpc" "main"`, the provider is identified by the provider prefix in the resource type. Here, `aws_vpc` starts with `aws`, so the provider is `aws`. The remaining part of the type (`vpc`) describes the resource kind, while the final label (`main`) is only the local name of the resource instance inside the configuration.

**Incorrect options explanation:**

Option A is incorrect: `test` is not the provider name in the resource block structure. If it appears in the exhibit, it would be interpreted as a value or label, not the provider namespace.

Option B is incorrect: `vpc` represents the resource type or kind within the AWS provider, not the provider itself. In `aws_vpc`, the provider prefix is `aws`.

Option D is incorrect: `main` is typically the local name given to the resource block instance. It helps reference the resource in the configuration, but it is not the provider.

---

## Question No. 313

**Question Type:** Single Choice

**Question:** When you run `terraform apply -refresh-only`, which of the following is not consulted by Terraform to update the state file?

**Options:**
- A) Terraform configuration files defining the resources.
- B) Authentication credentials for the provider.
- C) The most recent state file.
- D) The actual infrastructure as reported by the provider API.

**Correct Answer:** A

**Explanation:** In `-refresh-only` mode, Terraform updates state by reconciling existing state with real-world infrastructure data returned by provider APIs. To do that, it uses the current state and valid provider authentication. Resource-defining configuration files are not the source of truth for these refresh updates themselves, so they are not what Terraform consults to discover real infrastructure state changes.

**Incorrect options explanation:**

Option B is incorrect: Terraform must authenticate with the provider to read current remote object data during refresh.

Option C is incorrect: Terraform starts from the current state snapshot and updates it based on what it reads remotely.

Option D is incorrect: Provider API responses are exactly what Terraform uses to detect out-of-band changes and refresh the state.

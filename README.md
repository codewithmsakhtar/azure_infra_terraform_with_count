# 🚀 Terraform Azure Multi Resource Deployment

## 📘 Overview  
This Terraform configuration automates the creation of **multiple Azure Resource Groups** and **Storage Accounts** in one go — following **Terraform best practices**.  
It demonstrates how to write clean, reusable, and scalable IaC (Infrastructure as Code) for Azure Cloud.

---

## 🧩 What This Code Does
- Dynamically creates multiple **Resource Groups (RGs)** using a list variable  
- Automatically provisions **Storage Accounts** within each corresponding Resource Group  
- Uses Terraform’s `count` meta-argument for **looping** resources  
- Implements a **lifecycle block** with `ignore_changes` to prevent unnecessary re-deployments when tags change  
- Demonstrates **best practices** for variable management and reusable infrastructure setup  

---

## 🏗️ Resources Created
| Resource Type | Quantity | Description |
|----------------|-----------|-------------|
| `azurerm_resource_group` | 3 | Creates multiple Resource Groups from the `rg-name` list |
| `azurerm_storage_account` | 3 | Creates one Storage Account per Resource Group |

---

## ⚙️ Variables Used
| Variable | Type | Description |
|-----------|------|-------------|
| `rg-name` | list(string) | Names of Azure Resource Groups |
| `rg-location` | list(string) | Azure regions where RGs will be created |
| `storage_account_name` | list(string) | Storage Account names for each RG |

**Example Values:**
```hcl
rg-name              = ["rg01", "rg02", "rg03"]
rg-location          = ["centralindia", "eastus", "centralindia"]
storage_account_name = ["stg01", "stg02", "stg03"]
```

---

## 💡 Key Features & Advantages
✅ **Multi-Environment Ready** – Easily scale for `dev`, `stage`, and `prod` by changing variable files.  
✅ **Efficient & DRY Code** – Uses Terraform looping instead of repeating code blocks.  
✅ **Safe Updates** – Lifecycle rule prevents accidental tag-based redeployments.  
✅ **Cloud Agnostic IaC Practice** – Teaches reusability, modular thinking, and variable-based infrastructure.  
✅ **Version Controlled Infrastructure** – Fully compatible with GitHub workflows and CI/CD pipelines.

---

## 🧠 Terraform Best Practices Followed
- ✅ Separate variable declarations from resource logic  
- ✅ Used `count` to avoid code duplication  
- ✅ `ignore_changes` lifecycle for stability  
- ✅ Parameterized configuration for reusability  
- ✅ Proper naming convention and tagging  

---

## 🚀 How to Use
1. Clone the repository  
   ```bash
   git clone https://github.com/<your-username>/<repo-name>.git
   cd <repo-name>
   ```
2. Initialize Terraform  
   ```bash
   terraform init
   ```
3. Validate configuration  
   ```bash
   terraform validate
   ```
4. Plan deployment  
   ```bash
   terraform plan
   ```
5. Apply infrastructure  
   ```bash
   terraform apply -auto-approve
   ```

---

## 🧹 Clean Up
To destroy all resources created by Terraform:
```bash
terraform destroy -auto-approve
```

---

## 🧾 Author
**👨‍💻 Mohd Shahnawaz Akhtar**  

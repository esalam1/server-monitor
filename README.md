# ☁️ Project: Azure Cloud Monitor

## 📋 The "Runbook" (Workflow Sheet)
| Step | Action | Command / Tool | Status | Challenges & Fixes |
| :--- | :--- | :--- | :--- | :--- |
| **1** | **Infrastructure** | `az vm create` | ✅ Done | **Challenge:** `SkuNotAvailable` in Sweden Central.<br>**Fix:** Switched to `Standard_B2s_v2` hardware. |
| **2** | **Configuration** | `ssh azureuser@<IP>` | ✅ Done | **Challenge:** Authenticating securely.<br>**Fix:** Used SSH Key pairs (no passwords). |
| **3** | **Scripting** | `nano monitor.sh` | ✅ Done | **Challenge:** Syntax errors in Bash.<br>**Fix:** Debugged missing quotes in echo statements. |
| **4** | **Automation** | `chmod +x` | ✅ Done | **Challenge:** Permission denied.<br>**Fix:** Modified file execution rights. |
| **5** | **Version Control** | `git push` | ✅ Done | **Challenge:** WSL Browser Auth failed.<br>**Fix:** Implemented GitHub Token authentication manually. |

## 🛠️ Visual Workflow
```mermaid
graph TD
    User((Me)) -->|CLI Command| Azure[Azure Cloud]
    Azure -->|Deploys| VM[Linux Server]
    User -->|SSH Connection| VM
    VM -->|Runs| Script[monitor.sh]
    Script -->|Logs to| File[server_status.log]
    User -->|Git Push| GitHub[Code Repository]

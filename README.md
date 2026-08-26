# Experiment 4 — CI/CD Pipeline and Prompt-Based Automation

## Linux Health Monitoring with GitHub Actions and Agile Automation

This experiment demonstrates an integrated DevOps automation workflow using:

- Linux shell scripting
- Git and GitHub
- GitHub Actions
- CI/CD automation
- Automated testing
- GitHub Project Board
- Prompt-based report generation
- Automated health reports
- GitHub Actions artifacts
- GitHub GraphQL API

---

## 1. Project Objective

The objective of this experiment is to build an automated Linux system monitoring workflow.

The system:

1. Collects Linux system health information.
2. Generates a health report.
3. Runs automated tests.
4. Performs prompt-based analysis.
5. Generates an actionable summary.
6. Executes automatically using GitHub Actions.
7. Uploads reports as CI/CD artifacts.
8. Updates the GitHub Agile Project status automatically.

---

## 2. Project Structure

```text
project-auto/
│
├── .github/
│   └── workflows/
│       └── ci.yml
│
├── scripts/
│   ├── health_monitor.sh
│   └── summarize_report.sh
│
├── tests/
│   └── test_health_monitor.sh
│
├── reports/
│   ├── health_report.txt
│   └── ai_summary.txt
│
├── logs/
│
└── README.md
```

---

## 3. Technologies Used

| Technology | Purpose |
|---|---|
| Linux | Execution environment |
| Bash | Automation scripts |
| Git | Version control |
| GitHub | Source code repository |
| GitHub Actions | CI/CD pipeline |
| GitHub Projects | Agile task management |
| GitHub CLI | GitHub automation |
| GraphQL API | GitHub Project automation |
| Shell scripting | Monitoring and automation |

---

# 4. Linux Health Monitoring

The main monitoring script is:

```text
scripts/health_monitor.sh
```

It collects information about the Linux system and generates a health report.

### Run the health monitor

```bash
./scripts/health_monitor.sh
```

The generated report is:

```text
reports/health_report.txt
```

View the report:

```bash
cat reports/health_report.txt
```

---

# 5. Create Required Directories

The health monitoring script requires the `reports` directory.

Create the required directories:

```bash
mkdir -p reports
mkdir -p logs
```

This prevents errors such as:

```text
reports/health_report.txt: No such file or directory
```

---

# 6. Make Scripts Executable

Before running the scripts:

```bash
chmod +x scripts/*.sh
chmod +x tests/*.sh
```

---

# 7. Prompt-Based Automation

The prompt-based automation script is:

```text
scripts/summarize_report.sh
```

It analyzes the generated health report and creates an actionable summary.

Run:

```bash
./scripts/summarize_report.sh
```

The generated file is:

```text
reports/ai_summary.txt
```

View the summary:

```bash
cat reports/ai_summary.txt
```

The summary can contain:

- CPU status
- Memory status
- Disk status
- Detected warnings
- System problems
- Actionable recommendations
- Overall system status

> The current implementation does not require an external AI API. The analysis is performed locally using shell scripting and predefined rules/prompts.

---

# 8. Automated Testing

The automated test script is:

```text
tests/test_health_monitor.sh
```

Run:

```bash
./tests/test_health_monitor.sh
```

The test verifies that the health monitoring process generated the required report.

A successful test should return:

```text
0
```

---

# 9. Complete Local Execution

The complete local workflow can be executed using:

```bash
chmod +x scripts/*.sh
chmod +x tests/*.sh

mkdir -p reports
mkdir -p logs

./scripts/health_monitor.sh

./tests/test_health_monitor.sh

./scripts/summarize_report.sh
```

View the health report:

```bash
cat reports/health_report.txt
```

View the prompt-based summary:

```bash
cat reports/ai_summary.txt
```

---

# 10. Git Repository

Initialize Git if required:

```bash
git init
```

Set the main branch:

```bash
git branch -M main
```

Add the GitHub repository:

```bash
git remote add origin git@github.com:thirumurugan26120134ssn-coder/EXP-4.git
```

Check the remote:

```bash
git remote -v
```

---

# 11. Commit and Push

Check the repository:

```bash
git status
```

Add files:

```bash
git add .
```

Commit:

```bash
git commit -m "Add Linux health monitoring CI/CD automation"
```

Push:

```bash
git push -u origin main
```

For future changes:

```bash
git add .
git commit -m "Update CI/CD automation"
git push origin main
```

---

# 12. GitHub Actions CI/CD

The workflow file is:

```text
.github/workflows/ci.yml
```

The workflow is automatically triggered by:

1. Push to `main`
2. Scheduled execution
3. Manual execution

---

## 12.1 Push Trigger

```yaml
on:
  push:
    branches:
      - main
```

Whenever changes are pushed to the `main` branch, GitHub Actions starts the pipeline.

---

## 12.2 Scheduled Trigger

```yaml
schedule:
  - cron: "0 9 * * *"
```

This runs the workflow every day at:

```text
09:00 UTC
```

---

## 12.3 Manual Trigger

The workflow also contains:

```yaml
workflow_dispatch:
```

This allows manual execution.

Go to:

```text
GitHub
→ EXP-4
→ Actions
→ Linux Health Monitor CI/CD
→ Run workflow
```

---

# 13. CI/CD Pipeline

The complete pipeline is:

```text
Git Push / Scheduled Job
          ↓
Checkout Repository
          ↓
Make Scripts Executable
          ↓
Create Required Directories
          ↓
Run Health Monitor
          ↓
Run Automated Tests
          ↓
Generate Prompt-Based Summary
          ↓
Update Agile Project
          ↓
Upload Reports
```

---

# 14. GitHub Actions Workflow

The workflow contains the following main stages:

```text
Stage 1 → Checkout repository
Stage 2 → Make scripts executable
Stage 3 → Create directories
Stage 4 → Run health monitor
Stage 5 → Run automated tests
Stage 6 → Generate prompt-based summary
Stage 7 → Update Agile Project
Stage 8 → Upload reports
```

---

# 15. GitHub Actions Permissions

The workflow uses:

```yaml
permissions:
  contents: write
  issues: write
  pull-requests: write
  repository-projects: write
```

These permissions allow GitHub Actions to interact with the repository, issues, pull requests, and project-related operations where supported.

---

# 16. GitHub Project Automation

The experiment uses GitHub Project #4.

The main task is:

```text
Issue #1
Linux Health Monitor CI/CD
```

The Project contains the following statuses:

```text
Backlog
Ready
In progress
In review
Done
```

After successful CI/CD execution, the workflow updates the issue's Project status to:

```text
Done
```

---

# 17. Agile Automation Flow

The Agile automation works as follows:

```text
Developer Pushes Code
          ↓
GitHub Actions Starts
          ↓
Health Monitor Runs
          ↓
Automated Tests Run
          ↓
Tests Successful
          ↓
GraphQL Mutation
          ↓
GitHub Project #4
          ↓
Issue #1
          ↓
Status = Done
```

If the pipeline fails, the workflow can instead report the failure and leave the task for investigation.

---

# 18. GitHub Project IDs

The current GitHub Project configuration is:

```text
Project ID:
PVT_kwHOElnf_M4BhfnL

Project Item ID:
PVTI_lAHOElnf_M4BhfnLzg4DISs

Status Field ID:
PVTSSF_lAHOElnf_M4BhfnLzhgbKUs

Done Option:
98236657
```

These values are specific to the current GitHub Project.

If another Project is used, these IDs must be changed.

---

# 19. GitHub GraphQL API

The workflow uses the GitHub GraphQL mutation:

```text
updateProjectV2ItemFieldValue
```

The mutation updates the status of the Project item.

Example:

```text
Project ID
      ↓
Project Item ID
      ↓
Status Field ID
      ↓
Done Option ID
      ↓
Project status becomes Done
```

---

# 20. GitHub Token

The repository contains a secret:

```text
PROJECT_TOKEN
```

The workflow accesses it using:

```yaml
env:
  GH_TOKEN: ${{ secrets.PROJECT_TOKEN }}
```

The actual token must never be written directly inside:

```text
.github/workflows/ci.yml
```

The token should be stored in:

```text
GitHub Repository
→ Settings
→ Secrets and variables
→ Actions
→ Repository secrets
```

Add:

```text
Name:
PROJECT_TOKEN

Value:
<GitHub token>
```

The token requires the appropriate project permissions to modify GitHub Projects.

---

# 21. Prompt-Based Analysis

The prompt-based automation receives:

```text
reports/health_report.txt
```

as input.

It produces:

```text
reports/ai_summary.txt
```

The processing flow is:

```text
Health Report
      ↓
Read System Information
      ↓
Analyze CPU
      ↓
Analyze Memory
      ↓
Analyze Disk
      ↓
Detect Warnings
      ↓
Generate Recommendations
      ↓
Create AI Summary
```

---

# 22. Example Prompt-Based Summary

Example output:

```text
======================================
      AI HEALTH MONITOR SUMMARY
======================================

INPUT REPORT ANALYSIS
---------------------

CPU Status: NORMAL
Memory Status: WARNING
Disk Status: NORMAL

DETECTED CONDITIONS
-------------------

WARNING: High memory usage detected.

ACTIONABLE RECOMMENDATIONS
--------------------------

1. Monitor CPU and memory periodically.
2. Investigate processes consuming excessive resources.
3. Clean unnecessary files if disk usage becomes high.

OVERALL RESULT
--------------

Automated health analysis completed.

Generated by Prompt-Based Automation
======================================
```

---

# 23. External API Requirement

An external AI API is not required for the basic experiment.

The current system uses:

```text
Linux
  +
Bash
  +
Git
  +
GitHub
  +
GitHub Actions
  +
GitHub GraphQL API
```

The GitHub GraphQL API is used for Agile Project automation.

The health analysis and prompt-based summary can be performed locally using shell scripting and predefined rules.

---

# 24. Optional External AI Integration

A real LLM can be added later if required.

Possible architecture:

```text
Health Report
      ↓
Prompt
      ↓
External LLM API
      ↓
AI Analysis
      ↓
Actionable Recommendations
      ↓
ai_summary.txt
      ↓
GitHub Artifact
```

Possible AI services include:

- OpenAI API
- Google Gemini API
- Azure OpenAI
- Other compatible LLM APIs

However, this is an optional enhancement and is not required for demonstrating the basic CI/CD experiment.

---

# 25. GitHub Actions Artifacts

The pipeline uploads generated reports as artifacts.

The reports include:

```text
health_report.txt
ai_summary.txt
```

After a successful workflow:

```text
GitHub
→ EXP-4
→ Actions
→ Linux Health Monitor CI/CD
→ Select Workflow Run
→ Artifacts
```

The reports can then be downloaded and inspected.

---

# 26. Verify CI/CD Pipeline

After pushing the project:

```bash
git add .
git commit -m "Update CI/CD automation"
git push origin main
```

Open:

```text
GitHub
→ EXP-4
→ Actions
→ Linux Health Monitor CI/CD
```

The expected pipeline is:

```text
Checkout repository          ✓
Make scripts executable     ✓
Create directories          ✓
Run health monitor          ✓
Run automated tests         ✓
Generate AI summary         ✓
Update Agile Project        ✓
Upload health reports       ✓
```

---

# 27. Verify Health Report

After the workflow executes, verify:

```text
reports/health_report.txt
```

Example:

```bash
cat reports/health_report.txt
```

---

# 28. Verify AI Summary

Run:

```bash
cat reports/ai_summary.txt
```

The output should contain the analysis and recommendations generated by the prompt-based automation.

---

# 29. Verify Agile Dashboard

Open GitHub Project #4.

Find:

```text
Issue #1
Linux Health Monitor CI/CD
```

After a successful pipeline, the issue should show:

```text
Done
```

Expected flow:

```text
GitHub Actions
      ↓
Pipeline Successful
      ↓
GraphQL API
      ↓
GitHub Project
      ↓
Issue #1
      ↓
Done
```

---

# 30. Useful Git Commands

Check Git status:

```bash
git status
```

Check remote:

```bash
git remote -v
```

View commit history:

```bash
git log --oneline
```

Push changes:

```bash
git push origin main
```

---

# 31. Useful Automation Commands

Run health monitoring:

```bash
./scripts/health_monitor.sh
```

Run tests:

```bash
./tests/test_health_monitor.sh
```

Run prompt-based automation:

```bash
./scripts/summarize_report.sh
```

View health report:

```bash
cat reports/health_report.txt
```

View AI summary:

```bash
cat reports/ai_summary.txt
```

Check GitHub authentication:

```bash
gh auth status
```

---

# 32. Troubleshooting

## Problem: reports directory does not exist

Error:

```text
reports/health_report.txt: No such file or directory
```

Solution:

```bash
mkdir -p reports
mkdir -p logs
```

Then run:

```bash
./scripts/health_monitor.sh
```

---

## Problem: Permission denied

Make the scripts executable:

```bash
chmod +x scripts/*.sh
chmod +x tests/*.sh
```

---

## Problem: GitHub authentication failure

Check:

```bash
gh auth status
```

For Git operations using SSH:

```bash
git remote -v
```

The remote should look similar to:

```text
origin  git@github.com:thirumurugan26120134ssn-coder/EXP-4.git
```

---

## Problem: GitHub Project API permission error

If GraphQL reports:

```text
INSUFFICIENT_SCOPES
```

the GitHub token does not have sufficient Project permissions.

Create or update the GitHub token with the required Project access and update:

```text
PROJECT_TOKEN
```

in the repository secrets.

---

# 33. Complete Experiment Workflow

The complete experiment works as follows:

```text
                 Developer
                     │
                     ↓
                Git Commit
                     │
                     ↓
                Git Push
                     │
                     ↓
             GitHub Repository
                     │
                     ↓
             GitHub Actions
                     │
                     ↓
          Linux Health Monitoring
                     │
                     ↓
             Automated Testing
                     │
                     ↓
          Prompt-Based Analysis
                     │
                     ↓
          Actionable AI Summary
                     │
                     ↓
             Agile Automation
                     │
                     ↓
             GitHub Project
                     │
                     ↓
                  Issue #1
                     │
                     ↓
                   Done
                     │
                     ↓
             Report Artifacts
```

---

# 34. Experiment Requirements Covered

## CI/CD Pipeline

Implemented using:

```text
GitHub Actions
```

The pipeline automatically:

- Checks out source code.
- Executes shell scripts.
- Runs automated tests.
- Generates reports.
- Updates the Agile Project.
- Uploads artifacts.

## Scheduled Jobs

Implemented using GitHub Actions cron:

```yaml
schedule:
  - cron: "0 9 * * *"
```

## Agile Task Automation

Implemented using GitHub GraphQL API:

```text
updateProjectV2ItemFieldValue
```

The successful pipeline updates Issue #1 to:

```text
Done
```

## Prompt-Based Automation

Implemented using:

```text
scripts/summarize_report.sh
```

The script analyzes:

```text
reports/health_report.txt
```

and generates:

```text
reports/ai_summary.txt
```

## Report Sharing

The generated reports are uploaded as GitHub Actions artifacts.

---

# 35. Learning Outcomes

After completing this experiment, the following concepts are demonstrated:

- Linux shell scripting
- Linux system monitoring
- Scheduled automation
- Git version control
- GitHub repository management
- GitHub Actions
- CI/CD pipelines
- Automated testing
- GitHub Project Boards
- Agile workflow automation
- GraphQL API usage
- Prompt-based automation
- Automated report generation
- CI/CD artifact management
- DevOps workflow integration

---

# 36. Future Improvements

Possible improvements include:

1. Add a `Blocked` status for failed pipelines.
2. Automatically move failed tasks to `Blocked`.
3. Send reports through email.
4. Add Slack notifications.
5. Add Microsoft Teams notifications.
6. Integrate a real LLM API.
7. Add configurable CPU thresholds.
8. Add configurable memory thresholds.
9. Add configurable disk thresholds.
10. Create a web-based monitoring dashboard.
11. Add Docker containerization.
12. Deploy the monitoring system to an Azure VM.
13. Add predictive anomaly detection.
14. Automatically create GitHub Issues for critical errors.
15. Store historical health reports.
16. Create graphs showing CPU, memory, and disk trends.

---

# 37. Final Architecture

The final system architecture is:

```text
                         ┌───────────────────┐
                         │   Linux System    │
                         └─────────┬─────────┘
                                   │
                                   ↓
                         ┌───────────────────┐
                         │ health_monitor.sh │
                         └─────────┬─────────┘
                                   │
                                   ↓
                         ┌───────────────────┐
                         │ Health Report     │
                         │ health_report.txt │
                         └─────────┬─────────┘
                                   │
                                   ↓
                         ┌───────────────────┐
                         │ Prompt Automation │
                         │ summarize_report  │
                         └─────────┬─────────┘
                                   │
                                   ↓
                         ┌───────────────────┐
                         │ AI Summary        │
                         │ ai_summary.txt     │
                         └─────────┬─────────┘
                                   │
                                   ↓
                         ┌───────────────────┐
                         │ Automated Tests   │
                         └─────────┬─────────┘
                                   │
                              PASS │ FAIL
                                   │
                                   ↓
                         ┌───────────────────┐
                         │ GitHub Actions    │
                         └─────────┬─────────┘
                                   │
                                   ↓
                         ┌───────────────────┐
                         │ GraphQL API       │
                         └─────────┬─────────┘
                                   │
                                   ↓
                         ┌───────────────────┐
                         │ GitHub Project    │
                         │ Issue #1          │
                         └─────────┬─────────┘
                                   │
                                   ↓
                              ┌─────────┐
                              │  Done   │
                              └─────────┘
```

---

# 38. Conclusion

This experiment successfully integrates Linux automation, GitHub, CI/CD, automated testing, Agile project management, prompt-based analysis, GitHub GraphQL API, and automated reporting.

The final workflow provides an automated process from:

```text
System Monitoring
       ↓
Health Report
       ↓
Automated Testing
       ↓
Prompt-Based Analysis
       ↓
Actionable Summary
       ↓
Agile Task Update
       ↓
GitHub Project
       ↓
CI/CD Artifact
```

The experiment demonstrates how DevOps tools can be combined to create an automated monitoring and reporting system with minimal manual intervention.

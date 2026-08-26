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

---

# 1. Project Objective

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

# 2. Project Structure

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

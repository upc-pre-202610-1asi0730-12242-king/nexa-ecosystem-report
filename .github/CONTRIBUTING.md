# Contributing to Nexa Ecosystem Report

Welcome to the **Nexa Ecosystem Report** repository. As a Docs-as-Code project, we maintain the academic report using standard software engineering conventions. Please follow these guidelines for all contributions.

## Branching Model (GitFlow)

We use the GitFlow model to coordinate documentation versions:

- **`main`**: Contains the stable, validated milestones (`v1.0.0`, `v2.0.0`, `v2.6.0`).
- **`develop`**: The integration branch for current sprint changes.
- **`feature/ch<num>-<short-description>`**: Functional branches for writing chapters.
  * *Example:* `feature/ch4-database-uml-diagrams`
- **`hotfix/<short-description>`**: Urgent styling or layout patches.
  * *Example:* `hotfix/final-formatting-pass`

### Branch Workflow
1. Branch out from `develop`.
2. Apply changes and commit following our conventions.
3. Validate markdown rendering and image paths locally.
4. Merge into `develop` with `--no-ff` (no fast-forward) and delete the feature branch.
5. Merge `develop` into `main` only for release tag closures.

---

## Commit Message Format

We strictly enforce **Conventional Commits 1.0.0** to track report progress:

```text
<type>(<scope>): <short action summary>

Context:
- What area, milestone or branch this commit belongs to.

Changes:
- What was changed.
- What was added, corrected or normalized.

Reason:
- Why the change was necessary.

Validation:
- What was reviewed or checked before committing.
```

### Allowed Types
- **`docs`**: Main chapter text modifications.
- **`fix`**: Formatting, caption, typo, or citation corrections.
- **`feat`**: New sections, assets, or diagram additions.
- **`style`**: Markdown presentation, spacing, or table edits.
- **`chore`**: Maintenance, directory updates, or config files.
- **`release`**: Version tagging or release notes updates.

### Allowed Scopes
`front-matter`, `ch1`, `ch2`, `ch3`, `ch4`, `ch5`, `annexes`, `assets`, `diagrams`, `ux`, `jira`, `sprint-1`, `sprint-2`, `sprint-3`, `scm`, `deployment`, `validation`, `bibliography`, `release`, `docs-as-code`, `formatting`.

---

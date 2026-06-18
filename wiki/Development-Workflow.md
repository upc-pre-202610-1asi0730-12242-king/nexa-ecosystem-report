# Development Workflow

To coordinate documentation releases and maintain academic traceability, the King team adheres strictly to the **GitFlow** branching model.

## Branch Conventions

1. **`main`**: Stable, validated release milestones. Direct edits are prohibited.
2. **`develop`**: Integration branch for current work in progress.
3. **`feature/*`**: Topic branches created for specific chapter edits or asset reorganizations.
   - *Naming syntax:* `feature/ch<num>-<short-description>` (e.g., `feature/ch2-needfinding-ux-updates`)
4. **`hotfix/*`**: Emergency styling, layout, or spelling corrections.
   - *Naming syntax:* `hotfix/<short-description>` (e.g., `hotfix/final-formatting-pass`)

## Feature Lifecycle

1. Checkout a new branch from `develop`:
   ```bash
   git checkout develop
   git checkout -b feature/ch3-backlog-user-stories
   ```
2. Commit changes following the commit message format.
3. Switch back to `develop` and merge:
   ```bash
   git checkout develop
   git merge --no-ff feature/ch3-backlog-user-stories
   git branch -D feature/ch3-backlog-user-stories
   ```
4. Do not push unmerged or open feature branches to remote. Keep them local until closed.

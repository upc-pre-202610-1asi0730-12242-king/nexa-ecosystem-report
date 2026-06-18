# Pull Request Guidelines

Before submitting or approving a Pull Request (PR) to merge changes from `develop` into `main`, verify the following compliance list.

## PR Checklist

### 1. Style & Markdown Rendering
- [ ] No raw HTML tags are present (except centering structures).
- [ ] Tables are aligned and readable.
- [ ] Relative paths are used for images and links.

### 2. Assets & Captions
- [ ] Every image has a caption note underneath in italics starting with `> *Nota.*`.
- [ ] Image assets exist in the correct folders under `report/assets/images/`. No absolute local paths.

### 3. Structural Consistency
- [ ] Headings follow a logical hierarchy.
- [ ] Outlined sections correspond with cycles.
- [ ] Bibliography links are updated and operational.

## Review Flow
1. Open a PR from `develop` to `main`.
2. Assign at least two reviewers.
3. Once approved, merge using `git merge --no-ff` (no fast-forward) locally, tag, and push.

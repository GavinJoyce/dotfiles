# Smart Git Commit
Intelligently handle git commits with automatic branch creation, staging, committing, and pushing.

## CRITICAL RULE
**NEVER COMMIT DIRECTLY TO MASTER/MAIN** - Always create a feature branch first!

## Instructions

1. **Check current branch status**:
   - Run `git status` to see current changes
   - Run `git branch --show-current` to get the current branch name

2. **ENFORCE BRANCH PROTECTION**:
   - **If currently on "master" or "main" branch, you MUST create a new feature branch BEFORE committing**
   - Do NOT proceed with staging or committing until you have created and switched to a feature branch
   - Branch name should follow pattern: `gj/some-feature` where "some-feature" is a short descriptive name based on the changes
   - Use `git checkout -b gj/feature-name` to create and switch to the new branch

3. **Check GitHub PR status for existing feature branches**:
   - If on an existing feature branch (not main/master), check if there's a PR using `gh pr list --head current-branch`
   - If PR exists and is merged, **STOP and warn the user** - do not commit to merged branches
   - If PR exists but is open/unmerged, proceed to add another commit to the existing branch

4. **Stage and commit changes**:
   - Run `git diff` to understand the changes being made
   - Stage all changes with `git add .`
   - Create a short, descriptive commit message that summarizes what was changed/added/fixed
   - Commit with `git commit -m "descriptive message"`

5. **Push to GitHub**:
   - Push the changes to GitHub with `git push -u origin branch-name`
   - If it's a new branch, set up upstream tracking

6. **Create Pull Request (for new branches only)**:
   - If this is a new branch (created in step 3), use `gh pr create` to create a pull request
   - If adding to existing unmerged branch, skip PR creation as one already exists
   - Title should summarize the changes in imperative mood
   - Body should include:
     - ## Summary: Brief description of what was changed
     - ## Changes: Bullet points of specific modifications
     - ## Testing: How to verify the changes work

## Requirements
- **NEVER EVER commit directly to master or main** - Always create a feature branch first
- Always create meaningful branch names based on the actual changes
- Write clear, concise commit messages in imperative mood
- Ensure all changes are properly staged before committing
- **NEVER commit to merged branches** - warn user and stop if branch PR is merged
- Handle both new branches and existing branches appropriately
- Only create PRs for new branches, not when adding commits to existing unmerged branches
- Create informative PR descriptions that help reviewers understand the changes
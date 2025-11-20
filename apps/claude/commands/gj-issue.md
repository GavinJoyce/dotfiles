# Create GitHub Issue from Conversation
Create a concise GitHub issue from the current conversation context, designed for a future AI coding agent to implement.

## Instructions

1. **Analyze the conversation**:
   - Review the entire conversation to understand what was discussed
   - Identify the core problem, feature request, or task
   - Note any key constraints or preferences mentioned

2. **Gather repository context**:
   - Run `git remote get-url origin` to confirm the target repository
   - Run `git branch --show-current` to note the current branch for context

3. **Create the GitHub issue**:
   - Use `gh issue create` with a clear title and body
   - Title should be concise, actionable, and in imperative mood (e.g., "Add dark mode toggle to settings")

   The issue body should follow this structure:

   ```markdown
   ## Context
   [1-2 sentences on why this issue exists]

   ## Goal
   [Clear description of what needs to be accomplished - focus on the "what", not the "how"]

   ## Notes
   [Any important constraints, preferences, or context the AI agent should know - optional, omit if not needed]
   ```

4. **Apply labels and create**:
   - Apply the `claude-task` label using `--label claude-task`
   - If the label doesn't exist, create the issue without it and note this to the user
   - Use a HEREDOC to pass the body to ensure correct formatting:

   ```bash
   gh issue create --title "Issue title" --label "claude-task" --body "$(cat <<'EOF'
   ## Context
   ...issue body here...
   EOF
   )"
   ```

5. **Return the result**:
   - Display the created issue URL

## Requirements
- Keep it brief - trust the AI coding agent to explore the codebase and figure out implementation details
- Focus on capturing the intent and desired outcome, not step-by-step instructions
- Only include specific file paths if they were explicitly discussed as important
- Keep the title concise but descriptive (under 72 characters if possible)
- If no clear task emerged from the conversation, ask the user to clarify before creating the issue


```markdown
# Push and Build Script

This shell script automates the process of pushing changes to a Git repository and triggering a build for a Jenkins job.

## Usage

1. **Clone the Repository:**
   ```bash
   git clone https://github.com/Nish1102/shellscripting-practice.git
   ```

2. **Navigate to the Directory:**
   ```bash
   cd shellscripting-practice/Day-03
   ```

3. **Make the Script Executable:**
   ```bash
   chmod +x push_and_build.sh
   ```

4. **Edit Script (Optional):**
   If needed, modify the script to specify your Git repository URL, branch name, and Jenkins job name.

5. **Run the Script:**
   ```bash
   ./push_and_build.sh
   ```

## Script Details

- The script pushes changes to the specified Git repository and triggers a build for the specified Jenkins job.
- Ensure you have configured Jenkins to accept remote builds via the Jenkins API token.
- Replace the placeholder values in the script with your actual Git repository URL, branch name, Jenkins server URL, username, and API token.

### Note

- Make sure your Jenkins job is configured to monitor the repository and trigger builds automatically when changes are pushed.

```

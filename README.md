# jrny

My personal command-line journal utilizing the power of git.

`jrny` adds entries to the journal. It can work with a local folder, however, if
if detects that the folder is a git repository, it will automatically sync journal entries
with the default remote.

It is at a very early stage and may disappoint you. If you are looking for something mature,
check out [jrnl](https://github.com/jrnl-org/jrnl).

# Demo

```sh
$ export JRNY_ROOT=~/jrnies

$ jrny "Let's try another note-taking tool"
Entry added to ~/jrnies/2025/2025-05/2025-05-10.md
>>> Git repository not found in ~/jrnies, skipping git operations.

$ jrny-show
Journal for 2025-05-10
-------------------------
09:31 / my-host / /home/maximg/jrny
 * Let's try another note-taking tool
```

If there are conflicts when syncing with the remote, try `jrny-resolve`.

# Setup

1. **Clone the CLI repository**

   ```bash
   git clone https://github.com/maximg/jrny-cli.git
   cd jrny-cli
   # If needed, set execute permissions
   chmod a+x bin/jrny*
   ```
2. **Update PATH**

   ```bash
   # Add this to your .bashrc or .bash_profile:
   export PATH=$PATH:<path to jrny-cli>/bin
   ```
3. **(Optional) Configure your journal directory**
   By default, `jrny` and `jrny-show` read and write under the current working directory. To override, set:

   ```bash
   export JRNY_ROOT="$HOME/my-jrny"
   ```

# Usage

* **Add a new entry**

  ```bash
  jrny "Installed jrny"
  ```

  Appends an entry with timestamp, hostname and working directory, then commits and syncs via Git (if online).

* **Show entries**

  ```bash
  jrny-show [YYYY-MM-DD]
  ```

  If no date is provided, shows today’s file; otherwise displays the specified day’s entries.

* **Resolve conflicts**

  ```bash
  jrny-resolve
  ```

  If there are conflicts in the journal repository, resolves them by accepting both changes.

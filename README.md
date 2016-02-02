# Steps for local setup
## Step 1

- Open folder: `My Computer`
- Locate xampp htdocs ex. `C:\xampp\htdocs`
- Create `NEW FOLDER`
- Rename it -> `flawless`

## Step 2

- Click `Windows Icon` and type `GIT BASH` in the search
- Open this application
- `Git Bash`

## Step 3

- Locate the folder path type this: `cd c:/xampp/htdocs/flawless`

## Step 4

- Create a local copy of file, type this: `git clone git@github.com:viiworks/flawless.git .`
- Wait till the cloning is `done`

## Step 5

- Open a web browser application (Firefox, Chrome)
- Locate database configuration, type this in the url: `localhost/phpmyadmin/import.php`
- After entering on the page, click the `Browse`
- To locate the database import file, type this or locate it from here: `C:\xampp\htdocs\ocamposfj\initial_databse`
- Select this file `flawless_db`
- Click the button `Open`
- Scroll down and click the button `Go`



# Steps in updating of files 
## Step 1

- Open this application
- `Git Bash`

## Step 2

- Go to local saved project folder, type this: `cd c:/xampp/htdocs/flawless`

## Step 3

- Pulls all the files from server (git server files to local files), type this: `git pull`

## Step 4

- Start all updates, edits, bug fixing, enhancements or adjustments to the files that can be found here: `C:\xampp\htdocs\flawless\`

## Step 5

- Take note and finalize all the updates, edits, bug fixing, enhancements or adjustments made in local files

## Step 6

- Initiates the transfer of files (local files to git server files), `type this: add --all`

## Step 7

- Sends the updates to the git server, type this: `git push`

## Step 8

- Just to check if local files are up-to-date, type this: `git status`

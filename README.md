# Steps for local setup
## Step 1

- Click `Windows Icon` and type `GIT BASH` in the search
- Open this application
- `Git Bash`

## Step 2

- Locate the folder path type this: `cd c:xampp/htdocs`

## Step 4

- Create a local copy of file, type this: `git clone git@github.com:viiworks/flawless.git flawless`
- Wait till the cloning is `done`
- Note: The keyword after *.git will be the folder name of your repository

## Step 5

- Open a web browser application (Firefox, Chrome)
- Locate database configuration, type this in the url: `localhost/phpmyadmin/server_import.php`
- After entering on the page, click the `Browse`
- To locate the database import file, type this or locate it from here: `C:\xampp\htdocs\ocamposfj\initial_databse`
- If there's folder named with a date format please select the latest date
- Select the file `flawless_db`
- Click the button `Open`
- Scroll down and click the button `Go`



# Steps in updating of files 
## Step 1

- Open this application
- `Git Bash`

## Step 2

- Go to local saved project folder, type this: `cd c:xampp/htdocs/flawless`

## Step 3

- Pulls all the files from server (git server files to local files), type this: `git pull`
- If you get rejected by the server because by the server and requesting to commit your files, this because of the same file is being pulled from the server Go to `Step 6` immediately
- If you saw `Developer101@officePC /c/xampp/htdocs/flawless (master|MERGING)` on your command line git bash, please check the CONFLICT listed or do `git status` to check
- These CONFLICT files should be fixed, this CONFLICT is marked in a file with clear line breaks (after editing the conflict, go to `Step 6`):

    <<<<<<<<<< HEAD:mergetest
	This is my third line
	========
	This is a fourth line I am adding
	>>>>>>>>>> 875sd7f805ds76g5d87f6g5d897fg59d8fg:mergetest

- No Error? Go to Step 4

## Step 4

- Start all updates, edits, bug fixing, enhancements or adjustments to the files that can be found here: `C:\xampp\htdocs\flawless\`

## Step 5

- Take note and finalize all the updates, edits, bug fixing, enhancements or adjustments made in local files

## Step 6

- Include the edits to tracked files to be able to create version on our commit by using `git add --all`
- After doing changes please commit all the changes by using `git commit -m "<the description of you've done for this vertion>"`

## Step 7

- Sends the updates to the git server, type this: `git push`
- If you get rejected by the server, Go to `Step 3` immediately

## Step 8

- Just to check if local files are up-to-date, type this: `git status`

# intro-cs changes

This process shows you how to work with github: primarily, pushing changes in files on your computer to github, and downloading files from github TO your computer! It's a great marketplace :) 

>NOTE: As of 2021, you need to have higher-security authentication than a simple password. use a [PAT](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/managing-your-personal-access-tokens#creating-a-personal-access-token-classic) rather than a password.You can also use an SSH key which is more secure, but more complicated to set up. I will walk you through the PAT process in class; if you are not in class you will be prompted to set it up either when you git clone (for private repos) or when you git push (for public repos).


## 1. How to copy down a git repository to your local repository! 

Get the URL of the github repository you want to download. You can find it by clicking on the green "Code" button on the homepage of a repository (example pic below is this repository: https://github.com/ifenghm/intro-cs). 

<img width="648" alt="Screen Shot 2022-10-15 at 5 05 26 PM" src="https://user-images.githubusercontent.com/113121183/196007558-42bc6d1f-5f50-45cd-a340-027e179e8d95.png">

Go to where you save your projects in Terminal, and type `git clone <GIT URL WHEN YOU CLICK CODE>`  

```
feng@IFeng ~ %cd ~/Documents/Processing
feng@IFeng Processing %git clone git@github.com:ifenghm/intro-cs.git 
Cloning into 'intro-cs'...
remote: Enumerating objects: 13, done.
remote: Counting objects: 100% (13/13), done.
remote: Compressing objects: 100% (11/11), done.
remote: Total 13 (delta 2), reused 0 (delta 0), pack-reused 0
Receiving objects: 100% (13/13), done.
Resolving deltas: 100% (2/2), done.
``` 

## 2. How to push new changes to a certain repository via Terminal

We'll be doing this EVERY DAY so that we don't lose our work. 

1. Have new changes to push to the git repo! 
I moved my `custom_shape` directory into my git repository. 
```
feng@IFeng Processing %mv custom_shape intro-cs
``` 
- you could directly save your work here without moving as well. 

2. Go (`cd`) into your git repository and type `git add <whatever files you want to add>` to add these files to github. 
```
feng@IFeng Processing %cd intro-cs
feng@IFeng intro-cs %git add custom_shape/
feng@IFeng intro-cs %git status
On branch main
Your branch is up to date with 'origin/main'.

Changes to be committed:
  (use "git restore --staged <file>..." to unstage)
	new file:   custom_shape/custom_shape.pde

```

3. Type `git commit -m "YOUR MESSAGE HERE"` command 
```
feng@IFeng intro-cs %git commit -m "worked on custom shape" 
[main 794efb7] worked on custom shape
 1 file changed, 30 insertions(+)
 create mode 100644 custom_shape/custom_shape.pde
```

4. Type in `git push` 
```
feng@IFeng intro-cs %git push 
Enumerating objects: 5, done.
Counting objects: 100% (5/5), done.
Delta compression using up to 10 threads
Compressing objects: 100% (3/3), done.
Writing objects: 100% (4/4), 668 bytes | 668.00 KiB/s, done.
Total 4 (delta 0), reused 0 (delta 0), pack-reused 0
To github.com:ifenghm/intro-cs.git
   9e0dbc6..794efb7  main -> main
```

You should see your changes now! 

![woohoo!](http://www.reactiongifs.com/r/cheering_minions.gif)

## 3. How to sync other computers with your current work.

If you've already cloned a repo, and you want to download any changes you or anyone else has made, this is the step for you! 
Downloading the changes is called pulling. 
We'll be doing this EVERY DAY so we make sure our work is not lost. 
Run `git pull` command when have `cd`'d into your git repository:
```
feng@IFeng intro-cs %git pull 
```
Afterwards, it may say something like: 
```
remote: Enumerating objects: 13, done.
remote: Counting objects: 100% (13/13), done.
remote: Compressing objects: 100% (12/12), done.
remote: Total 12 (delta 7), reused 0 (delta 0), pack-reused 0
Unpacking objects: 100% (12/12), 3.88 KiB | 794.00 KiB/s, done.
From github.com:ifenghm/intro-cs
   794efb7..2bd7a80  main       -> origin/main
Updating 794efb7..2bd7a80
Fast-forward
 README.md | 78 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 78 insertions(+)
 create mode 100644 README.md
```
To show you what files changed, but it could also say something like: 
```
Already up to date.
```
If you have the latest version 

## EVERY DAY: Repeat steps 3 and 2 (we sync / pull first, then push!) after getting a repo.
- `git pull` 
- `git add <files>` 
- `git commit -m "my changes"` 
- `git push` 


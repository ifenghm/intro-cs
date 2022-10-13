# intro-cs

## 1. How to copy down your git repository to your local repository! 

Go to where you save your Processing projects in Terminal, and type `git clone <GIT URL WHEN YOU CLICK CODE>`  
```
feng@IFeng ~ %cd ~/Documents/Processing/intro_cs
feng@IFeng intro_cs %git clone git@github.com:ifenghm/intro-cs.git 
Cloning into 'intro-cs'...
remote: Enumerating objects: 13, done.
remote: Counting objects: 100% (13/13), done.
remote: Compressing objects: 100% (11/11), done.
remote: Total 13 (delta 2), reused 0 (delta 0), pack-reused 0
Receiving objects: 100% (13/13), done.
Resolving deltas: 100% (2/2), done.
``` 


## 2. How to push new changes to a certain repository. 

1. Have new changes to push to the git repo! 
I moved my `custom_shape` directory into my git repository. 
```
feng@IFeng intro_cs %mv custom_shape intro-cs
``` 
- or just save your work directly to the name of your github repository (it should be intro-cs).

2. Type `git add <whatever files you want to add>` to add these files to github. 
```
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

import os
confighome = "~/.config"# if yours is differenet, change this variable.
print("Backing up .config/awesome")
os.system("mv "+confighome+"/awesome "+confighome+"/awesome-backedup")
os.system("cp -r awesome "+confighome+"/")


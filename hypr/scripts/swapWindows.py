import json 
import subprocess 
import sys 

workspace1 = int(sys.argv[1])
workspace2 = 0
if(len(sys.argv) == 2):
    output = subprocess.run(["hyprctl", "activeworkspace", "-j"], capture_output=True).stdout 
    workspace2 = json.loads(output)["id"]
    print(workspace2)
else:
    workspace2 = int(sys.argv[2])
if(workspace2 == workspace1):
    sys.exit()
print(workspace1)
print(workspace2)
output = subprocess.run(["hyprctl", "clients", "-j"], capture_output=True)
res = output.stdout

windows = json.loads(res)


applicationSet1 = []
applicationSet2 = []


for window in windows:
    win = [window["workspace"]["id"], window["address"]]
    print(win[0])
    if(win[0] == workspace1):
        applicationSet1.append(win)
    elif(win[0] == workspace2):
        applicationSet2.append(win);

print(applicationSet1)
print(applicationSet2)


#hyprctl dispatch movetoworkspacesilent  1, "pid:231383"

for app in applicationSet1:
    subprocess.run(["hyprctl", "dispatch", "movetoworkspacesilent", str(workspace2)+ ",address:" + str(app[1])])

for app in applicationSet2:
    subprocess.run(["hyprctl", "dispatch" , "movetoworkspacesilent", str(workspace1)+ ",address:"+ str(app[1])])

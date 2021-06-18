#!/usr/bin/python3
#-*- coding: utf-8 -*-
print("00000000000000000000000000")
import subprocess
import signal
import sys
import time
import os
print("111111111111111111111111111")
os.chdir("./..")
os.system('ulimit -c unlimited')
sub_process_list = []
print("1111111111111start process1111111111111111111")
def close_all():
    for i in range(len(sub_process_list)):
        # 相当于 kill -9
        sub_process_list[i].kill()
        # 相当于 kill
        #sub_process_list[i].terminate()
print("2222222222222222222start process22222222222222222222222")
try:
    sub_process_list.append(subprocess.Popen('roscore'))
    sub_process_list.append(subprocess.Popen(['rviz', '-d', './rviz/navigation.rviz']))
    time.sleep(2)
    sub_process_list.append(subprocess.Popen(['./tf_broadcaster/build/tf_broadcaster']))
    sub_process_list.append(subprocess.Popen(['./move_base_test/build/devel/lib/move_base/move_base']))
    bz_robot = subprocess.Popen(['./move_base_test/build/devel/lib/map_server/map_server', './simulator/maps/dongchuang_map.yaml'])
    sub_process_list.append(bz_robot)
    
except Exception as e:
    print("\n\n EXCEPTION OCCURED:")
    print(e)
    close_all()

def signal_handler(signal, frame):
    close_all()
    sys.exit(0)
 

signal.signal(signal.SIGINT,signal_handler)



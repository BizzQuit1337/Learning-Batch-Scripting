import PySimpleGUI as sg
import os, sys

####functions
def txt_2_str(x):
    txt_2_str.str = []
    with open(x, 'r') as f:
        for line in f:
            txt_2_str.str.append(line)
    print(txt_2_str)


#####setup
state = True
counter = 0

####main event
while state:
    txt_2_str('check')
    counter = counter + 1 
    if counter == 10:
        state = False
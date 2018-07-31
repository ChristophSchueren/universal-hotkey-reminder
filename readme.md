# Univerasl hotkey reminder
## AHK based tool to show hotkeys for any configured program in a overlay window

### Development plan
1. Script to schow Tooltip with name of application running in foreground
2. Full screen overlay window showing Hotkeys
3. Configuration window to enter new hotkey combinations for specified program
4. Script to read keypress combinations entered by keyboard and show them (activAid AHK suite might have code for that feature)
    - extend activeAid as scripts manager???
5. Hotkey remap feature:
    - define common features expected of many programs and their default hotkey (VScode is an excellent base)
    - assign program specific hotkey to be remapped by AHK to default hotkey: AHK sends specific hotkey to program when default hotkey is pressed
    - alter hotkey view to show comment like "remepped to: F12 (default)"
    - show hotkey window list: usable default hotkeys in this program: ...
    - always capture and ask when unremapped default default hotkey is pressed outside of vscode ???



### libraries that might help
pAHKlight colletion
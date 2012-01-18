Case does not matter for gate creation.  
# Add Float  
__ID (Title on sign):__ `[AddFloat]`  
__Creation aliases:__ `[+]`, `[add]`, `[addfloat]`  
__Inputs:__ 
 
* `Number1`, Type: `Float`, Default: `0.0`   
* `Number2`, Type: `Float`, Default: `0.0`   
* `Number3`, Type: `Float`, Default: `0.0`   
* `Number4`, Type: `Float`, Default: `0.0`  

__Output:__ `Product`, Type: `Float`, Default: `0.0`  
__Permissions:__ `link.basic`, `link.gate.addfloat`  
# Add to Position  
__Description:__ Adds float values to a position.  
__ID (Title on sign):__ `[AddPos]`  
__Creation aliases:__ `[addpos]`, `[apos]`  
__Inputs:__ 
 
* `X`, Type: `Float`, Default: `0.0`   
* `Y`, Type: `Float`, Default: `0.0`   
* `Z`, Type: `Float`, Default: `0.0`   
* `Position`, Type: `Position`, Default: `[0.0,0.0,0.0]`  

__Output:__ `Position`, Type: `Position`, Default: `[0.0,0.0,0.0]`  
__Permissions:__ `link.basic`, `link.gate.addpos`  
# All >= 1.0  
__ID (Title on sign):__ `[All]`  
__Creation aliases:__ `[&&]`, `[all]`  
__Inputs:__ 
 
* `Number1`, Type: `Float`, Default: `0.0`   
* `Number2`, Type: `Float`, Default: `0.0`  

__Output:__ `True`, Type: `Float`, Default: `0.0`  
__Permissions:__ `link.basic`, `link.gate.all`  
# Any  
__ID (Title on sign):__ `[Any]`  
__Creation aliases:__ `[any]`, `[||]`  
__Inputs:__ 
 
* `Number1`, Type: `Float`, Default: `0.0`   
* `Number2`, Type: `Float`, Default: `0.0`   
* `Number3`, Type: `Float`, Default: `0.0`   
* `Number4`, Type: `Float`, Default: `0.0`  

__Output:__ `True`, Type: `Float`, Default: `0.0`  
__Permissions:__ `link.basic`, `link.gate.any`  
# Arrow Turret  
__Description:__ Fires arrows at a position.  
__ID (Title on sign):__ `[Turret]`  
__Creation aliases:__ `[arrow]`, `[turret]`  
__Inputs:__ 
 
* `Target`, Type: `Position`, Default: `[0.0,0.0,2.0]`   
* `Launch`, Type: `Float`, Default: `0.0`   
* `Speed`, Type: `Float`, Default: `1.2`   
* `Number`, Type: `Float`, Default: `1.0`   
* `Fire?`, Type: `Float`, Default: `0.0`   
* `Bounce?`, Type: `Float`, Default: `0.0`   
* `Spread`, Type: `Float`, Default: `6.0`  

__Permissions:__ `link.danger`, `link.gate.turret`  
# Button  
__Description:__ Goes to the high value then the low value. Can use sign arguments. Line 2: <high value>[,<low value>]  
__ID (Title on sign):__ `[Button]`  
__Creation aliases:__ `[b]`, `[but]`, `[button]`  
__Output:__ `Value`, Type: `Float`, Default: `0.0`  
__Permissions:__ `link.basic`, `link.gate.button`  
# Command Sender  
__ID (Title on sign):__ `[Command]`  
__Creation aliases:__ `[cmd]`, `[command]`  
__Inputs:__ 
 
* `Command`, Type: `String`, Default: `<empty string>`   
* `Run`, Type: `Float`, Default: `0.0`  

__Permissions:__ `link.restricted`, `link.gate.command`  
# Constant Value  
__Description:__ Outputs a constant that is set on the 2nd line. Can be a float or a string.  
__ID (Title on sign):__ `[Constant]`  
__Creation aliases:__ `[c]`, `[constant]`, `[value]`  
__Output:__ `Value`, Type: `Float`, Default: `1.0`  
__Permissions:__ `link.basic`, `link.gate.constant`  
# Divide Float  
__ID (Title on sign):__ `[Divide]`  
__Creation aliases:__ `[/]`, `[divide]`  
__Inputs:__ 
 
* `Number1`, Type: `Float`, Default: `1.0`   
* `Number2`, Type: `Float`, Default: `1.0`   
* `Number3`, Type: `Float`, Default: `1.0`   
* `Number4`, Type: `Float`, Default: `1.0`  

__Output:__ `Product`, Type: `Float`, Default: `1.0`  
__Permissions:__ `link.basic`, `link.gate.divide`  
# Equal  
__ID (Title on sign):__ `[==]`  
__Creation aliases:__ `[==]`, `[equal]`  
__Inputs:__ 
 
* `Number1`, Type: `Float`, Default: `0.0`   
* `Number2`, Type: `Float`, Default: `0.0`  

__Output:__ `True`, Type: `Float`, Default: `1.0`  
__Permissions:__ `link.basic`, `link.gate.==`  
# GPS  
__ID (Title on sign):__ `[GPS]`  
__Creation aliases:__ `[gps]`, `[location]`  
__Output:__ `Position`, Type: `Position`, Default: `[0.5,0.5,2.5]`  
__Permissions:__ `link.basic`, `link.gate.gps`  
# Global Message  
__Description:__ Runs a console command.  
__ID (Title on sign):__ `[GlobalMsg]`  
__Creation aliases:__ `[globalmsg]`, `[gmsg]`, `[gsay]`  
__Inputs:__ 
 
* `Message`, Type: `String`, Default: `<empty string>`   
* `Send`, Type: `Float`, Default: `0.0`  

__Permissions:__ `link.danger`, `link.gate.globalmsg`  
# Greater  
__ID (Title on sign):__ `[>]`  
__Creation aliases:__ `[>]`, `[greater]`  
__Inputs:__ 
 
* `Number1`, Type: `Float`, Default: `0.0`   
* `Number2`, Type: `Float`, Default: `0.0`  

__Output:__ `True`, Type: `Float`, Default: `0.0`  
__Permissions:__ `link.basic`, `link.gate.>`  
# Greater Than or Equals To  
__ID (Title on sign):__ `[>=]`  
__Creation aliases:__ `[>=]`, `[greatequal]`  
__Inputs:__ 
 
* `Number1`, Type: `Float`, Default: `0.0`   
* `Number2`, Type: `Float`, Default: `0.0`  

__Output:__ `True`, Type: `Float`, Default: `1.0`  
__Permissions:__ `link.basic`, `link.gate.>=`  
# Less  
__ID (Title on sign):__ `[<]`  
__Creation aliases:__ `[<]`, `[less]`  
__Inputs:__ 
 
* `Number1`, Type: `Float`, Default: `0.0`   
* `Number2`, Type: `Float`, Default: `0.0`  

__Output:__ `True`, Type: `Float`, Default: `0.0`  
__Permissions:__ `link.basic`, `link.gate.<`  
# Less Than or Equals To  
__ID (Title on sign):__ `[<=]`  
__Creation aliases:__ `[<=]`, `[lessequal]`  
__Inputs:__ 
 
* `Number1`, Type: `Float`, Default: `0.0`   
* `Number2`, Type: `Float`, Default: `0.0`  

__Output:__ `True`, Type: `Float`, Default: `1.0`  
__Permissions:__ `link.basic`, `link.gate.<=`  
# Make Position  
__Description:__ Makes a position out of three float values. (X, Y, Z)  
__ID (Title on sign):__ `[MakePos]`  
__Creation aliases:__ `[makepos]`, `[mpos]`  
__Inputs:__ 
 
* `X`, Type: `Float`, Default: `0.0`   
* `Y`, Type: `Float`, Default: `0.0`   
* `Z`, Type: `Float`, Default: `0.0`  

__Output:__ `Position`, Type: `Position`, Default: `[0.0,0.0,0.0]`  
__Permissions:__ `link.basic`, `link.gate.makepos`  
# Minus Float  
__ID (Title on sign):__ `[MinusFloat]`  
__Creation aliases:__ `[-]`, `[minus]`, `[minusfloat]`  
__Inputs:__ 
 
* `Number1`, Type: `Float`, Default: `0.0`   
* `Number2`, Type: `Float`, Default: `0.0`   
* `Number3`, Type: `Float`, Default: `0.0`   
* `Number4`, Type: `Float`, Default: `0.0`  

__Output:__ `Product`, Type: `Float`, Default: `0.0`  
__Permissions:__ `link.basic`, `link.gate.minusfloat`  
# Multiply Float  
__ID (Title on sign):__ `[Multiply]`  
__Creation aliases:__ `[*]`, `[multiply]`  
__Inputs:__ 
 
* `Number1`, Type: `Float`, Default: `1.0`   
* `Number2`, Type: `Float`, Default: `1.0`   
* `Number3`, Type: `Float`, Default: `1.0`   
* `Number4`, Type: `Float`, Default: `1.0`  

__Output:__ `Product`, Type: `Float`, Default: `1.0`  
__Permissions:__ `link.basic`, `link.gate.multiply`  
# Not Equal  
__ID (Title on sign):__ `[!=]`  
__Creation aliases:__ `[!=]`, `[notequal]`  
__Inputs:__ 
 
* `Number1`, Type: `Float`, Default: `0.0`   
* `Number2`, Type: `Float`, Default: `0.0`  

__Output:__ `True`, Type: `Float`, Default: `1.0`  
__Permissions:__ `link.basic`, `link.gate.!=`  
# Player Message  
__Description:__ Send a message to a player.  
__ID (Title on sign):__ `[PlayerMsg]`  
__Creation aliases:__ `[playermsg]`, `[pmsg]`, `[psay]`  
__Inputs:__ 
 
* `Message`, Type: `String`, Default: `<empty string>`   
* `Player`, Type: `String`, Default: `<empty string>`   
* `Send`, Type: `Float`, Default: `0.0`  

__Permissions:__ `link.basic`, `link.gate.playermsg`  
# Player Position  
__ID (Title on sign):__ `[PlayerPos]`  
__Creation aliases:__ `[playerpos]`, `[ppos]`  
__Input:__ `Player`, Type: `String`, Default: `X: 0.5`  
__Output:__ `Position`, Type: `Position`, Default: `[0.0,0.0,2.0]`  
__Permissions:__ `link.basic`, `link.gate.playerpos`  
# Player Sensor  
__ID (Title on sign):__ `[PlayrSensor]`  
__Creation aliases:__ `[playersensor]`, `[psensor]`  
__Inputs:__ 
 
* `Update`, Type: `Float`, Default: `0.0`   
* `Radius`, Type: `Float`, Default: `10.0`  

__Output:__ `Player`, Type: `String`, Default: `<empty string>`  
__Permissions:__ `link.basic`, `link.gate.playrsensor`  
# Redstone Power Input  
__ID (Title on sign):__ `[RedstoneIn]`  
__Creation aliases:__ `[redstonein]`, `[rin]`  
__Output:__ `Power`, Type: `Float`, Default: `0.0`  
__Permissions:__ `link.basic`, `link.gate.redstonein`  
# Redstone Power Output  
__Description:__ Outputs redstone power from an input. Powered if Power>=1.0. Requires Spout!  
__ID (Title on sign):__ `[RedstoneOut]`  
__Creation aliases:__ `[redstoneout]`, `[rout]`  
__Input:__ `Power`, Type: `Float`, Default: `0.0`  
__Permissions:__ `link.basic`, `link.gate.redstoneout`  
# Signal Delay  
__Description:__ Delays a float signal for a specified number of ingame ticks.  
__ID (Title on sign):__ `[Delay]`  
__Creation aliases:__ `[delay]`  
__Inputs:__ 
 
* `Value`, Type: `Float`, Default: `0.0`   
* `Delay`, Type: `Float`, Default: `10.0`  

__Output:__ `Value`, Type: `Float`, Default: `0.0`  
__Permissions:__ `link.basic`, `link.gate.delay`  
# Split Position  
__ID (Title on sign):__ `[SplitPos]`  
__Creation aliases:__ `[splitpos]`, `[spos]`  
__Input:__ `Position`, Type: `Position`, Default: `[0.0,0.0,0.0]`  
__Outputs:__ 
 
* `X`, Type: `Float`, Default: `0.0`   
* `Y`, Type: `Float`, Default: `0.0`   
* `Z`, Type: `Float`, Default: `0.0`  

__Permissions:__ `link.basic`, `link.gate.splitpos`  
# Static Display  
__Description:__ Displays one float and one string.  
__ID (Title on sign):__ `[Display]`  
__Creation aliases:__ `[d]`, `[display]`  
__Inputs:__ 
 
* `Value`, Type: `String`, Default: `<empty string>`   
* `Value2`, Type: `Float`, Default: `0.0`  

__Permissions:__ `link.basic`, `link.gate.display`  
# Teleport Player  
__ID (Title on sign):__ `[Teleport]`  
__Creation aliases:__ `[teleport]`, `[tp]`  
__Inputs:__ 
 
* `Player`, Type: `String`, Default: `<empty string>`   
* `Position`, Type: `Position`, Default: `[0.0,0.0,2.0]`   
* `Teleport`, Type: `Float`, Default: `0.0`  

__Permissions:__ `link.danger`, `link.gate.teleport`  
# Toggle Number  
__ID (Title on sign):__ `[ToggleNum]`  
__Creation aliases:__ `[tog]`, `[toggle]`, `[togglenum]`  
__Output:__ `Value`, Type: `Float`, Default: `0.0`  
__Permissions:__ `link.basic`, `link.gate.togglenum`  

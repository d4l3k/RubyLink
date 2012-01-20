Case does not matter for gate creation.  
# Add Float  
__ID (Title on sign):__ `[AddFloat]`  
__Creation Aliases:__ `[+]`, `[add]`, `[addfloat]`  
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
__Creation Aliases:__ `[addpos]`, `[apos]`  
__Inputs:__ 
 
* `X`, Type: `Float`, Default: `0.0`   
* `Y`, Type: `Float`, Default: `0.0`   
* `Z`, Type: `Float`, Default: `0.0`   
* `Position`, Type: `Position`, Default: `[0.0,0.0,0.0]`  

__Output:__ `Position`, Type: `Position`, Default: `[0.0,0.0,0.0]`  
__Permissions:__ `link.basic`, `link.gate.addpos`  
# All >= 1.0  
__ID (Title on sign):__ `[All]`  
__Creation Aliases:__ `[&&]`, `[all]`  
__Inputs:__ 
 
* `Number1`, Type: `Float`, Default: `0.0`   
* `Number2`, Type: `Float`, Default: `0.0`  

__Output:__ `True`, Type: `Float`, Default: `0.0`  
__Permissions:__ `link.basic`, `link.gate.all`  
# Any  
__ID (Title on sign):__ `[Any]`  
__Creation Aliases:__ `[any]`, `[||]`  
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
__Creation Aliases:__ `[arrow]`, `[turret]`  
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
__Creation Aliases:__ `[b]`, `[but]`, `[button]`  
__Output:__ `Value`, Type: `Float`, Default: `0.0`  
__Permissions:__ `link.basic`, `link.gate.button`  
# Command Sender  
__ID (Title on sign):__ `[Command]`  
__Creation Aliases:__ `[cmd]`, `[command]`  
__Inputs:__ 
 
* `Command`, Type: `String`, Default: `<empty string>`   
* `Run`, Type: `Float`, Default: `0.0`  

__Permissions:__ `link.restricted`, `link.gate.command`  
# Constant Value  
__Description:__ Outputs a constant that is set on the 2nd line. Can be a float or a string.  
__ID (Title on sign):__ `[Constant]`  
__Creation Aliases:__ `[c]`, `[constant]`, `[value]`  
__Output:__ `Value`, Type: `Float`, Default: `1.0`  
__Permissions:__ `link.basic`, `link.gate.constant`  
# Divide Float  
__ID (Title on sign):__ `[Divide]`  
__Creation Aliases:__ `[/]`, `[divide]`  
__Inputs:__ 
 
* `Number1`, Type: `Float`, Default: `1.0`   
* `Number2`, Type: `Float`, Default: `1.0`   
* `Number3`, Type: `Float`, Default: `1.0`   
* `Number4`, Type: `Float`, Default: `1.0`  

__Output:__ `Product`, Type: `Float`, Default: `1.0`  
__Permissions:__ `link.basic`, `link.gate.divide`  
# Equal  
__ID (Title on sign):__ `[==]`  
__Creation Aliases:__ `[==]`, `[equal]`  
__Inputs:__ 
 
* `Number1`, Type: `Float`, Default: `0.0`   
* `Number2`, Type: `Float`, Default: `0.0`  

__Output:__ `True`, Type: `Float`, Default: `1.0`  
__Permissions:__ `link.basic`, `link.gate.==`  
# GPS  
__ID (Title on sign):__ `[GPS]`  
__Creation Aliases:__ `[gps]`, `[location]`  
__Output:__ `Position`, Type: `Position`, Default: `[0.5,0.5,2.5]`  
__Permissions:__ `link.basic`, `link.gate.gps`  
# Global Message  
__Description:__ Runs a console command.  
__ID (Title on sign):__ `[GlobalMsg]`  
__Creation Aliases:__ `[globalmsg]`, `[gmsg]`, `[gsay]`  
__Inputs:__ 
 
* `Message`, Type: `String`, Default: `<empty string>`   
* `Send`, Type: `Float`, Default: `0.0`  

__Permissions:__ `link.danger`, `link.gate.globalmsg`  
# Greater  
__ID (Title on sign):__ `[>]`  
__Creation Aliases:__ `[>]`, `[greater]`  
__Inputs:__ 
 
* `Number1`, Type: `Float`, Default: `0.0`   
* `Number2`, Type: `Float`, Default: `0.0`  

__Output:__ `True`, Type: `Float`, Default: `0.0`  
__Permissions:__ `link.basic`, `link.gate.>`  
# Greater Than or Equals To  
__ID (Title on sign):__ `[>=]`  
__Creation Aliases:__ `[>=]`, `[greatequal]`  
__Inputs:__ 
 
* `Number1`, Type: `Float`, Default: `0.0`   
* `Number2`, Type: `Float`, Default: `0.0`  

__Output:__ `True`, Type: `Float`, Default: `1.0`  
__Permissions:__ `link.basic`, `link.gate.>=`  
# Less  
__ID (Title on sign):__ `[<]`  
__Creation Aliases:__ `[<]`, `[less]`  
__Inputs:__ 
 
* `Number1`, Type: `Float`, Default: `0.0`   
* `Number2`, Type: `Float`, Default: `0.0`  

__Output:__ `True`, Type: `Float`, Default: `0.0`  
__Permissions:__ `link.basic`, `link.gate.<`  
# Less Than or Equals To  
__ID (Title on sign):__ `[<=]`  
__Creation Aliases:__ `[<=]`, `[lessequal]`  
__Inputs:__ 
 
* `Number1`, Type: `Float`, Default: `0.0`   
* `Number2`, Type: `Float`, Default: `0.0`  

__Output:__ `True`, Type: `Float`, Default: `1.0`  
__Permissions:__ `link.basic`, `link.gate.<=`  
# Make Position  
__Description:__ Makes a position out of three float values. (X, Y, Z)  
__ID (Title on sign):__ `[MakePos]`  
__Creation Aliases:__ `[makepos]`, `[mpos]`  
__Inputs:__ 
 
* `X`, Type: `Float`, Default: `0.0`   
* `Y`, Type: `Float`, Default: `0.0`   
* `Z`, Type: `Float`, Default: `0.0`  

__Output:__ `Position`, Type: `Position`, Default: `[0.0,0.0,0.0]`  
__Permissions:__ `link.basic`, `link.gate.makepos`  
# Minus Float  
__ID (Title on sign):__ `[MinusFloat]`  
__Creation Aliases:__ `[-]`, `[minus]`, `[minusfloat]`  
__Inputs:__ 
 
* `Number1`, Type: `Float`, Default: `0.0`   
* `Number2`, Type: `Float`, Default: `0.0`   
* `Number3`, Type: `Float`, Default: `0.0`   
* `Number4`, Type: `Float`, Default: `0.0`  

__Output:__ `Product`, Type: `Float`, Default: `0.0`  
__Permissions:__ `link.basic`, `link.gate.minusfloat`  
# Multiply Float  
__ID (Title on sign):__ `[Multiply]`  
__Creation Aliases:__ `[*]`, `[multiply]`  
__Inputs:__ 
 
* `Number1`, Type: `Float`, Default: `1.0`   
* `Number2`, Type: `Float`, Default: `1.0`   
* `Number3`, Type: `Float`, Default: `1.0`   
* `Number4`, Type: `Float`, Default: `1.0`  

__Output:__ `Product`, Type: `Float`, Default: `1.0`  
__Permissions:__ `link.basic`, `link.gate.multiply`  
# Not Equal  
__ID (Title on sign):__ `[!=]`  
__Creation Aliases:__ `[!=]`, `[notequal]`  
__Inputs:__ 
 
* `Number1`, Type: `Float`, Default: `0.0`   
* `Number2`, Type: `Float`, Default: `0.0`  

__Output:__ `True`, Type: `Float`, Default: `1.0`  
__Permissions:__ `link.basic`, `link.gate.!=`  
# Player Message  
__Description:__ Send a message to a player.  
__ID (Title on sign):__ `[PlayerMsg]`  
__Creation Aliases:__ `[playermsg]`, `[pmsg]`, `[psay]`  
__Inputs:__ 
 
* `Message`, Type: `String`, Default: `<empty string>`   
* `Player`, Type: `String`, Default: `<empty string>`   
* `Send`, Type: `Float`, Default: `0.0`  

__Permissions:__ `link.basic`, `link.gate.playermsg`  
# Player Position  
__ID (Title on sign):__ `[PlayerPos]`  
__Creation Aliases:__ `[playerpos]`, `[ppos]`  
__Input:__ `Player`, Type: `String`, Default: `X: 0.5`  
__Output:__ `Position`, Type: `Position`, Default: `[0.0,0.0,2.0]`  
__Permissions:__ `link.basic`, `link.gate.playerpos`  
# Player Sensor  
__ID (Title on sign):__ `[PlayrSensor]`  
__Creation Aliases:__ `[playersensor]`, `[psensor]`  
__Inputs:__ 
 
* `Update`, Type: `Float`, Default: `0.0`   
* `Radius`, Type: `Float`, Default: `10.0`  

__Output:__ `Player`, Type: `String`, Default: `<empty string>`  
__Permissions:__ `link.basic`, `link.gate.playrsensor`  
# Redstone Power Input  
__ID (Title on sign):__ `[RedstoneIn]`  
__Creation Aliases:__ `[redstonein]`, `[rin]`  
__Output:__ `Power`, Type: `Float`, Default: `0.0`  
__Permissions:__ `link.basic`, `link.gate.redstonein`  
# Redstone Power Output  
__Description:__ Outputs redstone power from an input. Powered if Power>=1.0. Requires Spout!  
__ID (Title on sign):__ `[RedstoneOut]`  
__Creation Aliases:__ `[redstoneout]`, `[rout]`  
__Input:__ `Power`, Type: `Float`, Default: `0.0`  
__Permissions:__ `link.basic`, `link.gate.redstoneout`  
# Signal Delay  
__Description:__ Delays a float signal for a specified number of ingame ticks.  
__ID (Title on sign):__ `[Delay]`  
__Creation Aliases:__ `[delay]`  
__Inputs:__ 
 
* `Value`, Type: `Float`, Default: `0.0`   
* `Delay`, Type: `Float`, Default: `10.0`  

__Output:__ `Value`, Type: `Float`, Default: `0.0`  
__Permissions:__ `link.basic`, `link.gate.delay`  
# Split Position  
__ID (Title on sign):__ `[SplitPos]`  
__Creation Aliases:__ `[splitpos]`, `[spos]`  
__Input:__ `Position`, Type: `Position`, Default: `[0.0,0.0,0.0]`  
__Outputs:__ 
 
* `X`, Type: `Float`, Default: `0.0`   
* `Y`, Type: `Float`, Default: `0.0`   
* `Z`, Type: `Float`, Default: `0.0`  

__Permissions:__ `link.basic`, `link.gate.splitpos`  
# Static Display  
__Description:__ Displays one float and one string.  
__ID (Title on sign):__ `[Display]`  
__Creation Aliases:__ `[d]`, `[display]`  
__Inputs:__ 
 
* `Value`, Type: `String`, Default: `<empty string>`   
* `Value2`, Type: `Float`, Default: `0.0`  

__Permissions:__ `link.basic`, `link.gate.display`  
# String: Concatenate  
__Description:__ Combines two strings.  
__ID (Title on sign):__ `[S.Concat]`  
__Creation Aliases:__ `[s.concat]`, `[s.concatenate]`  
__Inputs:__ 
 
* `A`, Type: `String`, Default: `<empty string>`   
* `B`, Type: `String`, Default: `<empty string>`   
* `C`, Type: `String`, Default: `<empty string>`   
* `D`, Type: `String`, Default: `<empty string>`   
* `E`, Type: `String`, Default: `<empty string>`   
* `F`, Type: `String`, Default: `<empty string>`   
* `G`, Type: `String`, Default: `<empty string>`   
* `H`, Type: `String`, Default: `<empty string>`  

__Output:__ `Out`, Type: `String`, Default: `<empty string>`  
__Permissions:__ `link.basic`, `link.gate.s.concat`  
# String: Equal  
__Description:__ Breaks up a string(A) via the seperator into an array.  
__ID (Title on sign):__ `[S.Equal]`  
__Creation Aliases:__ `[s.explode]`  
__Inputs:__ 
 
* `A`, Type: `String`, Default: `<empty string>`   
* `Seperator`, Type: `String`, Default: `<empty string>`  

__Output:__ `Out`, Type: `Array`, Default: `[]`  
__Permissions:__ `link.basic`, `link.gate.s.equal`  
# String: Equal  
__Description:__ Returns 1.0 if A equals B.  
__ID (Title on sign):__ `[S.Equal]`  
__Creation Aliases:__ `[s.equal]`  
__Inputs:__ 
 
* `A`, Type: `String`, Default: `<empty string>`   
* `B`, Type: `String`, Default: `<empty string>`  

__Output:__ `Out`, Type: `Float`, Default: `0.0`  
__Permissions:__ `link.basic`, `link.gate.s.equal`  
# String: Find  
__Description:__ Searches for string (A) for (B) and returns the first index found. Find ignores everything before StartIndex.  
__ID (Title on sign):__ `[S.Find]`  
__Creation Aliases:__ `[s.find]`  
__Inputs:__ 
 
* `A`, Type: `String`, Default: `<empty string>`   
* `Search`, Type: `String`, Default: `<empty string>`   
* `StartIndex`, Type: `Float`, Default: `0.0`  

__Output:__ `Index`, Type: `Float`, Default: `0.0`  
__Permissions:__ `link.basic`, `link.gate.s.find`  
# String: Float  
__Description:__ Returns A in float version.  
__ID (Title on sign):__ `[S.ToFloat]`  
__Creation Aliases:__ `[s.float]`, `[s.tofloat]`  
__Input:__ `A`, Type: `String`, Default: `<empty string>`  
__Output:__ `Out`, Type: `Float`, Default: `0.0`  
__Permissions:__ `link.basic`, `link.gate.s.tofloat`  
# String: Index  
__Description:__ Returns the letter of Index in a string (A).  
__ID (Title on sign):__ `[S.Index]`  
__Creation Aliases:__ `[s.index]`  
__Inputs:__ 
 
* `A`, Type: `String`, Default: `<empty string>`   
* `Index`, Type: `Float`, Default: `0.0`  

__Output:__ `Out`, Type: `String`, Default: `<empty string>`  
__Permissions:__ `link.basic`, `link.gate.s.index`  
# String: Inequal  
__Description:__ Opposite of String: Equal.  
__ID (Title on sign):__ `[S.Inequal]`  
__Creation Aliases:__ `[s.inequal]`  
__Inputs:__ 
 
* `A`, Type: `String`, Default: `<empty string>`   
* `B`, Type: `String`, Default: `<empty string>`  

__Output:__ `Out`, Type: `Float`, Default: `0.0`  
__Permissions:__ `link.basic`, `link.gate.s.inequal`  
# String: Length  
__Description:__ Returns the length of A.  
__ID (Title on sign):__ `[S.Length]`  
__Creation Aliases:__ `[s.length]`  
__Input:__ `A`, Type: `String`, Default: `<empty string>`  
__Output:__ `Out`, Type: `Float`, Default: `0.0`  
__Permissions:__ `link.basic`, `link.gate.s.length`  
# String: Lowercase  
__Description:__ Returns the lowercase version of A.  
__ID (Title on sign):__ `[S.Lowercase]`  
__Creation Aliases:__ `[s.lower]`, `[s.lowercase]`  
__Input:__ `A`, Type: `String`, Default: `<empty string>`  
__Output:__ `Out`, Type: `String`, Default: `<empty string>`  
__Permissions:__ `link.basic`, `link.gate.s.lowercase`  
# String: Repeat  
__Description:__ Repeats string(A) float(Times) times.  
__ID (Title on sign):__ `[S.Repeat]`  
__Creation Aliases:__ `[s.repeat]`  
__Inputs:__ 
 
* `A`, Type: `String`, Default: `<empty string>`   
* `Times`, Type: `Float`, Default: `0.0`  

__Output:__ `Out`, Type: `String`, Default: `<empty string>`  
__Permissions:__ `link.basic`, `link.gate.s.repeat`  
# String: Replace  
__Description:__ Replaces all occurences of `Item` with `Replacement` in `A`.  
__ID (Title on sign):__ `[S.Replace]`  
__Creation Aliases:__ `[s.replace]`  
__Inputs:__ 
 
* `A`, Type: `String`, Default: `<empty string>`   
* `Item`, Type: `String`, Default: `<empty string>`   
* `Replacement`, Type: `String`, Default: `<empty string>`  

__Output:__ `Out`, Type: `String`, Default: `<empty string>`  
__Permissions:__ `link.basic`, `link.gate.s.replace`  
# String: Reverse  
__Description:__ Reverses A.  
__ID (Title on sign):__ `[S.Reverse]`  
__Creation Aliases:__ `[s.reverse]`  
__Input:__ `A`, Type: `String`, Default: `<empty string>`  
__Output:__ `Out`, Type: `String`, Default: `<empty string>`  
__Permissions:__ `link.basic`, `link.gate.s.reverse`  
# String: Select  
__Description:__ Returns the string that Choice points to.  
__ID (Title on sign):__ `[S.Select]`  
__Creation Aliases:__ `[s.select]`  
__Inputs:__ 
 
* `Choice`, Type: `Float`, Default: `0.0`   
* `A`, Type: `String`, Default: `<empty string>`   
* `B`, Type: `String`, Default: `<empty string>`   
* `C`, Type: `String`, Default: `<empty string>`   
* `D`, Type: `String`, Default: `<empty string>`   
* `E`, Type: `String`, Default: `<empty string>`   
* `F`, Type: `String`, Default: `<empty string>`   
* `G`, Type: `String`, Default: `<empty string>`   
* `H`, Type: `String`, Default: `<empty string>`  

__Output:__ `Out`, Type: `String`, Default: `<empty string>`  
__Permissions:__ `link.basic`, `link.gate.s.select`  
# String: Substring  
__Description:__ Returns a substring of A.  
__ID (Title on sign):__ `[S.SubStr]`  
__Creation Aliases:__ `[s.substring]`  
__Inputs:__ 
 
* `A`, Type: `String`, Default: `<empty string>`   
* `Start`, Type: `Float`, Default: `0.0`   
* `End`, Type: `Float`, Default: `0.0`  

__Output:__ `Out`, Type: `String`, Default: `<empty string>`  
__Permissions:__ `link.basic`, `link.gate.s.substr`  
# String: To Ascii  
__Description:__ Converts A to the ASCII representation of it.  
__ID (Title on sign):__ `[S.ToAscii]`  
__Creation Aliases:__ `[s.ascii]`, `[s.toascii]`  
__Input:__ `A`, Type: `String`, Default: `<empty string>`  
__Output:__ `Out`, Type: `Float`, Default: `0.0`  
__Permissions:__ `link.basic`, `link.gate.s.toascii`  
# String: Trim  
__Description:__ Trims the leading and trailing whitespace from A.  
__ID (Title on sign):__ `[S.Trim]`  
__Creation Aliases:__ `[s.trim]`  
__Input:__ `A`, Type: `String`, Default: `<empty string>`  
__Output:__ `Out`, Type: `String`, Default: `<empty string>`  
__Permissions:__ `link.basic`, `link.gate.s.trim`  
# String: Uppercase  
__Description:__ Returns the uppercase version of A.  
__ID (Title on sign):__ `[S.Uppercase]`  
__Creation Aliases:__ `[s.upper]`, `[s.uppercase]`  
__Input:__ `A`, Type: `String`, Default: `<empty string>`  
__Output:__ `Out`, Type: `String`, Default: `<empty string>`  
__Permissions:__ `link.basic`, `link.gate.s.uppercase`  
# Teleport Player  
__ID (Title on sign):__ `[Teleport]`  
__Creation Aliases:__ `[teleport]`, `[tp]`  
__Inputs:__ 
 
* `Player`, Type: `String`, Default: `<empty string>`   
* `Position`, Type: `Position`, Default: `[0.0,0.0,2.0]`   
* `Teleport`, Type: `Float`, Default: `0.0`  

__Permissions:__ `link.danger`, `link.gate.teleport`  
# Toggle Number  
__ID (Title on sign):__ `[ToggleNum]`  
__Creation Aliases:__ `[tog]`, `[toggle]`, `[togglenum]`  
__Output:__ `Value`, Type: `Float`, Default: `0.0`  
__Permissions:__ `link.basic`, `link.gate.togglenum`  

Case does not matter for gate creation.

# Add Fixnum
InGame: `[AddFixnum]`

Creation Aliases: `[+]`, `[add]`, `[addfixnum]`

Inputs:

* `Number1`, Type: `Float`, Default: `0.0`

* `Number2`, Type: `Float`, Default: `0.0`

* `Number3`, Type: `Float`, Default: `0.0`

* `Number4`, Type: `Float`, Default: `0.0`


Outputs:

* `Product`, Type: `Float`, Default: `0.0`


Permissions: `link.basic`



# Add to Position
Description: Adds float values to a position.

InGame: `[AddPos]`

Creation Aliases: `[addpos]`, `[apos]`

Inputs:

* `X`, Type: `Float`, Default: `0.0`

* `Y`, Type: `Float`, Default: `0.0`

* `Z`, Type: `Float`, Default: `0.0`

* `Position`, Type: `Position`, Default: `[0.0,0.0,0.0]`


Outputs:

* `Position`, Type: `Position`, Default: `[0.0,0.0,0.0]`


Permissions: `link.basic`



# All >= 1.0
InGame: `[All]`

Creation Aliases: `[&&]`, `[all]`

Inputs:

* `Number1`, Type: `Float`, Default: `0.0`

* `Number2`, Type: `Float`, Default: `0.0`


Outputs:

* `True`, Type: `Float`, Default: `0.0`


Permissions: `link.basic`



# Any
InGame: `[Any]`

Creation Aliases: `[any]`, `[||]`

Inputs:

* `Number1`, Type: `Float`, Default: `0.0`

* `Number2`, Type: `Float`, Default: `0.0`

* `Number3`, Type: `Float`, Default: `0.0`

* `Number4`, Type: `Float`, Default: `0.0`


Outputs:

* `True`, Type: `Float`, Default: `0.0`


Permissions: `link.basic`



# Button
Description: Goes to the high value then the low value. Can use sign arguments. Line 2: <high value>[,<low value>]

InGame: `[Button]`

Creation Aliases: `[b]`, `[but]`, `[button]`

Inputs:


Outputs:

* `Value`, Type: `Float`, Default: `0.0`


Permissions: `link.basic`



# Constant Value
Description: Outputs a constant that is set on the 2nd line. Can be a float or a string.

InGame: `[Constant]`

Creation Aliases: `[c]`, `[constant]`, `[value]`

Inputs:


Outputs:

* `Value`, Type: `Float`, Default: `1.0`


Permissions: `link.basic`



# Divide Fixnum
InGame: `[Divide]`

Creation Aliases: `[/]`, `[divide]`

Inputs:

* `Number1`, Type: `Float`, Default: `1.0`

* `Number2`, Type: `Float`, Default: `1.0`

* `Number3`, Type: `Float`, Default: `1.0`

* `Number4`, Type: `Float`, Default: `1.0`


Outputs:

* `Product`, Type: `Float`, Default: `1.0`


Permissions: `link.basic`



# Equal
InGame: `[==]`

Creation Aliases: `[==]`, `[equal]`

Inputs:

* `Number1`, Type: `Float`, Default: `0.0`

* `Number2`, Type: `Float`, Default: `0.0`


Outputs:

* `True`, Type: `Float`, Default: `1.0`


Permissions: `link.basic`



# GPS
InGame: `[GPS]`

Creation Aliases: `[gps]`, `[location]`

Inputs:


Outputs:

* `Position`, Type: `Position`, Default: `[0.0,0.0,2.0]`


Permissions: `link.basic`



# Greater
InGame: `[>]`

Creation Aliases: `[>]`, `[greater]`

Inputs:

* `Number1`, Type: `Float`, Default: `0.0`

* `Number2`, Type: `Float`, Default: `0.0`


Outputs:

* `True`, Type: `Float`, Default: `0.0`


Permissions: `link.basic`



# Greater Than or Equals To
InGame: `[>=]`

Creation Aliases: `[>=]`, `[greatequal]`

Inputs:

* `Number1`, Type: `Float`, Default: `0.0`

* `Number2`, Type: `Float`, Default: `0.0`


Outputs:

* `True`, Type: `Float`, Default: `1.0`


Permissions: `link.basic`



# Less
InGame: `[<]`

Creation Aliases: `[<]`, `[less]`

Inputs:

* `Number1`, Type: `Float`, Default: `0.0`

* `Number2`, Type: `Float`, Default: `0.0`


Outputs:

* `True`, Type: `Float`, Default: `0.0`


Permissions: `link.basic`



# Less Than or Equals To
InGame: `[<=]`

Creation Aliases: `[<=]`, `[lessequal]`

Inputs:

* `Number1`, Type: `Float`, Default: `0.0`

* `Number2`, Type: `Float`, Default: `0.0`


Outputs:

* `True`, Type: `Float`, Default: `1.0`


Permissions: `link.basic`



# Make Position
Description: Makes a position out of three float values. (X, Y, Z)

InGame: `[MakePos]`

Creation Aliases: `[makepos]`, `[mpos]`

Inputs:

* `X`, Type: `Float`, Default: `0.0`

* `Y`, Type: `Float`, Default: `0.0`

* `Z`, Type: `Float`, Default: `0.0`


Outputs:

* `Position`, Type: `Position`, Default: `[0.0,0.0,0.0]`


Permissions: `link.basic`



# Minus Fixnum
InGame: `[MinusFixnum]`

Creation Aliases: `[-]`, `[minus]`, `[minusfixnum]`

Inputs:

* `Number1`, Type: `Float`, Default: `0.0`

* `Number2`, Type: `Float`, Default: `0.0`

* `Number3`, Type: `Float`, Default: `0.0`

* `Number4`, Type: `Float`, Default: `0.0`


Outputs:

* `Product`, Type: `Float`, Default: `0.0`


Permissions: `link.basic`



# Multiply Fixnum
InGame: `[Multiply]`

Creation Aliases: `[*]`, `[multiply]`

Inputs:

* `Number1`, Type: `Float`, Default: `1.0`

* `Number2`, Type: `Float`, Default: `1.0`

* `Number3`, Type: `Float`, Default: `1.0`

* `Number4`, Type: `Float`, Default: `1.0`


Outputs:

* `Product`, Type: `Float`, Default: `1.0`


Permissions: `link.basic`



# Not Equal
InGame: `[!=]`

Creation Aliases: `[!=]`, `[notequal]`

Inputs:

* `Number1`, Type: `Float`, Default: `0.0`

* `Number2`, Type: `Float`, Default: `0.0`


Outputs:

* `True`, Type: `Float`, Default: `1.0`


Permissions: `link.basic`



# Player Position
InGame: `[PlayerPos]`

Creation Aliases: `[playerpos]`, `[ppos]`

Inputs:

* `Player`, Type: `String`, Default: `X: 0.0`


Outputs:

* `Position`, Type: `Position`, Default: `[0.0,0.0,2.0]`


Permissions: `link.basic`



# Player Sensor
InGame: `[PlayrSensor]`

Creation Aliases: `[playersensor]`, `[psensor]`

Inputs:

* `Update`, Type: `Float`, Default: `0.0`

* `Radius`, Type: `Float`, Default: `10.0`


Outputs:

* `Player`, Type: `String`, Default: ``


Permissions: `link.basic`



# Redstone Power Input
InGame: `[RedstoneIn]`

Creation Aliases: `[redstonein]`, `[rin]`

Inputs:


Outputs:

* `Power`, Type: `Float`, Default: `0.0`


Permissions: `link.basic`



# Signal Delay
Description: Delays a float signal for a specified number of ingame ticks.

InGame: `[Delay]`

Creation Aliases: `[delay]`

Inputs:

* `Value`, Type: `Float`, Default: `0.0`

* `Delay`, Type: `Float`, Default: `10.0`


Outputs:

* `Value`, Type: `Float`, Default: `0.0`


Permissions: `link.basic`



# Split Position
InGame: `[SplitPos]`

Creation Aliases: `[splitpos]`, `[spos]`

Inputs:

* `Position`, Type: `Position`, Default: `[0.0,0.0,0.0]`


Outputs:

* `Z`, Type: `Float`, Default: `0.0`


Permissions: `link.basic`



# Static Display
Description: Displays one float and one string.

InGame: `[Display]`

Creation Aliases: `[d]`, `[display]`

Inputs:

* `Value`, Type: `String`, Default: ``

* `Value2`, Type: `Float`, Default: `0.0`


Outputs:


Permissions: `link.basic`



# Teleport Player
InGame: `[Teleport]`

Creation Aliases: `[teleport]`, `[tp]`

Inputs:

* `Player`, Type: `String`, Default: ``

* `Position`, Type: `Position`, Default: `[0.0,0.0,2.0]`

* `Teleport`, Type: `Float`, Default: `0.0`


Outputs:


Permissions: `link.basic`



# Toggle Number
InGame: `[ToggleNum]`

Creation Aliases: `[tog]`, `[toggle]`, `[togglenum]`

Inputs:


Outputs:

* `Value`, Type: `Float`, Default: `0.0`


Permissions: `link.basic`


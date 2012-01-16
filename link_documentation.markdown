Case does not matter for gate creation.

# Add Fixnum
__Appearance on Sign:__ `[AddFixnum]`

__Creation Aliases:__ `[+]`, `[add]`, `[addfixnum]`

__Inputs:__

* `Number1`, Type: `Float`, Default: `0.0`

* `Number2`, Type: `Float`, Default: `0.0`

* `Number3`, Type: `Float`, Default: `0.0`

* `Number4`, Type: `Float`, Default: `0.0`


__Outputs:__

* `Product`, Type: `Float`, Default: `0.0`


__Permissions:__ `link.basic`



# Add to Position
__Description:__ Adds float values to a position.

__Appearance on Sign:__ `[AddPos]`

__Creation Aliases:__ `[addpos]`, `[apos]`

__Inputs:__

* `X`, Type: `Float`, Default: `0.0`

* `Y`, Type: `Float`, Default: `0.0`

* `Z`, Type: `Float`, Default: `0.0`

* `Position`, Type: `Position`, Default: `[0.0,0.0,0.0]`


__Outputs:__

* `Position`, Type: `Position`, Default: `[0.0,0.0,0.0]`


__Permissions:__ `link.basic`



# All >= 1.0
__Appearance on Sign:__ `[All]`

__Creation Aliases:__ `[&&]`, `[all]`

__Inputs:__

* `Number1`, Type: `Float`, Default: `0.0`

* `Number2`, Type: `Float`, Default: `0.0`


__Outputs:__

* `True`, Type: `Float`, Default: `0.0`


__Permissions:__ `link.basic`



# Any
__Appearance on Sign:__ `[Any]`

__Creation Aliases:__ `[any]`, `[||]`

__Inputs:__

* `Number1`, Type: `Float`, Default: `0.0`

* `Number2`, Type: `Float`, Default: `0.0`

* `Number3`, Type: `Float`, Default: `0.0`

* `Number4`, Type: `Float`, Default: `0.0`


__Outputs:__

* `True`, Type: `Float`, Default: `0.0`


__Permissions:__ `link.basic`



# Arrow Turret
__Description:__ Fires arrows at a position.

__Appearance on Sign:__ `[Turret]`

__Creation Aliases:__ `[arrow]`, `[turret]`

__Inputs:__

* `Target`, Type: `Position`, Default: `[0.0,0.0,2.0]`

* `Launch`, Type: `Float`, Default: `0.0`

* `Speed`, Type: `Float`, Default: `1.2`

* `Number`, Type: `Float`, Default: `1.0`

* `Fire?`, Type: `Float`, Default: `0.0`

* `Bounce?`, Type: `Float`, Default: `0.0`

* `Spread`, Type: `Float`, Default: `6.0`


__Permissions:__ `link.basic`



# Button
__Description:__ Goes to the high value then the low value. Can use sign arguments. Line 2: <high value>[,<low value>]

__Appearance on Sign:__ `[Button]`

__Creation Aliases:__ `[b]`, `[but]`, `[button]`

__Outputs:__

* `Value`, Type: `Float`, Default: `0.0`


__Permissions:__ `link.basic`



# Constant Value
__Description:__ Outputs a constant that is set on the 2nd line. Can be a float or a string.

__Appearance on Sign:__ `[Constant]`

__Creation Aliases:__ `[c]`, `[constant]`, `[value]`

__Outputs:__

* `Value`, Type: `Float`, Default: `1.0`


__Permissions:__ `link.basic`



# Divide Fixnum
__Appearance on Sign:__ `[Divide]`

__Creation Aliases:__ `[/]`, `[divide]`

__Inputs:__

* `Number1`, Type: `Float`, Default: `1.0`

* `Number2`, Type: `Float`, Default: `1.0`

* `Number3`, Type: `Float`, Default: `1.0`

* `Number4`, Type: `Float`, Default: `1.0`


__Outputs:__

* `Product`, Type: `Float`, Default: `1.0`


__Permissions:__ `link.basic`



# Equal
__Appearance on Sign:__ `[==]`

__Creation Aliases:__ `[==]`, `[equal]`

__Inputs:__

* `Number1`, Type: `Float`, Default: `0.0`

* `Number2`, Type: `Float`, Default: `0.0`


__Outputs:__

* `True`, Type: `Float`, Default: `1.0`


__Permissions:__ `link.basic`



# GPS
__Appearance on Sign:__ `[GPS]`

__Creation Aliases:__ `[gps]`, `[location]`

__Outputs:__

* `Position`, Type: `Position`, Default: `[0.0,0.0,2.0]`


__Permissions:__ `link.basic`



# Greater
__Appearance on Sign:__ `[>]`

__Creation Aliases:__ `[>]`, `[greater]`

__Inputs:__

* `Number1`, Type: `Float`, Default: `0.0`

* `Number2`, Type: `Float`, Default: `0.0`


__Outputs:__

* `True`, Type: `Float`, Default: `0.0`


__Permissions:__ `link.basic`



# Greater Than or Equals To
__Appearance on Sign:__ `[>=]`

__Creation Aliases:__ `[>=]`, `[greatequal]`

__Inputs:__

* `Number1`, Type: `Float`, Default: `0.0`

* `Number2`, Type: `Float`, Default: `0.0`


__Outputs:__

* `True`, Type: `Float`, Default: `1.0`


__Permissions:__ `link.basic`



# Less
__Appearance on Sign:__ `[<]`

__Creation Aliases:__ `[<]`, `[less]`

__Inputs:__

* `Number1`, Type: `Float`, Default: `0.0`

* `Number2`, Type: `Float`, Default: `0.0`


__Outputs:__

* `True`, Type: `Float`, Default: `0.0`


__Permissions:__ `link.basic`



# Less Than or Equals To
__Appearance on Sign:__ `[<=]`

__Creation Aliases:__ `[<=]`, `[lessequal]`

__Inputs:__

* `Number1`, Type: `Float`, Default: `0.0`

* `Number2`, Type: `Float`, Default: `0.0`


__Outputs:__

* `True`, Type: `Float`, Default: `1.0`


__Permissions:__ `link.basic`



# Make Position
__Description:__ Makes a position out of three float values. (X, Y, Z)

__Appearance on Sign:__ `[MakePos]`

__Creation Aliases:__ `[makepos]`, `[mpos]`

__Inputs:__

* `X`, Type: `Float`, Default: `0.0`

* `Y`, Type: `Float`, Default: `0.0`

* `Z`, Type: `Float`, Default: `0.0`


__Outputs:__

* `Position`, Type: `Position`, Default: `[0.0,0.0,0.0]`


__Permissions:__ `link.basic`



# Minus Fixnum
__Appearance on Sign:__ `[MinusFixnum]`

__Creation Aliases:__ `[-]`, `[minus]`, `[minusfixnum]`

__Inputs:__

* `Number1`, Type: `Float`, Default: `0.0`

* `Number2`, Type: `Float`, Default: `0.0`

* `Number3`, Type: `Float`, Default: `0.0`

* `Number4`, Type: `Float`, Default: `0.0`


__Outputs:__

* `Product`, Type: `Float`, Default: `0.0`


__Permissions:__ `link.basic`



# Multiply Fixnum
__Appearance on Sign:__ `[Multiply]`

__Creation Aliases:__ `[*]`, `[multiply]`

__Inputs:__

* `Number1`, Type: `Float`, Default: `1.0`

* `Number2`, Type: `Float`, Default: `1.0`

* `Number3`, Type: `Float`, Default: `1.0`

* `Number4`, Type: `Float`, Default: `1.0`


__Outputs:__

* `Product`, Type: `Float`, Default: `1.0`


__Permissions:__ `link.basic`



# Not Equal
__Appearance on Sign:__ `[!=]`

__Creation Aliases:__ `[!=]`, `[notequal]`

__Inputs:__

* `Number1`, Type: `Float`, Default: `0.0`

* `Number2`, Type: `Float`, Default: `0.0`


__Outputs:__

* `True`, Type: `Float`, Default: `1.0`


__Permissions:__ `link.basic`



# Player Position
__Appearance on Sign:__ `[PlayerPos]`

__Creation Aliases:__ `[playerpos]`, `[ppos]`

__Inputs:__

* `Player`, Type: `String`, Default: `X: 0.0`


__Outputs:__

* `Position`, Type: `Position`, Default: `[0.0,0.0,2.0]`


__Permissions:__ `link.basic`



# Player Sensor
__Appearance on Sign:__ `[PlayrSensor]`

__Creation Aliases:__ `[playersensor]`, `[psensor]`

__Inputs:__

* `Update`, Type: `Float`, Default: `0.0`

* `Radius`, Type: `Float`, Default: `10.0`


__Outputs:__

* `Player`, Type: `String`, Default: ``


__Permissions:__ `link.basic`



# Redstone Power Input
__Appearance on Sign:__ `[RedstoneIn]`

__Creation Aliases:__ `[redstonein]`, `[rin]`

__Outputs:__

* `Power`, Type: `Float`, Default: `0.0`


__Permissions:__ `link.basic`



# Signal Delay
__Description:__ Delays a float signal for a specified number of ingame ticks.

__Appearance on Sign:__ `[Delay]`

__Creation Aliases:__ `[delay]`

__Inputs:__

* `Value`, Type: `Float`, Default: `0.0`

* `Delay`, Type: `Float`, Default: `10.0`


__Outputs:__

* `Value`, Type: `Float`, Default: `0.0`


__Permissions:__ `link.basic`



# Split Position
__Appearance on Sign:__ `[SplitPos]`

__Creation Aliases:__ `[splitpos]`, `[spos]`

__Inputs:__

* `Position`, Type: `Position`, Default: `[0.0,0.0,0.0]`


__Outputs:__

* `Z`, Type: `Float`, Default: `0.0`


__Permissions:__ `link.basic`



# Static Display
__Description:__ Displays one float and one string.

__Appearance on Sign:__ `[Display]`

__Creation Aliases:__ `[d]`, `[display]`

__Inputs:__

* `Value`, Type: `String`, Default: ``

* `Value2`, Type: `Float`, Default: `0.0`


__Permissions:__ `link.basic`



# Teleport Player
__Appearance on Sign:__ `[Teleport]`

__Creation Aliases:__ `[teleport]`, `[tp]`

__Inputs:__

* `Player`, Type: `String`, Default: ``

* `Position`, Type: `Position`, Default: `[0.0,0.0,2.0]`

* `Teleport`, Type: `Float`, Default: `0.0`


__Permissions:__ `link.basic`



# Toggle Number
__Appearance on Sign:__ `[ToggleNum]`

__Creation Aliases:__ `[tog]`, `[toggle]`, `[togglenum]`

__Outputs:__

* `Value`, Type: `Float`, Default: `0.0`


__Permissions:__ `link.basic`


#Compare Nodes

## Max
Returns the larger value from each input. If the input is a vector each value
is operated on independently.

## Min
Returns the smaller value from each input. If the input is a vector each value
is operated on independently.

## Lerp/Mix/Blend
Lerp between A and B inputs.

Lerp is a linear interpolation between the first 2 elements. A table can be
found below showing the expected values.  
This node is excelent for smoothly picking between values in a range.  

| A       | B        | Factor  |   Value     |
| ------  | -------- | ------- | ----------- |
| 0       | 1        | 0       |     0       |
| 0       | 1        | 1       |     1       |
| 0       | 0        | 1       |     0       |
| 0       | 1        | 0.5     |     0.5     |
| 2       | 3        | 0.75    |     2.75    |


## Step
If b > a return 1. Otherwise return 0.

### SmoothStep
If X < Edge 1 return Edge 1.  
If X > Edge 2 return Edge 2.  
Otherwise return a smoothly changing value between the two edges.

### Greater Than
If A > B return 1.  
Otherwise return 0.

### Less Than
If A < B return 1.  
Otherwise return 0.

### Greater Than or Equal
If A => B return 1.  
Otherwise return 0.


### Less Than or Equal
If A <= B return 1.  
Otherwise return 0.

#Math Nodes

## Vector Length
Get the [Euclidean](https://en.wikipedia.org/wiki/Euclidean_distance) length of
the vector using the same logic found in the
[Pythagorean theorem.](https://en.wikipedia.org/wiki/Pythagorean_theorem)


## Add
Add the values together. If a vector is used each component is operated on
independently.

## Subtract
Subtract the values from each other. If a vector is used each component is
operated on independently.

## Multiply
Multiply the values with each other. If a vector is used each component is
operated on independently.

## Divide
Divide the values from each other. If a vector is used each component is
operated on independently.

#Misc
## HSV To RGB
The input is assumed to be in Hue Saturation Value Alpha format.  
The output is in Red Green Blue Alpha format.

## RGB To HSV
The input is assumed to be in Red Green Blue Alpha format.  
The output is in Hue Saturation Value Alpha format.

## Combine XYZW
Combine several nodes into one. Missing Values will be replaced with 0.

## Zero Extend
Extend the input to contain more values. Missing values will be replaced with
0.

## Raw Text
This node allows raw shader code to be injected.  

The top section allows you to add inputs and outputs. These values will be
initilized before your code runs. The next section is a multi line text box
that allows you to enter your own code. Instead of using the variables you
requested wrapp them in braces like `{{this}}`. This will cause your variables
to have their names mangled to match the values actually present in the shader.

#Input
## Time
Returns the number of seconds since the world loaded. This is not synced.

## Property
Allows creating a property thatt can be edited in your modules section of the
material properties.  If checked the `Is Constant` checkbox will cause the
value to be used directly and it will not be avaliable for editing. 

The type of property can be selected from the dropdown. The name used in the
material properties can be found and edited in the upper text box.

## Texture - Poiyomi controls
Create a new texture that is configured like it would be if it was a built in
Poiyomi texture.

## Audio Link Simple Sample
Sample the AudioLink intensity for individual bands at a particular point in time.

## GradientTextureLogic
Create a new texture that to act as a gradient including the Poiyomi built in
gradient editor.

## UVLogic
Sample UVS. This provides an interface like you would expect to find on a texture.

#Trig
## Sine
## Cosine
## Tangent
Each of these functions takes one input in radians and returns a value
according to normal trig rules.

## ArcSine
## ArcCosine
## ArcTangent
Each of these functions takes one input and returns a value
according to normal trig rules.

## ToDegrees
Convert a value in radians to degrees

## ToRadians
Convert a value in degrees to radians 

## PoiModuleOutput
This is a special node that you can not delete or copy.


This node is used to interact with the larger Poiyomi shader and set values
used elsewhere in the shader. 


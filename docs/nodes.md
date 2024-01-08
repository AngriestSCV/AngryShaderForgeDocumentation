##Compare Nodes

### Max / Min
![min-max.png](node-images/min-max.png)

Returns the smaller or larger of the inputs. Each component of the input is
operated on separately.

### Lerp/Mix/Blend
![Lerp](node-images/lerp.png)
<h2>High detail lerp docs <a href="lerp.md">Here</a></h2>

Lerp between A and B inputs.

Lerp is a linear interpolation between the first 2 elements. 
This node is excellent for smoothly picking between values in a range,
or selecting one of 2 inputs.

See the link above for a detailed breakdown of exactly how this node works.

### Step
![Step](node-images/step.png)

If b > a return 1. Otherwise return 0.

### SmoothStep
![Smooth Step](node-images/smooth_step.png)

If X < Edge 1 return Edge 1.  
If X > Edge 2 return Edge 2.  
Otherwise return a smoothly changing value between the two edges.

### Greater Than &  Less Than 
![compare](node-images/compare.png)

Returns 1 if the condition is met. 0 otherwise. 

## Math Nodes

### Vector Length
![Vector Lenght](node-images/vector_length.png)

Get the [Euclidean](https://en.wikipedia.org/wiki/Euclidean_distance) length of
the vector using the same logic found in the
[Pythagorean theorem.](https://en.wikipedia.org/wiki/Pythagorean_theorem)


### Add / Subtract / Multiply / Divide
![Basic Math](node-images/basic-math.png)

These math nodes preform basic math on their inputs. 
The ports are always the same type and each operation takes place independently 
on the components of the inputs.

## Misc

### HSV To RGB

### RGB To HSV
![hsv_converters](node-images/hsv_converters.png)

Convert between (Hue Saturation Value Alpha) and (Red Green Blue Alpha)

### Combine XYZW
![combine_xyzw](node-images/combine_xyzw.png)

Combine several nodes into one value. Missing Values will be replaced with 0.

### Zero Extend
![zero_extend](node-images/zero_extend.png)

Extend the input to contain more values. Missing values will be replaced with
0

### Split
![split](node-images/split.png)

This node splits a multi component input into parts. The outputs dynamically change to match the available 
ones in the input.

### Raw Text
![raw_text](node-images/raw_text.png)

This node allows raw shader code to be injected.  

The top section allows you to add inputs and outputs. These values will be
initialized before your code runs. The next section is a multi line text box
that allows you to enter your own code. Instead of using the variables you
requested wrap them in braces like `{{this}}`. This will cause your variables
to have their names mangled to match the values actually present in the shader.

In the example above the value Bang is replaced with Clang.xyxy.

Note that when this is used with the Preview Node you will often have a broken
shader while you are typing. This is to be expected and the shader is
recreated every time you update the text.

### Preview
![preview](node-images/preview.png)

This node allows for viewing of previews of parts of the shader to help
visualize the logic.  To use it plug any node in to its input. Float nodes will
be shown in black and white. Vector2 and Vector3 nodes will be shown by
replacing RGB with their corresponding XYZ values.
The alpha channel for Vector4s are set to fully opaque to make it
possible to view the preview.

The preview node can not handle the ReadProperty , Global Mask, or Camera
Distance node. Using them in a will result in an error and either the shader
being pink or not generating at all. 

To get audio link working with this node you will need to be in play mode.
Updates to the module often break AudioLink. Toggling the Audio Link source in
unity on and off resolves the issue.

The Debug Panel is for internal use and will change in the future, but you may find it helpful.

#Input
## Time
![time](node-images/time.png)

Returns the number of seconds since the world loaded. This is not synced.

## Property
![property](node-images/property.png)

Allows creating a property that can be edited in your modules section of the
material properties.  If checked the `Is Constant` checkbox will cause the
value to be used directly and it will not be available for editing in the inspector. 

The type of property can be selected from the dropdown. The name used in the
material properties can be found and edited in the upper text box.

![float range](node-images/float-range.png)

A special case UI is available for the float property type. If you enable `Use
Float Range` you will be able to set a range for the node and get a slider in
your shader. This can be seen in the image above.

## Texture - Poiyomi controls
![texture](node-images/texture.png)

Create a new texture that is configured like it would be if it was a built in
Poiyomi texture.

## AudioLink Simple Sample
![audiolink_sample](node-images/audiolink_sample.png)

Sample the AudioLink intensity for individual bands at a particular point in time.
Has Audio Link is 1 if audio link is active at the moment.

## AudioLink Chrono
![chrono](node-images/chrono.png)

Sample the AudioLink Chrono values. The output acts roughly like time modified in the ways that the dropdowns suggest.

## Gradient
![gradient](node-images/gradient.png)

Create a new texture to act as a gradient including the Poiyomi built in
gradient editor. 

## UVLogic
![uv](node-images/uv.png)

Sample UVS. This provides an interface like you would expect to find on a texture.

## Global Mask
![global-mask-node](node-images/global-mask-node.png)
![global-mask-editor](node-images/global-mask-inspector.png)

This node provides access to the global masks you are use to in Poi.
While there isn't much to see in the node editor the inspector uses the same
dropdown that you can find in many other places in the shader.

<h3><b><u>Note that this node is not currently compatiable with the Preview Node</u></b></h3>

## Read Property
![read-property](node-images/read-property.png)

Just as the Poi Output node allows you to write properties this node enables
you to read from them. This when used with the global mask node enables you to
disable your node for certain parts of the mesh.

<h3><b><u>Note that this node is not currently compatible with the Preview Node</u></b></h3>

## Camera Distance / Proximity
![camera-distance](node-images/camera-distance.png)

This node provides the distance a pixel is from the camera.

The world output is in world space.  
The object output is in local space to the object and it is effected by object scale.

<h3><b><u>Note that this node is not currently compatible with the Preview Node</u></b></h3>

## Vertex Normal
![vertex normal input](node-images/vertex-normal-input.png)

This node enables both the fragment and vertex stage to access the vertex
normal data.

The nodes provide normal, tangent, and the bi-normal (cross product of normal and tangent).

## Vertex Position
![vertex position](node-images/vertex-position.png)

This node enables access to the vertex position and offsets.

Local Offset is the extra offset applied by the shader.

Object Position is the offset when compared to the origin of the object.

World Position is as expected the offset from the world origin.

#Trig

## Sine / Cosine / Tangent
![trig](node-images/trig.png)

Each of these functions takes one input in radians and returns a value
according to normal trig rules.

## ArcSine / ArcCosine / ArcTangent

![arc_trig](node-images/arc_trig.png)

Each of these functions takes one input and returns a value
according to normal trig rules.

## ATan2
![arctan2](node-images/atan2.png)

This is a specialized version of Arc Tangent that takes 2 values and can
determine which angle the value belongs to. The normal Arc Tangent can't
determine a difference between 45 and 135 degrees for instance. This can give
the confusing results in those cases, but `atan2` uses the fact that it gets 2
values in to differentiate these cases.


## ToDegrees / ToRadians
![angle_conversion](node-images/angle_conversion.png)

Convert values between degrees and radians depending on the node selected

#Output

## PoiModuleOutput
![poi_output](node-images/poi_output.png)

This is a special node that you can not delete or copy.

This node is used to interact with the larger Poiyomi shader and set values
used elsewhere in the shader. 

## Normal Output
![normal output](node-images/normal-output.png)

This node enables you to edit the normals for both the vertex stage and the
fragment stage. These do not combine with the existing normals and instead
override them. Use the Normal Input node if you want to combine with them.

As suggested by the names both the Frag and Vertex normals are in world space.

## Vertex Position Output
![vertex position output](node-images/vertex-position-output.png)

This node lets you set the local offset (in object space) for the node.
Combine this with the vertex position input node of you want to keep
pre-existing transforms.



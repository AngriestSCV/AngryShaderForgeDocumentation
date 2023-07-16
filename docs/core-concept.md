## Understanding the Angry Shader Forge conecept

### Modular Shaders
Poiyomi 8 is built using the 
[Modular Shader System](https://github.com/VRLabs/Modular-Shader-System)
which is the key to this working. This enables creating a small snippet of
functionality and essentially lets you copy paste it into the larger shader at
generation time. 


### ThryEditor
This is a tool avaliable freely on
[github](https://github.com/Thryrallo/ThryEditor)
that forms the core of the
Poiyomi shader lock system. This step optimize your shader by rewriting it and
inlining some variables.  This can be a problem for us as after these values
are inlined we can no longer modify them with our modules.  Animating a
property prevents inlining and allows us to modify the value. Failure to do so
with result in either a failed shader (pink) or a shader that just does not do
what you expected when locked, but works fine when the shader is unlocked.


### Poiyomi's Shader
When using Poiyomi 8 pro you have access to the shader modules that are used in the
development of the shader. This gives us access to the "Modular Shader System"
bits that we need to inject new code directly into the shader using the same
tools used to create the main shader. 


### Angry Shader Forge Module
Angry Shader Forge generates `ShaderModules` in a format that is compatible with
Poiyomi's shader. A module is compiled into a list of commands starting at the
Output working back. This includes mangling the names of the shader variables
so that they do not conflict with any other variables from other modules even
if the names appear the same in the UI.

The end result of this is that the property named in the Output module is
changed at a stage in the Poiyomi shader before much has happened. This in
essence allows you to have per pixel and per frame control over almost all
values in the Poiyomi shader. 

Of note is that since we are modifying these values they must be animated. 
The shader locking process described above will inline these properties and
prevent this tool from working if they are not animated. 
At this time the tool can not assist in ensure that things are locked when they
should be.


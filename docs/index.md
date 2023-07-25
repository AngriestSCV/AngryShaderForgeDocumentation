# Angry Shader Forge Documentation
Angry Shader Forge (ASF) is a tool for Unity that helps you author your own
shader modules that integrate into Poiyomi Pro.
While the final shader is a composite work and can't be freely
distributed due to including Poiyomi's code the generated modules themselves
are yours to use and distribute as you see fit.

The initial release video contains enough to get you started.

<!-- initial release video on youtube -->
<iframe width="560" height="315" src="https://www.youtube.com/embed/73M6UEvoF4U" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

<style>
    .gumroad-button {
        background-color: #4cae4f;
        border-radius: 10px;
        text-align: center;
    }
    .gumroad-button-text {
        color: #fff !important;
    }
</style>

<a href="https://angriestscv.gumroad.com/l/AngryShaderForge">
    <div class="gumroad-button">
        <h1 class="gumroad-button-text " >Click to Find the Product on Gumroad</h1>
    </div>
</a>

<a href="https://discord.gg/apqHd3meEs">
    <div class="gumroad-button">
        <h1 class="gumroad-button-text " >Join The AngryLabs Discord</h1>
    </div>
</a>




## Requirements
Poiyomi 8 pro is required. The free version does not provide the required files
and it will not be supported in the foreseeable future

While not an actually requirement AudioLink from the Vrchat Creator Companion is
highly recommended.

## Building A Module
### Pre Building
The best way to use this tool is to find a slider or number that already exists
in Poiyomi that you want to modify. Remember that you can sample from textures,
sample audio link, write arbitrary logic. Your creativity is the limit.  

After a target has been selected right click the item in the inspector and enable animation. 
Then right click it again and right click "Copy Property Name" to copy the property name to your clipboard.

Next right click in the project view that contains your files and go to  
`Create > AngryLabs > Angry Shader Forge > Poiyomi Module`   
This will create a new angrySF file that you can name. Double click it after
selecting a name; this will open the module editor window or if one is already
open it will open the new module in the existing window.

Find the existing `Output` node and paste your property name into it's upper
text area. Click the `Add Property` button to add this property as an available
output. At this point you are ready to move on to building your shader module.

### Nodes

Nodes are made and edited in their own editor that comes with the tool.
With it you connect them together to build up a module. 
It also includes an integrated module builder, installer, 
and shader generator.

### Shader Build Process
There are 2 ways to build your module. The first is with the `Full Send` button
that you can find near the top. This will build your module, make a copy of the
modular shader that you have input, install your module, generate the final
shader, and post process the shader. 
After this you can use your shader and the module you built will be available.

The second way is to open the Advanced panel by toggling on the Advanced Options control.
This lists all of the steps required to build a shader. They each have a name and a tooltip.
The full send button essentially clicks them one at a time and stops if one reports an error.



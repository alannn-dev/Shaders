# SHADERS

## Setup
Download [Node.js](https://nodejs.org/en/download/).
Run this followed commands:

``` bash
# Install dependencies (only the first time)
npm install

# Run the local server at localhost:8080
npm run dev

# Build for production in the dist/ directory
npm run build
```

## SHADERS 
 - Written in GLSL
 - Sent to GPU
 - Two type of shaders : VERTEX SHADERS & FRAGMENT SHADER
 - To position VERTEX of the geometry
 - To colorize each pixel (FRAGMENT)

### VERTEX SHADER
``` bash
The Vertex Shader is a small program that runs on the GPU for every single vertex of your geometry.

Positioning: Its main job is to transform a vertex's 3D coordinates into 2D screen positions (using the mandatory gl_Position variable).

Data Prep: It receives Attributes (raw data) and Uniforms (global data) to calculate where the point should appear, then prepares Varyings for the Fragment Shader.

In one sentence: It is the stage that handles the shape and placement of your object in 3D space.
```

### FRAGMENT SHADER
``` bash
The Fragment Shader (or Pixel Shader) is the program that runs for every single pixel (fragment) displayed on the screen.

Coloring: Its main job is to determine the final color of each pixel (using the gl_FragColor variable).

Visual Calculations: It handles lighting, shadows, textures, and color blending.

Input: It uses Uniforms (global data) and Varyings (interpolated data from the Vertex Shader) for its calculations.

In one sentence: If the Vertex Shader handles the shape, the Fragment Shader handles the appearance (color, light, texture).
```

## ATTRIBUTES
``` bash
A vertex-specific variable is sent from the CPU to the GPU via BufferGeometry:

Individual: Unlike uniform, its value changes for each vertex (a vertex has its own position, color, etc.).

Mass Storage: Attributes are extracted from large data arrays (Float32Array) to define the object's structure.

Only accessible in the Vertex Shader. To use them in the Fragment Shader (pixels), they must be passed via a VARYING variable.

In short, it's the unique identifier for each point that makes up your 3D object.
```

## UNIFORMS
``` bash 
A uniform is a global, constant (read-only) variable sent by the CPU (JavaScript) to the GPU (Shader).

Identical for all: The same value for each vertex and each pixel (fragment) during a render cycle.

External control: Allows you to control the shader from your Three.js code (to change the time, a color, or a mouse position).

Read-only: The shader can use its value for calculations, but it cannot modify it.

In short, it's the main communication channel for animating or configuring your shaders in real time.
```
## VARYING
``` bash
Variable that transmits and interpolates data between the vertex and the Fragment (Pixel).
```
## LINKS
``` bash
https://thebookofshaders.com/
https://registry.khronos.org/OpenGL-Refpages/gl4/html/indexflat.php
https://shaderific.com/glsl.html
https://www.shadertoy.com/
```

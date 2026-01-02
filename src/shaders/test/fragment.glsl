precision mediump float;

uniform vec3 uColor;
uniform sampler2D uTexture;

// varying float vRandom;

// Get UV from the vertex attribute
varying vec2 vUv;

void main()
{
    vec4 textureColor = texture2D(uTexture, vUv);
    gl_FragColor = textureColor;
}
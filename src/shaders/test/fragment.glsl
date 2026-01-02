precision mediump float;

uniform vec3 uColor;
uniform sampler2D uTexture;

// varying float vRandom;
varying float vElevation;

// Get UV from the vertex attribute
varying vec2 vUv;

void main()
{
    vec4 textureColor = texture2D(uTexture, vUv);
    textureColor.rgb *= vElevation * 2.0 + 0.8;
    gl_FragColor = textureColor;
}
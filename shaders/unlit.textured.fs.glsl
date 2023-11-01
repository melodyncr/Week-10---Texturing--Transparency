precision mediump float;
uniform sampler2D uTexture;
uniform float uAlpha;
// todo #3 - receive texture coordinates and verify correctness by
// using them to set the pixel color
varying vec2 vTextureCoord;
void main(void) {
    // todo #5
    // todo #3
    vec4 sampledColor = texture2D(uTexture, vTextureCoord);
    // vec4 vTextureCoord = texture2D(uTexture, vTextureCoord);
   // gl_FragColor = vec4(vTextureCoord.r, vTextureCoord.g, 0.0, uAlpha);
    gl_FragColor = vec4(sampledColor.rgb, uAlpha);
}

// EOF 00100001-10

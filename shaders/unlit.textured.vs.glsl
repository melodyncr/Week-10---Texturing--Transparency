precision mediump float;
attribute vec3 aVertexPosition;
attribute vec2 aTexcoords;
uniform mat4 uWorldMatrix;
uniform mat4 uViewMatrix;
uniform mat4 uProjectionMatrix;
varying vec2 vTextureCoord; // Declare the varying variable
void main(void) {
    vTextureCoord = aTexcoords; // Set the texture coordinates
    gl_Position = uProjectionMatrix * uViewMatrix * uWorldMatrix * vec4(aVertexPosition, 1.0);
}
// EOF 00100001-10
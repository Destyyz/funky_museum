#version 330 core

in vec3 vFragPosition;
in vec3 vFragNormals;
in vec2 vFragTexCoords;

out vec3 fFragResult;

uniform sampler2D uTexture1;

void main() {
    fFragResult = texture(uTexture1, vFragTexCoords).xyz;
}
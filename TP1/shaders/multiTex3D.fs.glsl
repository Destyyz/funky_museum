#version 330 core

in vec3 vFragPosition;
in vec3 vFragNormals;
in vec2 vFragTexCoords;

out vec3 fFragResult;

uniform sampler2D uEarthTexture;
uniform sampler2D uCloudTexture;

void main() {
    fFragResult = texture(uEarthTexture, vFragTexCoords).xyz + texture(uCloudTexture, vFragTexCoords).xyz;
}
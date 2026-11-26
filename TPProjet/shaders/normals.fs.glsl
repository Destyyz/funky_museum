#version 330 core

in vec3 vFragPosition;
in vec3 vFragNormals;
in vec2 vFragTexCoords;

out vec3 fFragTexture;

void main() {
    fFragTexture = normalize(vFragNormals);
}
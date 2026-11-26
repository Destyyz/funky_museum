#version 330 core

in vec3 vFragPosition;
in vec3 vFragNormals;
in vec2 vFragTexCoords;

out vec3 fFragColor;

uniform vec3 uLightPos_vs;
uniform vec3 uLightIntensity;

uniform vec3 uKd;
uniform vec3 uKs;
uniform float uShininess;


vec3 blinnPhong(){
    vec3 wi = normalize(uLightPos_vs - vFragPosition);
    float distance = length(uLightPos_vs - vFragPosition);
    vec3 Li = min(uLightIntensity/(distance*distance), uLightIntensity);

    vec3 w0 = normalize(-vFragPosition);
    vec3 halfVector = (w0 + wi) / 2;

    float wiN = max(dot(wi, normalize(vFragNormals)),         0);
    float hfN = max(dot(halfVector, normalize(vFragNormals)), 0);

    vec3 couleur = Li * ((uKd*wiN) + (uKs*pow(hfN, uShininess)));
    return couleur;
}

void main() {
    fFragColor = blinnPhong();
}
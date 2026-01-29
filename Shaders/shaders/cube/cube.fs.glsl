#version 330 core

in vec3 FragPos;
in vec3 Normal;
in vec2 TexCoords;

out vec4 FragColor;

uniform float time;
uniform sampler2D texture1;

const float PI = 3.14159265358979323826264;

float calcFactor(float value) {
    return (cos(value * PI * 2) / 2) + 0.5;
}

void main()
{
    vec3 norm = normalize(Normal);
    
    vec3 finalColor = vec3(1.0, 0.0, 0.0);

    float factor = calcFactor(TexCoords.x) * calcFactor(TexCoords.y);

	FragColor = mix(vec4(finalColor, 1.0), vec4(1.0), factor);
}

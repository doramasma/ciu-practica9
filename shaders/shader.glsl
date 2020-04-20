#ifdef GL_ES
precision mediump float;
#endif

#define PI 3.14159265358979323846

uniform vec2 u_resolution;
uniform vec2 u_mouse;
uniform float u_time;


vec2 rotate (vec2 _st, float _angle) {
  _st =  mat2(cos(_angle),-sin(_angle),
              sin(_angle),cos(_angle)) * _st;
  return _st;
}

float random (vec2 st) {
    return fract(sin(dot(st.xy,
                         vec2(12.9898,78.233)))*
        43758.5453123);
}

float res = 10.0;

void main() {
    vec2 st = gl_FragCoord.xy/u_resolution.xy;

    st *= 1000; 
    st = rotate(st,-PI*u_time*-0.534);

    vec2 ipos = floor(st);  
    vec2 fpos = fract(st);  

    
    vec3 color = vec3(random( ipos ));

    gl_FragColor = vec4(color,1.0);
}

varying vec2 v_texcoord;

void main()
{ 
    vec4 colour = texture2D(gm_BaseTexture, v_texcoord);
    vec3 sepia = vec3(0.0);
    sepia.r = dot(colour.rgb, vec3(0.2125,0.7154,0.0721));
    sepia.g = dot(colour.rgb, vec3(0.2125,0.7154,0.0721));
    sepia.b = dot(colour.rgb, vec3(0.2125,0.7154,0.0721));
    gl_FragColor.rgb = mix(colour.rgb,sepia.rgb, 1.0);
    gl_FragColor.a = colour.a;
}

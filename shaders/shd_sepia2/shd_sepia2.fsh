varying vec2 v_texcoord;

void main()
{ 
    vec4 colour = texture2D(gm_BaseTexture, v_texcoord);
    vec3 sepia = vec3(0.0);
    sepia.r = dot(colour.rgb, vec3(0.784313725, 0.788235294, 0.262745098));
    sepia.g = dot(colour.rgb, vec3(0.490196078, 0.521568627, 0.152941176));
    sepia.b = dot(colour.rgb, vec3(0.0, 0.415686275, 0.0));
    gl_FragColor.rgb = mix(colour.rgb,sepia.rgb, 1.0);
    gl_FragColor.a = colour.a;
}

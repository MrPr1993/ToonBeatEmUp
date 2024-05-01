
varying vec2 v_texcoord;

void main()
{ 
    vec4 colour = texture2D(gm_BaseTexture, v_texcoord);
    vec3 sepia = vec3(0.0);
    sepia.r = dot(colour.rgb,  vec3(1.0,0.0,1.0));
    sepia.g = dot(colour.rgb, vec3(1.0,0.0,1.0));
    sepia.b = dot(colour.rgb,  vec3(1.0,0.0,1.0));
	
	
    gl_FragColor.rgb = mix(colour.rgb,sepia.rgb, 1.0);
    gl_FragColor.a = colour.a;
	gl_FragColor.r += 0.139;
	gl_FragColor.g += 0.172;
	gl_FragColor.b += 0.045;
	
}



varying vec2 v_texcoord;

//uniform float gamma;
//uniform float numColors;

void main()
{ 
    vec4 colour = texture2D(gm_BaseTexture, v_texcoord);
    vec3 sepia = vec3(0.0);
    sepia.r = dot(colour.rgb,  vec3(1.0,0.0,1.0));
    sepia.g = dot(colour.rgb, vec3(1.0,0.0,1.0));
    sepia.b = dot(colour.rgb,  vec3(1.0,0.0,1.0));
    gl_FragColor.rgb = mix(colour.rgb,sepia.rgb, 1.0);
    gl_FragColor.a = colour.a;
}

//void main()
//{ 

//float gamma = 1.0; // 0.6
//float numColors = 4.0; // 8.0
  
//  vec3 col = texture2D(gm_BaseTexture, v_texcoord).rgb;
//  col = pow(abs(col), vec3(gamma, gamma, gamma));
//  col = col * numColors;
//  col = floor(col);
//  col = col / numColors;
//  col = pow(abs(col), vec3(1.0/gamma));
//  gl_FragColor = vec4(col, texture2D(gm_BaseTexture, v_texcoord).a);
  
//    gl_FragColor.r = dot(col.rgb,  vec3(1.0,1.0,1.0));
 //   gl_FragColor.g = dot(col.rgb, vec3(1.0,1.0,1.0));
 //   gl_FragColor.b = dot(col.rgb,  vec3(1.0,1.0,1.0)); 
 
//}
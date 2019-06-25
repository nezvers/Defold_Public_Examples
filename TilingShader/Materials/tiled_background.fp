varying mediump vec2 var_texcoord0;

uniform lowp sampler2D texture_sampler;
uniform lowp vec4 tint;
uniform lowp vec4 size;
uniform lowp vec4 scale;
uniform lowp vec4 offset;

void main()
{
    lowp vec2 uv = vec2(var_texcoord0.x *scale.x +offset.x, var_texcoord0.y *scale.y +offset.y);
    uv = vec2(mod(uv.x, size.x), mod(uv.y, size.y));
    gl_FragColor = tint * texture2D( texture_sampler, uv);
}
# Chroma Key Shader

This is a shader script for Godot Engine that implements a chroma key effect. Chroma keying is a technique used to remove a
specific color (usually green or blue) from an image or video, making it transparent and allowing other content to show through.

The shader provides **RGB Comparison** options for the chroma key effect.
![Chrome_key_shader](https://github.com/Ymanawat/Chroma-Key-Shader-Godot-4/assets/81252768/dd825f8b-e4f3-4780-b919-473f1781598d)

## Usage

1. Create a `Sprite` node or a `VideoStreamPlayer` on which you want to apply the effect.
2. Create a new `ShaderMaterial` from the material properties of the node.
3. Attach the shader script `control.gdshader` to the ShaderMaterial.
4. Adjust the shader's properties to control the chroma key effect:
   - `transparent_color`: The target color to be replaced with transparency (in RGB format).
   - `pickup_range`: The distance allowed from the chroma key color in RBG space (0.0 to 1.0).
   - `fade_amount`: The amount of fading effect applied to the color and nearest pixels (0.0 to 1.0).

- The **RGB Comparison** option gives sharper results, but the code is more straightforward and shorter.
- The **HSL Comparison** option provides smoother shading but involves a slightly larger code due to the custom HSL
conversion function implemented in the shader.

## Credits

The original video I used is provided by pexels (https://www.pexels.com/video/a-man-with-a-green-background-9488367/)

The original shader script was inspired by [Reddit user's post](https://www.reddit.com/r/godot/comments/14m8d03/how_to_chroma_key_a_green_screen_video_with_godot/).



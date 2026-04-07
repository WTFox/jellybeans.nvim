## Kitty Terminal Jellybeans Theme

To use this theme:

1. Navigate to your Kitty config directory (usually `$HOME/.config/kitty/`)

2. Create a `themes` directory if it doesn't exist already:
   ```bash
   mkdir -p ~/.config/kitty/themes
   ```

3. Copy the theme file(s) to your themes directory:
   ```bash
   # For the dark theme
   cp jellybeans.conf ~/.config/kitty/themes/
   
   # For the light theme
   cp jellybeans-light.conf ~/.config/kitty/themes/
   ```

4. Edit your Kitty config file (usually `~/.config/kitty/kitty.conf`) and add one of the following lines:

   - For the dark theme:
   ```
   include themes/jellybeans.conf
   ```

   - For the light theme:
   ```
   include themes/jellybeans-light.conf
   ```

   - For the high contrast theme:
   ```
   include themes/jellybeans-hc.conf
   ```

   - For the warm theme:
   ```
   include themes/jellybeans-warm.conf
   ```

5. Restart Kitty or reload your configuration (usually `ctrl+shift+f5` or `cmd+ctrl+,` on macOS)

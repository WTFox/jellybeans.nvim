# Jellybeans for Tmux

This directory contains tmux themes that match the Jellybeans Neovim colorscheme. These themes not only set colors but also configure tmux status bar options for a complete experience.

## Available Themes

- **jellybeans** - The default vibrant dark theme
- **jellybeans-light** - Light variant of the vibrant theme
- **jellybeans-mono** - Monochromatic dark theme with muted browns and blues
- **jellybeans-mono-light** - Light variant of the monochromatic theme
- **jellybeans-muted** - Dark theme with desaturated colors
- **jellybeans-muted-light** - Light theme with desaturated colors
- **jellybeans-hc** - High contrast dark theme with near-black background and boosted accents
- **jellybeans-warm** - Dark theme with neutral tones shifted toward amber and espresso

## Installation

### Manual Installation

1. Clone the repository and copy the tmux theme files to a location of your choice:

   ```bash
   git clone https://github.com/wtfox/jellybeans.nvim.git
   mkdir -p ~/.tmux/themes/jellybeans
   cp -r jellybeans.nvim/extras/tmux/* ~/.tmux/themes/jellybeans/
   ```

2. Add the following to your `~/.tmux.conf`:

   ```bash
   # Optional: Configure theme options (see Configuration section below)
   set -g @jellybeans_flavour 'jellybeans'  # Choose your preferred flavor

   # Load the theme
   run-shell ~/.tmux/themes/jellybeans/jellybeans.tmux
   ```

   The `run-shell` command is essential as it executes the theme script that applies all the colors and formatting to your tmux environment.

3. Reload your tmux configuration:

   ```bash
   tmux source-file ~/.tmux.conf
   ```

## Configuration

The Jellybeans tmux theme sets a complete status bar with configurable options. Add these to your `~/.tmux.conf` before the theme is loaded:

```bash
# Theme Selection
set -g @jellybeans_flavour 'jellybeans'           # Theme flavor (default, light, mono, mono-light, muted, muted-light, hc, warm)

# Separator Options (requires Nerd Fonts)
set -g @jellybeans_left_separator ''             # Left separator (default is "")
set -g @jellybeans_right_separator ''            # Right separator (default is "")
set -g @jellybeans_left_subseparator ''          # Left subseparator (default is "")
set -g @jellybeans_right_subseparator ''         # Right subseparator (default is "")

# Status Line Components
set -g @jellybeans_show_battery 'off'             # Show battery indicator
set -g @jellybeans_battery_icon '🔋'              # Battery icon
set -g @jellybeans_show_user 'on'                 # Show username
set -g @jellybeans_show_host 'on'                 # Show hostname
set -g @jellybeans_show_window_flags 'off'        # Show window flags
set -g @jellybeans_status_modules_right 'battery date time' # Right status modules

# Format Options
set -g @jellybeans_date_format '%Y-%m-%d'         # Date format
set -g @jellybeans_time_format '%H:%M'            # Time format
set -g @jellybeans_session_icon '󰝘'               # Session icon (default is "󰝘")
set -g @jellybeans_window_icon '󱂬'                # Window icon (default is "󱂬")
set -g @jellybeans_pane_icon ''                   # Pane icon (default is "")
```

### Customizing Separator Style

Since the default separators are empty, you may want to set them to achieve a desired look. Here are some popular styles:

#### Angle Style (Default)

```bash
set -g @jellybeans_left_separator ''
set -g @jellybeans_right_separator ''
```

#### Slant Style

```bash
set -g @jellybeans_left_separator ''
set -g @jellybeans_right_separator ''
```

#### Rounded Style

```bash
set -g @jellybeans_left_separator ''
set -g @jellybeans_right_separator ''
```

#### Block Style

```bash
set -g @jellybeans_left_separator '█'
set -g @jellybeans_right_separator '█'
```

You can also customize the subseparators:

```bash
# Default Arrow subseparator
set -g @jellybeans_left_subseparator ''
set -g @jellybeans_right_subseparator ''

# line subseparator
set -g @jellybeans_left_subseparator '│'
set -g @jellybeans_right_subseparator '│'
```

## Requirements

This theme requires:

1. A terminal that supports true color (24-bit color)
2. A patched Nerd Font for the icons and separators
3. Tmux version 3.1 or higher

## What Gets Configured

This theme not only sets colors but also configures:

- Status bar position, justification, and length
- Message and command prompt styles
- Pane borders (with accent-colored active pane)
- Window status format and appearance
- Status line modules (customizable)
- Clock mode

## License

This theme follows the same license as the main Jellybeans Neovim theme.

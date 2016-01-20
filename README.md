# Tmux Uptime Plugin

Tmux plugin that enables displaying uptime status for your workstation.

Introduces a new `#{uptime}` format for your statuslines.

### Usage

The following interpolations are made available for your statusline:

* `#{uptime}` - The current system uptime.

Here's the example in `.tmux.conf`:

    set -g status-right "uptime: #{uptime} | %a %h-%d %H:%M "

### Screenshots

#### OSX

*Pretty*

![uptime1](/screenshots/uptime-pretty.png)<br/>

*Basic*

`set -g status-right "uptime: #{uptime} | %a %h-%d %H:%M "`

![uptime2](/screenshots/uptime-basic.png)<br/>

### Installation with [Tmux Plugin Manager](https://github.com/tmux-plugins/tpm) (recommended)

Add plugin to the list of TPM plugins in `.tmux.conf`:

    set -g @plugin 'robhurring/tmux-uptime'

Hit `prefix + I` to fetch the plugin and source it.

`#{uptime}` interpolation should now work.

### Manual Installation

Clone the repo:

    $ git clone https://github.com/robhurring/tmux-uptime ~/clone/path

Add this line to the bottom of `.tmux.conf`:

    run-shell ~/clone/path/uptime.tmux

Reload TMUX environment:

    # type this in terminal
    $ tmux source-file ~/.tmux.conf

`#{uptime}` interpolation should now work.


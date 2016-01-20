# Tmux Uptime Plugin

Tmux plugin that enables displaying uptime status for your workstation.

Introduces a few new `#{uptime}` formats for your statuslines.

### Usage

The following interpolations are made available for your statusline:

* `#{uptime_time}` - The minutes, hours, days of uptime. (Digit only)
* `#{uptime_label}` - The label of 'minutes', 'hours', 'days', etc.
* `#{uptime_short_label}` - The first character of the label. 'm' for 'minutes', etc.

Here's the example in `.tmux.conf`:

    set -g status-right "uptime: #{uptime_time}#{uptime_short_label} | %a %h-%d %H:%M "

### Screenshots

#### OSX

*Styled*

![uptime_styled](/screenshots/uptime-nice.png)<br/>

*Short*

![uptime_short](/screenshots/uptime-short.png)<br/>

*Longer*

![uptime_long](/screenshots/uptime-long.png)<br/>

### Installation with [Tmux Plugin Manager](https://github.com/tmux-plugins/tpm) (recommended)

Add plugin to the list of TPM plugins in `.tmux.conf`:

    set -g @plugin 'robhurring/tmux-uptime'

Hit `prefix + I` to fetch the plugin and source it.

`#{uptime_time}` interpolation should now work.

### Manual Installation

Clone the repo:

    $ git clone https://github.com/robhurring/tmux-uptime ~/clone/path

Add this line to the bottom of `.tmux.conf`:

    run-shell ~/clone/path/uptime.tmux

Reload TMUX environment:

    # type this in terminal
    $ tmux source-file ~/.tmux.conf

`#{uptime_time}` interpolation should now work.


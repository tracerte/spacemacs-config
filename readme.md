# Spacemacs configuration in a structured org-mode file

This repo creates a template for your spacemacs config to allow configuration
within a structured `org-mode` file. It also, becomes the the default place to
store your private configuration layers.

## Installation

Clone this repo as your `~/.spacemacs.d` directory.

```
git clone https://github.com/tracerte/spacemacs.org.git ~/.spacemacs.d
```


## Layer Creation
To create a new configuration layer use the named command :

    (SPC SPC or M-X) configuration-layer/create-layer RET

Then enter the name of your configuration in the prompt.

A directory named after the created configuration layer will be created here
along with template files within it (packages.el and extensions.el, more info
on the meaning of those files can be found in the [documentation][conf_layers]).

Each created file has further guidance written in them.

Once the configuration is done, restart Emacs to load, install and configure
your layer.

[conf_layers]: https://github.com/syl20bnr/spacemacs/blob/master/doc/DOCUMENTATION.org#extensions-and-packages

## Credit

Inspired by [ralesi/spacemacs.org](https://github.com/ralesi/spacemacs.org)

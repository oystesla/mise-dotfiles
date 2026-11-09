if status is-interactive
    ## Commands to run in interactive sessions can go here

	## Easy navigation to OneDrive
	function one
	    set user $HOME
	    cd "$HOME/OneDrive - DNB Bank ASA"
	end

	## Easy file hierarchy navigation
	function multicd
	    echo cd (string repeat -n (math (string length -- $argv[1]) - 1) ../)
	end
	abbr --add dotdot --regex '^\.\.+$' --function multicd

	## Set tab title to last command and dir
	function fish_title
	    # `prompt_pwd` shortens the title. This helps prevent tabs from becoming very wide.
	    echo $argv[1] (prompt_pwd)
	    pwd
	end

	## Aliases
	abbr -a tf terraform
	abbr -a code open -a "Visual\ Studio\ Code.app"
	abbr -a rebuild darwin-rebuild switch --flake .
    abbr -a ipy ipython3
    abbr -a cl raicode --profile claude
    abbr -a oc raicode --profile opencode
    #abbr -a ecr-login aws ecr get-login-password --region eu-west-1 | sudo docker login --username AWS --password-stdin 460141579414.dkr.ecr.eu-west-1.amazonaws.com

    ## Path changes
    set -gx PATH $HOME/.local/bin $PATH
    set -gx PATH /opt/homebrew/bin $PATH

    ## make default editor zed
    set -gx EDITOR "zed -w"

    # Disable greeting
    set fish_greeting

    mcfly init fish | source
    zoxide init fish --cmd j | source
end

# Added by OrbStack: command-line tools and integration
# This won't be added again if you remove it.
source ~/.orbstack/shell/init2.fish 2>/dev/null || :

#string match -q "$TERM_PROGRAM" "kiro" and . (kiro --locate-shell-integration-path fish)
/Users/ibz/.local/bin/mise activate fish | source

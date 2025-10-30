{ ... }:

{
  programs.nushell = {
    enable = true;

    settings = {
      show_banner = false;
    };

    extraConfig = ''
      def --env y [...args] {
        let tmp = (mktemp -t "yazi-cwd.XXXXXX")
        yazi ...$args --cwd-file $tmp
        let cwd = (open $tmp)
        if $cwd != "" and $cwd != $env.PWD {
          cd $cwd
        }
        rm -fp $tmp
      }

      let carapace_completer = {|spans: list<string>|
        carapace $spans.0 nushell ...$spans
        | from json
        | if ($in | default [] | where value =~ '^-.*ERR$' | is-empty) { $in } else { null }
      }

      let external_completer = {|spans|
        let expanded_alias = scope aliases
        | where name == $spans.0
        | get -o 0.expansion

        let spans = if $expanded_alias != null {
            $spans
            | skip 1
            | prepend ($expanded_alias | split row ' ' | take 1)
        } else {
            $spans
        }

        match $spans.0 {
            _ => $carapace_completer
        } | do $in $spans
      }

      $env.config.completions = {
        external: {
          enable: true
          completer: $external_completer
        }
      }
      $env.SSH_AUTH_SOCK = $"($env.XDG_RUNTIME_DIR)/ssh-agent.socket"
                  
      clear; fastfetch
    '';
  };
}

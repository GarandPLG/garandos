_: {
  programs.fish.functions = {
    # Count files, links and directories in the current folder
    countfiles = {
      body = ''
        for t in files links directories
            # $t[1] – pierwszy znak (f, l, d)
            echo (find . -type $t[1] | wc -l) $t
        end
      '';
      description = "Count files, links and directories in the current folder";
    };

    # Tail all text logs in /var/log
    logs = {
      body = ''
        sudo find /var/log -type f -exec file {} \; \
            | grep 'text' \
            | cut -d' ' -f1 \
            | sed -e 's/:$//g' \
            | grep -v '[0-9]$' \
            | xargs tail -f
      '';
      description = "Tail all text logs in /var/log";
    };

    # Quick directory creation and navigation
    mkcd = {
      body = ''
        mkdir -p $argv[1]; and cd $argv[1]
      '';
      description = "Create a directory and cd into it";
    };

    # Extract various archive formats
    extract = {
      body = ''
        for archive in $argv
            if test -f $archive
                switch $archive
                    case *.tar.bz2
                        tar xvjf $archive
                    case *.tar.gz
                        tar xvzf $archive
                    case *.bz2
                        bunzip2 $archive
                    case *.rar
                        unrar x $archive
                    case *.gz
                        gunzip $archive
                    case *.tar
                        tar xvf $archive
                    case *.tbz2
                        tar xvjf $archive
                    case *.tgz
                        tar xvzf $archive
                    case *.zip
                        unzip $archive
                    case *.Z
                        uncompress $archive
                    case *.7z
                        7z x $archive
                    case '*'
                        echo "don't know how to extract '$archive'..."
                end
            else
                echo "'$archive' is not a valid file!"
            end
        end
      '';
      description = "Extract various archive formats";
    };

    # Find files quickly
    ff = {
      body = ''
        if test -n "$argv[1]"
            find . -type f -name "*$argv[1]*"
        else
            echo "Usage: ff <pattern>"
        end
      '';
      description = "Find files matching a pattern";
    };

    # Find directories quickly
    fd = {
      body = ''
        if test -n "$argv[1]"
            find . -type d -name "*$argv[1]*"
        else
            echo "Usage: fd <pattern>"
        end
      '';
      description = "Find directories matching a pattern";
    };

    # IP address lookup
    whatismyip = {
      body = ''
        # Internal IP
        if command -v ip >/dev/null
            echo -n "Internal IP: "
            ip addr show wlan0 | grep "inet " | awk '{print $2}' | cut -d/ -f1
        else
            echo -n "Internal IP: "
            ifconfig wlan0 | grep "inet " | awk '{print $2}'
        end

        # External IP
        echo -n "External IP: "
        curl -4 ifconfig.me
      '';
      description = "Show internal and external IP addresses";
    };

    # Search for text in all files in the current folder
    ftext = {
      body = ''
        if test -n "$argv[1]"
            grep -iIHrn --color=always "$argv[1]" . | less -r
        else
            echo "Usage: ftext <search term>"
        end
      '';
      description = "Search text in files, showing matches with highlighting";
    };

    # Copy file with a progress bar
    cpp = {
      body = ''
        set -e
        # Use strace to monitor cp progress
        strace -q -ewrite cp -- $argv[1] $argv[2] 2>&1 |
            awk '
                {
                    count += $NF
                    if (count % 10 == 0) {
                        percent = count / total_size * 100
                        printf "%3d%% [", percent
                        for (i=0;i<=percent;i++) printf "="
                        printf ">"
                        for (i=percent;i<100;i++) printf " "
                        printf "]\r"
                    }
                }
                END { print "" }' total_size="$(stat -c "%s" $argv[1])" count=0
      '';
      description = "Copy a file with a visual progress bar";
    };

    # Copy and go to the directory
    cpg = {
      body = ''
        cp $argv[1] $argv[2]
        if test -d $argv[2]
            cd $argv[2]
        end
      '';
      description = "Copy a file and cd into the destination directory if it's a directory";
    };

    # Move and go to the directory
    mvg = {
      body = ''
        mv $argv[1] $argv[2]
        if test -d $argv[2]
            cd $argv[2]
        end
      '';
      description = "Move a file and cd into the destination directory if it's a directory";
    };

    # Create and go to the directory
    mkdirg = {
      body = ''
        mkdir -p $argv[1]; and cd $argv[1]
      '';
      description = "Create a directory and cd into it";
    };

    # Go up N directories (e.g. up 4)
    up = {
      body = ''
        set limit $argv[1]
        if test -z "$limit"
            set limit 1
        end
        set path (pwd)
        for i in (seq $limit)
            set path (dirname $path)
        end
        cd $path
      '';
      description = "Go up N directories";
    };

    # cd with automatic ls after each cd
    cd = {
      body = ''
        builtin cd $argv
        if test $status -eq 0
            ls
        end
      '';
      description = "cd with automatic ls";
    };

    # Return the last two components of the working directory
    pwdtail = {
      body = ''
        pwd | awk -F/ '{nlast = NF - 1; print $nlast "/" $NF}'
      '';
      description = "Show the last two components of the current path";
    };

    # Download video via ffmpeg
    ffmpeg_dl = {
      body = ''
        if count $argv != 3
            echo "Usage: ffmpeg_dl <url> <name> <fs_path>"
            return 1
        end
        set url $argv[1]
        set name $argv[2]
        set fs_path $argv[3]

        mkdir -p $fs_path
        set output "$fs_path/$name.mp4"

        ffmpeg -i $url -c copy $output
      '';
      description = "Download a video using ffmpeg to a given location";
    };
  };
}

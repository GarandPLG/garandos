{
  username,
  host,
  ...
}: {
  programs.bash.shellAliases = {
    # GarandOS aliases
    pullos = "git -C /home/${username}/garandos pull";
    upd = "nh os switch -H ${host} -d always";
    upg = "nh os switch -H ${host} --update  -d always";
    upf = "sudo nix flake update --flake /home/${username}/garandos";
    upf-gh = "nix flake update --option access-tokens \"github.com=$(gh auth token)\" --flake /home/${username}/garandos";
    upf-undo = "git -C /home/${username}/garandos restore /home/${username}/garandos/flake.lock";
    upd-bt = "nh os boot -H ${host} -d always";
    upd-ts = "nh os test -H ${host} -d always";
    upd-bd = "nh os build -H ${host} -d always";
    tui = "garandos-tui";
    ncg = "nh clean all --optimise";

    # Development aliases
    ## Django
    srvenv = "source .venv/bin/activate";
    "..srvenv" = "source ../.venv/bin/activate";
    uv-add = "uv add -r requirements.txt";
    pm = "uv run manage.py";
    pm-rs = "uv run manage.py runserver";
    pm-mg = "uv run manage.py migrate";
    pm-mm = "uv run manage.py makemigrations";
    pm-sq = "uv run manage.py sqlmigrate";
    f8 = "uv run flake8 .";
    ## JavaScript/TypeScript
    bbr = "bun --bun run";
    ## Git
    "ga." = "git add .";
    mkgidf = "git add . --intent-to-add . && git diff > git-diff.txt";

    # Development aliases for nix flake
    nd = "nix develop";
    nb = "nix build .";
    nr = "nix run .";
    nbr = "nix build . && nix run .";
    nbd = "nix build .#develop";
    nrd = "nix run .#develop";
    nbrd = "nix build .#develop && nix run .#develop";

    # Development aliases for docker
    dcu = "docker compose up -d";
    dcd = "docker compose down";
    dcb = "docker compose build";
    dcub = "docker compose up -d --build";

    # System aliases
    # flush-codium = "sudo killall codium && sudo rm -rf ~/.config/VSCodium/Cache && sudo rm -rf ~/.config/VSCodium/CachedData";
    kys = "systemctl poweroff";
    jezus = "systemctl reboot";
    ookla = "speedtest";
    hypr-cli = "hyprctl clients";

    # Navigation aliases
    "~" = "cd ~";
    ".." = "cd ..";
    "..." = "cd ../..";
    "...." = "cd ../../..";
    "....." = "cd ../../../..";

    # Modifies commands
    cat = "bat";
    cp = "cp -i";
    mv = "mv -i";
    rm = "trash -v";
    mkdir = "mkdir -p";
    ps = "ps auxf";
    ping = "ping -c 10";
    less = "less -R";
    cls = "clear";
    multitail = "multitail --no-repeat -c";
    freshclam = "sudo freshclam";

    # Alias"s for multiple directory listing commands
    la = "eza -alh --icons"; # show hidden files
    ls = "eza -aF --icons --color=always"; # add colors and file type extensions
    lx = "eza -lh --icons --sort=extension"; # sort by extension
    lk = "eza -lh --icons --sort=size --reverse"; # sort by size
    lc = "eza -lh --icons --sort=changed"; # sort by change time
    lu = "eza -lh --icons --sort=accessed"; # sort by access time
    lr = "eza -lh --icons --recurse"; # recursive ls
    lt = "eza -lh --icons --sort=modified"; # sort by date
    lm = "eza -alh --icons | more"; # pipe through "more"
    lw = "eza -xh --icons"; # wide listing format
    ll = "eza -lh --icons"; # long listing format
    labc = "eza -lah --icons --sort=name"; # alphabetical sort
    lf = "eza -lh --icons | grep -v '^d'"; # files only (przybliżenie)
    ldir = "eza -lh --icons --only-dirs"; # directories only
    lla = "eza -alh --icons"; # List and Hidden Files
    las = "eza -a --icons"; # Hidden Files
    lls = "eza -lh --icons"; # List

    # chmod commands
    mx = "chmod a+x";
    "000" = "chmod -R 000";
    "644" = "chmod -R 644";
    "666" = "chmod -R 666";
    "755" = "chmod -R 755";
    "777" = "chmod -R 777";

    # Search command line history
    h = "history | grep ";

    # Search running processes
    p = "ps aux | grep ";
    topcpu = "/bin/ps -eo pcpu,pid,user,args | sort -k 1 -r | head -10";

    # Search files in the current folder
    f = "find . | grep ";

    # Count all files (recursively) in the current folder
    countfiles = "for t in files links directories; do echo \`find . -type \${t:0:1} | wc -l\` \$t; done 2> /dev/null";

    # Alias"s to show disk space and space used in a folder
    diskspace = "du -S | sort -n -r |more";
    folders = "du -h --max-depth=1";
    folderssort = "find . -maxdepth 1 -type d -print0 | xargs -0 du -sk | sort -rn";
    tree = "tree -CAhF --dirsfirst";
    treed = "tree -CAFd";
    mountedinfo = "df -hT";

    # Show all logs in /var/log
    logs = "sudo find /var/log -type f -exec file {} \; | grep 'text' | cut -d' ' -f1 | sed -e's/:$//g' | grep -v '[0-9]$' | xargs tail -f";

    # fix kitty ssh connection
    kssh = "kitty +kitten ssh";

    docker-clean = "docker container prune -f ; docker image prune -f ; docker network prune -f ; docker volume prune -f";

    # Remove a directory and all files
    rmd = "/bin/rm  --recursive --force --verbose ";

    # Fun aliases
    pasjans = "ttysolitaire -p 10 --no-background-color";
    fc = "fortune | cowsay";

    # Network aliases
    kssh-server = "kssh hp-t640-homeserver";
    kssh-server-hs = "kssh hp-t640-homeserver-headscale";
    ssh-server = "ssh hp-t640-homeserver";
    ssh-server-hs = "ssh hp-t640-homeserver-headscale";
  };
}

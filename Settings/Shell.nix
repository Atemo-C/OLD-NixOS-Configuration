{ config, libs, pkgs, ... }: {

	programs.fish = {
		enable = true;
		shellAbbrs = {
			c = "clear";
			x = "exit";
			n = "neofetch";
			m = "micro";
			h = "Hyprland";
			clean = "sudo nix-collect-garbage -d";
			l = "lsd --group-dirs first";
			list = "lsd --group-dirs first";
			ll = "lsd --group-dirs first -l";
			list-long = "lsd --group-dirs first -l";
			la = "lsd --group-dirs first -A";
			list-all = "lsd --group-dirs first -A";
			lt = "lsd --group-dirs first --tree";
			list-tree = "lsd --group-dirs first --tree";
			lr = "lsd --group-dirs first --recursive";
			list-recusrive = "lsd --group-dirs first --recursive";
			lal = "lsd --group-dirs first -Al";
			list-all-long = "lsd --group-dirs first -Al";
			lla = "lsd --group-dirs first -Al";
			list-long-all = "lsd --group-dirs first -Al";
			lat = "lsd --group-dirs first -A --tree";
			list-all-tree = "lsd --group-dirs first -A --tree";
			lta = "lsd --group-dirs first -A --tree";
			list-tree-all = "lsd --group-dirs first -A --tree";
			lar = "lsd --group-dirs first -A --recursive";
			list-all-recursive = "lsd --group-dirs-first -A --recursive";
			lra = "lsd --group-dirs first -A --recursive";
			list-recursive-all = "lsd --group-dirs first -A --recursive";
			llt = "lsd --group-dirs first -l --tree";
			list-long-tree = "lsd --group-dirs first -l --tree";
			ltl = "lsd --group-dirs first -l --tree";
			list-tree-long = "lsd --group-dirs first -l --tree";
			latl = "lsd --group-dirs first -Al --tree";
			list-all-tree-long = "lsd --group-dirs first -Al --tree";
			lalt = "lsd --group-dirs first -Al --tree";
			list-all-long-tree = "lsd --group-dirs first -Al --tree";
			ltal = "lsd --group-dirs first -Al --tree";
			list-tree-all-long = "lsd --group-dirs first -Al --tree";
			ltla = "lsd --group-dirs first -Al --tree";
			list-tree-long-all = "lsd --group-dirs first -Al --tree";
			llat = "lsd --group-dirs first -Al --tree";
			list-long-all-tree = "lsd --group-dirs first -Al --tree";
			llta = "lsd --group-dirs first -Al --tree";
			list-long-tree-all = "lsd --group-dirs first -Al --tree";
			larl = "lsd --group-dirs first -Al --recursive";
			list-all-recursive-long = "lsd --group-dirs first -Al --recursive";
			lalr = "lsd --group-dirs first -Al --recursive";
			list-all-long-recursive = "lsd --group-dirs first -Al --recursive";
			lral = "lsd --group-dirs first -Al --recursive";
			list-recursive-all-long = "lsd --group-dirs first -Al --recursive";
			lrla = "lsd --group-dirs first -Al --recursive";
			list-recursive-long-all = "lsd --group-dirs first -Al --recursive";
			llar = "lsd --group-dirs first -Al --recursive";
			list-long-all-recursive = "lsd --group-dirs first -Al --recursive";
			llra = "lsd --group-dirs first -Al --recursive";
			list-long-recursive-all = "lsd --group-dirs first -Al --recursive";
			lofi-study = "mpv --no-video 'https://www.youtube.com/watch?v=jfKfPfyJRdk'";
			lofi-piano = "mpv --no-video 'https://www.youtube.com/watch?v=nWjC1RnLYbM'";
			lofi-sleep = "mpv --no-video 'https://www.youtube.com/watch?v=rUxyKA_-grg'";
			lofi-synthwave = "mpv --no-video 'https://www.youtube.com/watch?v=4xDzrJKXOOY'";
			lofi-escape = "mpv --no-video 'https://www.youtube.com/watch?v=S_MOd40zlYU'";
			tunic = "mpv --no-video 'https://www.youtube.com/watch?v=gzWd5hjcaPo'";
			nightinthewoods = "mpv --no-video 'https://www.youtube.com/watch?v=AsLKfqA73uE'";
		};
	};

}

{ config, lib, pkgs, ... }: {

	services.openssh = {
		enable = true;
		settings = { PermitRootLogin = "no"; };
		startWhenNeeded = true;
		ports = [ whichever, port, you, want ];
	};

	networking.firewall.allowedTCPPorts = [ whichever, port, you, chose ];

	programs.gnupg.agent = {
		enable = true;
		enableSSHSupport = true;
	};

}

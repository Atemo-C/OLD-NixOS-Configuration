{ config, lib, pkgs, ... }: {

	# Power management
	services.tlp = {
		enable = true;
		settings = {
			CPU_SCALING_GOVERNOR_ON_AC = "performance";
			CPU_SCALING_GOVERNOR_ON_BAT = "powersave";
			CPU_ENERGY_PREF_POLICY_ON_AC = "performance";
			CPU_ENERGY_PREF_POLICY_ON_BAT = "power";
			CPU_MIN_PERF_ON_AC = 0;
			CPU_MIN_PERF_ON_BAT = 0;
			CPU_MAX_PERF_ON_AC = 100;
			CPU_MAX_PERF_ON_BAT = 50;
			START_CHARGE_THRESH_BAT0 = 25;
			STOP_CHARGE_THRESH_BAT0 = 85;
		};
	};

}

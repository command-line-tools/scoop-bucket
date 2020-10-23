
check:
	pwsh ~/scoop/apps/scoop/current/bin/checkver.ps1 "*" -dir .

update:
	pwsh ~/scoop/apps/scoop/current/bin/checkver.ps1 "*" -dir . -u

autopr:
	pwsh ~/scoop/apps/scoop/current/bin/auto-pr.ps1 -dir . -push -upstream cli/scoop-cli-tools
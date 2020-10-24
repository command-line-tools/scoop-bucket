
check:
	pwsh ./bin/checkver.ps1 "*"

update:
	pwsh ./bin/checkver.ps1 "*" -u

autopr:
	pwsh ./bin/auto-pr.ps1

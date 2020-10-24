
scoop:
	git clone -q --depth=1 "https://github.com/lukesampson/scoop"

check: scoop
	pwsh ./scoop/bin/checkver.ps1 "*" -dir ./bucket

update: scoop
	pwsh ./scoop/bin/checkver.ps1 "*" -dir ./bucket -u

autopr: scoop
	pwsh ./scoop/bin/auto-pr.ps1 -dir ./bucket -push -upstream "command-line-tools/scoop:master"


scoop:
	git clone -q --depth=1 "https://github.com/lukesampson/scoop"

check:
	pwsh ./scoop/bin/checkver.ps1 "*" -dir ./bucket

update:
	pwsh ./scoop/bin/checkver.ps1 "*" -dir ./bucket -u

autopr:
	pwsh ./scoop/bin/auto-pr.ps1 -dir ./bucket -push -upstream "command-line-tools/scoop:master"

docker:
	docker build -t scoop-updater . && docker run -it --rm scoop-updater

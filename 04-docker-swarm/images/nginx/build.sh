#!/bin/bash

set -eou pipefail

DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

{ 
	cd "$DIR"
	if [ -d "tmp" ];then
		rm -Rf "tmp"
	fi
	mkdir -p "tmp"
	cp -Rv "../../www/" "tmp/www/"

	docker image build -t registry.local:5000/nginx:latest .
	docker image push registry.local:5000/nginx:latest
}

all: build run

build:
	bash ./helper_scripts/build.sh 2>&1 | tee log

run:
	docker run -it --init --rm -p 8888:8888 -v $(CURDIR)/virtual_home:/home/jovyan earthscope-insar-2024-image:latest

#!/bin/bash
        cd debian/tmp/usr/lib/python3/dist-packages/
	for lib in *.so ; do \
		new_path="${lib/x86_64/arm}"; \
		
		echo "mv $lib $new_path"; \
	done

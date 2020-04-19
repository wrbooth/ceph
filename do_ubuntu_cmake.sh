#!/bin/bash
export PYTHON_INCLUDE_DIR="$(python3 -c "from sysconfig import get_path; print(get_path('include'))")"

./do_cmake.sh -DBOOST_J=12 \
              -DCMAKE_BUILD_TYPE=RelWithDebInfo \
	      -DMGR_PYTHON_VERSION=3 \
	      -DPYTHON_INCLUDE_DIR="${PYTHON_INCLUDE_DIR:?}" \
	      -DWITH_PYTHON3=ON \
    	      -DWITH_PYTHON2=OFF \
              -DWITH_CEPHFS_SHELL=ON \
    	      -DWITH_LTTNG=OFF \
    	      -DWITH_RDMA=OFF \
              -DPYTHON_EXECUTABLE=/usr/bin/python3 \
    	      -DWITH_OPENLDAP=OFF \
	      -DCMAKE_C_FLAGS_RELEASE="-Os" \
	      -DCMAKE_CXX_FLAGS_RELEASE="-Os" \
	      -DCMAKE_C_COMPILER=/usr/bin/gcc-8 \
	      -DCMAKE_CXX_COMPILER=/usr/bin/g++-8 \
    	      -DWITH_TESTS=OFF

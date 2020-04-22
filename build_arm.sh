#!/bin/bash

DEB_BUILD_OPTIONS='parallel=12' fakeroot dpkg-architecture -aarmhf -c debian/rules binary

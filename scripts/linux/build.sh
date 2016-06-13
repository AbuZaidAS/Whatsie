#!/bin/bash -v

gulp changelog:linux --verbose

gulp rebuild:32 --verbose
gulp pack:linux32:deb --prod --verbose
gulp pack:linux32:rpm --prod --verbose

gulp rebuild:64 --verbose
gulp pack:linux64:deb --prod --verbose
gulp pack:linux64:rpm --prod --verbose

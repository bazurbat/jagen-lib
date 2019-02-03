#!/bin/sh

program_suffix=243

jagen_stage_patch() {
    pkg_patch

    export LIBTOOLIZE=echo

    pkg_run autoreconf -ifv libltdl
    pkg_run autoreconf -ifv
}

jagen_stage_configure() {
    export CONFIG_SHELL=/bin/bash

    # the suffix does not work on libtoolize
    pkg_configure --program-suffix="$program_suffix"
}

jagen_stage_install() {
    pkg_install
    pkg_run mv "$pkg_install_dir/bin/libtoolize" \
        "$pkg_install_dir/bin/libtoolize${program_suffix}"
}

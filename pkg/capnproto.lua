return {
     source = {
        type = 'dist',
        location = 'https://capnproto.org/capnproto-c++-0.7.0.tar.gz',
        sha256sum = 'c9a4c0bd88123064d483ab46ecee777f14d933359e23bff6fb4f4dbd28b4cd41'
    },
    build = {
        type = 'cmake',
        options = {
            -- Disable unit tests. Also allows independent build for target
            -- because tests require running 'capnp_tool' executable on the
            -- host.
            '-DBUILD_TESTING=NO'
        }
    },
    install = {
        -- It uses absolute install prefix instead.
        root = ''
    },
    configs = {
        target = {
            build = {
                options = {
                    '-DBUILD_TESTING=NO',
                    '-DCMAKE_INSTALL_PREFIX=$jagen_target_dir',
                    -- needed for android toolchain
                    -- '-DCMAKE_BUILD_WITH_INSTALL_RPATH=YES',
                }
            }
        }
    }
}

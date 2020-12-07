return {
    source = {
        type     = 'git',
        location = 'https://github.com/grpc/grpc',
        branch   = 'v1.33.x',
    },
    build = {
        type = 'cmake',
        options = {
            '-DgRPC_INSTALL=ON',
            '-DgRPC_BUILD_TESTS=OFF',
            '-DgRPC_ABSL_PROVIDER=package',
            '-DgRPC_CARES_PROVIDER=package',
            '-DgRPC_PROTOBUF_PROVIDER=package',
            '-DgRPC_RE2_PROVIDER=package',
            '-DgRPC_SSL_PROVIDER=package',
            '-DgRPC_ZLIB_PROVIDER=package'
        }
    }
}

return {
    source = 'valgrind-3.10.1.tar.bz2',
    patches = {
        { 'valgrind-3.10.1-linux-4.patch',            1 },
        { 'valgrind-3.10.1-non-exec-stack.patch',     1 },
        { 'valgrind-3.6.0-local-labels.patch',        0 },
        { 'valgrind-3.7.0-fno-stack-protector.patch', 1 },
        { 'valgrind-3.7.0-respect-flags.patch',       1 },
        { 'valgrind-3.9.0-glibc-2.19.patch',          1 },
    },
    build = {
        type    = 'gnu',
        options = {
            '--enable-only32bit',
            '--disable-tls',
            '--with-pagesize=16',
            '--without-mpicc'
        },
        autoreconf = true,
    }
}

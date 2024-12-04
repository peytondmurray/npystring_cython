project(
  'versioned-hdf5',
  'c',
  'cpp',
  'cython',
  version: '0.0.1'
)

py = import('python').find_installation(pure: false)
cy = meson.get_compiler('cython')

npy_include_path = run_command(
    py,
    ['-c', 'import numpy; print(numpy.get_include())'],
    check: true
).stdout().strip()

py.install_sources(
    [
        'npystring_cython/__init__.py',
    ],
    subdir: 'npystring_cython',
)
py.extension_module(
    'checks',
    'npystring_cython/checks.pyx',
    install: true,
    subdir: 'npystring_cython',
    include_directories: [npy_include_path],
)

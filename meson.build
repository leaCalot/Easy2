## Project definition
# https://mesonbuild.com/Reference-manual.html#project
project('Easy2', ['c', 'cpp'],
    version : '0.0.0',
    license : 'GPL',
    meson_version : '>= 0.60',
    default_options : ['cpp_std=c++17',
                       'warning_level=3',
                       'buildtype=release',
                       ],
    )

flex = find_program('flex', required: false)
if not flex.found()
  error('MESON_SKIP_TEST flex not found.')
endif
lgen = generator(flex, output : '@PLAINNAME@.yy.c', arguments : ['-o', '@OUTPUT@', '@INPUT@'])

## Add all library dependencies here before subdirectories and executables

# Lump together all monolithic dependencies from above
app_deps = [
]

app_inc = include_directories(
	'.',
	'src'
	)

subdir('src')
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

if meson.is_cross_build()
  script_path = join_paths(meson.current_source_dir(), 'easy2.nsi')
  installer_target = custom_target(
    'easy_installer',
    input: [easy2, 'easy2.nsi'],
    output: ['easy2_installer.exe'],
    command: ['makensis', script_path],
    build_by_default: true,
  )
endif
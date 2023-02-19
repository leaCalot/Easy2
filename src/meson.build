lfiles = lgen.process('easy2.l')

source_files = files([
  'easy_code.cpp',
  'easy_debug.cpp',
  'easy_node.cpp',
  'easy_sound.cpp',
  'easy_wav.cpp',
]) + lfiles

easy2 = executable(
    'easy2',
    source_files,
    include_directories : app_inc,
    install: true,
    dependencies: app_deps
)

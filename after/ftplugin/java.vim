let project_path = getcwd(0)
let default_make_path = stdpath('config')
let default_java_make = "java.makefile"
let &makeprg= 'make -C ' . default_make_path . ' -f ' . default_java_make . ' path=' . project_path . '/' . ' target=' . expand("%:p")

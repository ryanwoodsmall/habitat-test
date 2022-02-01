pkg_origin="ryanwoodsmall_private"
pkg_name="test"
pkg_version="0.0.1"
pkg_release="20220201170126"
pkg_maintainer="ryanwoodsmall <rwoodsmall@gmail.com>"

for f in do_{download,verify,unpack,prepare,build} ; do
  eval "
  function ${f}(){
    true
  }
  "
done
unset f

function do_install(){
  mkdir -p "${pkg_prefix}"
  install -m 0644 payload "${pkg_prefix}/payload"
}

# vim: ft=sh:

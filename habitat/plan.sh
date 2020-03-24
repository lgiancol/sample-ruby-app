pkg_name=sample-ruby-app
pkg_origin=lgiancol
pkg_version="0.1.0"
pkg_scaffolding="core/scaffolding-ruby"
pkg_build_deps=("core/openssl")

do_prepare() {
  do_default_prepare
  export SECRET_KEY_BASE=$(openssl rand -hex 64)
}

do_after() {
  do_default_after
  unset SECRET_KEY_BASE
}

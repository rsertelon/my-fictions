pkg_name=my-fictions
pkg_origin=rsertelon
pkg_version="0.1.0"
pkg_upstream_url="https://github.com/rsertelon/my-fictions"
pkg_description="Romain Sertelon's fiction writings"
pkg_maintainer="Romain Sertelon <romain@sertelon.fr>"
pkg_license=('CC-BY-SA-4.0')
pkg_deps=(
  rsertelon/thttpd
)
pkg_build_deps=(
  rsertelon/mkdocs
)

do_build() {
  mkdocs build
}

do_install() {
  mkdir -p $pkg_prefix/webroot
  cp -R site/* $pkg_prefix/webroot
}

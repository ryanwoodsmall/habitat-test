$pkg_name="test"
$pkg_origin="ryanwoodsmall_private"
$pkg_version="0.0.1"
$pkg_release="20220201170126"
$pkg_maintainer="ryanwoodsmall <rwoodsmall@gmail.com>"

function Invoke-Unpack {
}

function Invoke-Build {
}

function Invoke-Download {
}

function Invoke-DownloadDefault {
}

function Invoke-Install {
  write-buildline "creating '$pkg_prefix' directory"
  New-Item -ItemType Directory -Force -Path "$pkg_prefix"
  write-buildline "using 'Copy-Item' to install payload"
  Copy-Item -Path "payload" -Destination "$pkg_prefix/payload" -Recurse -Force
  write-buildline "here's the resulting $pkg_prefix listing..."
  dir $pkg_prefix
}

# vim: ft=ps1:

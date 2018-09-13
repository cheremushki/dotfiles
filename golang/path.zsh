export GOPATH="${HOME}/.go"
export GOROOT="$(brew --prefix golang)/libexec"
path=("${GOPATH}/bin:${GOROOT}/bin" $path)

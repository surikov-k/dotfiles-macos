echo -n 'Hello from .zchenv 👋 >> '

function exists() {
  command -v $1 >/dev/null 2>&1
}

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
if [ -f "$DIR/setup.sh" ]; then
    source "$DIR/setup.sh"
fi

cmake -DCMAKE_TOOLCHAIN_FILE=config-m4/toolchain-gcc.cmake "$@"

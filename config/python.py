import config.project

package_name = config.project.project_name

console_scripts = []

setup_requires = []

run_requires = [
]

test_requires = [
]

dev_requires = [
]

install_requires = list(setup_requires)
install_requires.extend(run_requires)

python_requires = ">=3.7"

extras_require = {
}
test_os = "[ubuntu-18.04, ubuntu-20.04]"
test_python = "[3.7, 3.8, 3.9]"
test_container = "[ 'ubuntu:18.04', 'ubuntu:20.04' ]"
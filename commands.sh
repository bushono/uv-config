# Create a Python script
## Python recently added a standard format for inline script metadata. It allows for selecting Python versions and defining dependencies. 
## Use uv init --script to initialize scripts with the inline metadata:
uv init --script example.py --python 3.12

# Declaring script dependencies
# The inline metadata format allows the dependencies for a script to be declared in the script itself.
# uv supports adding and updating inline script metadata for you. Use uv add --script to declare the dependencies for the script

uv add --script example.py 'requests<3' 'rich'
uv run example.py

# Start using uv
uv init hello-world
cd hello-world
uv run hello.py

# Add package
uv add asyncio

# Specify a version constraint
uv add 'requests==2.31.0'

# Remove package
uv remove requests

# Add a git dependency
uv add git+https://github.com/psf/requests

# To upgrade a package, run uv lock with the --upgrade-package flag
uv lock --upgrade-package requests

# Add Flash module
uv add flask
uv run -- flask run -p 3000

# Alternatively, you can use uv sync to manually update the environment then activate it before executing a command
uv sync
source .venv/bin/activate
flask run -p 3000
python example.py

# Run ruff with uvx
uv run pyright
uvx ruff check   # Lint all files in the current directory.
uvx ruff format  # Format all files in the current directory.

# Building distributions
# uv build can be used to build source distributions and binary distributions (wheel) for your project.
# By default, uv build will build the project in the current directory, and place the built artifacts in a dist/ subdirectory
uv build

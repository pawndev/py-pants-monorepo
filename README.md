# Python monorepo using pants (with lambda support)

## Set up your workstation

If you're like me with a cool archlinux, and always the latest version of each package. You'll be disappointed that you'll
need python <= 3.9.

But fear not ! [pyenv](https://github.com/pyenv/pyenv) is here to help. And we will be using the [pyenv automatic installer](https://github.com/pyenv/pyenv-installer)
here.

### Setup pyenv

```bash
curl https://pyenv.run | bash
```

Then add this to you `.bashrc` | `.zshrc`

```bash
export PATH="$PYENV_ROOT/bin:$PATH"
export PYENV_ROOT="$HOME/.pyenv"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
```

Then, you can install your prefered version (here 3.9)

```bash
pyenv install 3.9.15
```

### Setup virtualenv

With pyenv you can setup easily you venv

```bash
# creation
pyenv virtualenv --python=python3.9 <name-of-your-venv>
# activation
pyenv activate <name-of-your-venv>
```

And you're good to go !

## Setup plants

For monorepo we're using [pants](https://www.pantsbuild.org).
Here, it's all setup, but for the logs I'll put all the commands I used to generate it.

```bash
mkdir <my-project> && cd $_
printf '[GLOBAL]\npants_version = "2.13.0"\n' > pants.toml
curl -L -O https://static.pantsbuild.org/setup/pants && chmod +x ./pants
# at this step, create all you workdirs and test pants with
./pants tailor
```

I'll let the official documentation guide you for the rest. But there is a `Makefile` in this project, who certainly
can help you with some basics commands.

## Reference

Pants getting started: https://www.pantsbuild.org/docs/initial-configuration
AWS lambda with pants: https://www.pantsbuild.org/docs/awslambda-python
Pants backends: https://www.pantsbuild.org/docs/enabling-backends
Pants project introspection: https://www.pantsbuild.org/v2.6/docs/project-introspection
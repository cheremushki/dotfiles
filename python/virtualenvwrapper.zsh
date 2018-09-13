export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Documents/Projects/Code/python
if [[ "$(uname -s)" == "Darwin" ]]
then
    export VIRTUALENVWRAPPER_SCRIPT=/usr/local/bin/virtualenvwrapper.sh
    export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3
    source /usr/local/bin/virtualenvwrapper_lazy.sh
fi

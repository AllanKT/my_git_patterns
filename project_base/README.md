
requirements

- poetry
- pipx
- ignr

# inicialização do projeto

```poetry new <project name>```

### criar gitignore com padrões default de linguagem

```ignr -p python terraform xxx```

### adicionando grupo de dependencias para desenvolvimento

````python
poetry add --group dev pytest pytest-cov blue isort taskipy
poetry add --group doc mkdocs-material mkdocstrings mkdocstrings-python
````

# Configurando ambiente

### Documentação com mkdocs

````python
poetry shell
mkdocs new .
````
- então segue editando mkdocs.yml e documentos em docs/

### Pytest

- configurar [tool.pytest.ini_options] no pyproject.toml

### Linter

- configurar [tool.isort] no pyproject.toml para conflitos com blue/black
- configuração do [tool.taskipy.tasks]

# OBS

isort -> vertical hanging indent
pep8.org


requirements

- poetry
- pipx
- ignr

### inicialização do projeto

```poetry new <project name>```

### criar gitignore com padrões default de linguagem

```ignr -p python terraform xxx```

### adicionando grupo de dependencias para desenvolvimento

``` poetry add --group dev pytest pytest-cov blue isort taskipy```
``` poetry add --group doc mkdocs-material mkdocstrings mkdocstrings-python```

# OBS

isort -> vertical hanging indent
pep8.org

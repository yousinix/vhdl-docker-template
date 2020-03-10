# VHDL Docker Template

A docker template for VHDL project using [GHDL][ghdl], [GTKWave][gtkwave] & [VUint][vuint].

[ghdl]: http://ghdl.free.fr/
[gtkwave]: http://gtkwave.sourceforge.net/
[vuint]: https://vunit.github.io/

![screenshot-1](https://user-images.githubusercontent.com/41103290/76358178-ba5dc700-6321-11ea-8d4e-3c0b6a4603cd.png)
![screenshot-2](https://user-images.githubusercontent.com/41103290/76358173-b631a980-6321-11ea-8453-58b827cbb7e5.png)

## Windows Environment

1. Install [Docker Desktop for Windows](https://www.docker.com/products/docker-desktop).
1. Install [VcXsrv Windows X Server](https://sourceforge.net/projects/vcxsrv/).
1. Run both **Docker Desktop** and **VcXsrv** _(with default config)_ before running any command.

## Linux Environment

> _This environment wasn't tested but theoretically it should work._

1. Install [Docker](https://docs.docker.com/install/).
1. Update [`docker-compose.yml`](./docker-compose.yml) following the `[LINUX]` comments.

## Start

### Run Container

```bash
docker-compose run --rm main python run.py
```

> VS Code Task: `run-container` (<kbd>Ctrl</kbd> + <kbd>Shift</kbd> + <kbd>B</kbd>)

### Run Container (Graphical Mode)

```bash
docker-compose run --rm main python run.py -g
```

> VS Code Task: `run-container-graphical`

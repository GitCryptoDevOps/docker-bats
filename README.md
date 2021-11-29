# docker-bats

## Build

```
docker build -t devopstestlab/bats .
```

## Usage

Example :

```
docker run --rm -v $(pwd)/tests:/tests -v /var/run/docker.sock:/var/run/docker.sock devopstestlab/bats
```

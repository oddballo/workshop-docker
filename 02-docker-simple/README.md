# Worksheet - Docker

This worksheet will demonstrate how to build docker images and demonstrate Dockers behaviour 
in running the workloads.

# Building

## Counter - Faulty

```
cd counter-faulty
docker build -t counter-faulty .
```

## Counter - Infinite
```
cd counter-infinite
docker build -t counter-infinite .
```

## Counter - Short
```
cd counter-short
docker build -t counter-short .
```

# Tasks to excercise

- Run each container using the notes from "docker run"; what's the differences?
- Run docker container ls -a. What do you notice about the output?

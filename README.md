32-bit testing Docker container for MDA issue 2342
---------------------------------------------------

build docker container with: 

`docker build --network=host -t debug_mda_2342 .`

run interactive docker image with: 
`docker run -it debug_mda_2342`

then:

```
cd mdanalysis
pytest --disable-pytest-warnings --durations=50 testsuite/MDAnalysisTests
```


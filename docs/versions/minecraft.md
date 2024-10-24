To use a different Minecraft version, pass the `VERSION` environment variable (case sensitive), which can have the value

- LATEST (the default)
- SNAPSHOT
- a specific version, such as "1.7.9"
- or an alpha and beta version, such as "b1.7.3" (server download might not exist)

For example, to use the latest snapshot:

```
docker run -d -e VERSION=SNAPSHOT ...
```

or a specific version:

```
docker run -d -e VERSION=1.7.9 ...
```

When using "LATEST" or "SNAPSHOT" an upgrade can be performed by simply restarting the container.
During the next startup, if a newer version is available from the respective release channel, then
the new server jar file is downloaded and used. 

!!! note

    Over time you might see older versions of the server jar remain in the `/home/container` directory. It is safe to remove those.

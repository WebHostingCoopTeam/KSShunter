# KSShunter
KSShunter

`make p`

you will be prompted for a lower number, upper number and a PRE_KSS and
POST_KSS

there will be a resulting file `diggit.csv` whose contents will be
similar to:

```
HOSTNAME,PINGS,IP,PTR
```

the PINGS column is the output of `ping -c 1 $IP &>/dev/null; echo $?`
0 = successful
1 = bad
2 = worse
68 = something else

###### GNU Parallel

This repo uses [GNU parallel](https://www.gnu.org/software/parallel/)
you should too!

```
  O. Tange (2011): GNU Parallel - The Command-Line Power Tool,
    ;login: The USENIX Magazine, February 2011:42-47.
```

### Testing

to test whether the parallel is the same as the iterative

```
make test
```

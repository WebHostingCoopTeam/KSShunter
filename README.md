# KSShunter
KSShunter

`make h`

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

### Parallel
  this one is WIP and not really complete for the moment,  but it is
there, and much faster.

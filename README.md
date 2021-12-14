# uBlock Origin - Shitty Copy-Paste websites filter

Filter for uBlock origin to remove spam-website results from DuckDuckGo and Google that just blatantly copy and paste content from well known websites.

This list is just a personal collection of annoying, unhelpful websites.

## Generate the combined list

```bash
rm combined-list.txt
cat *.txt >> combined-list.txt
```

## Import into uBlock Origin

1. Open uBlock Origin settings
2. Open the tab Filter lists and scroll all the way down
3. In the `custom` section press `Import` and add the URL `https://raw.githubusercontent.com/stroobants-dev/ublock-origin-shitty-copies-filter/main/combined-list.txt`
4. Press `Apply Changes` in the top left and optionally `Update now`

## Adding URL's 

You can always do a pull-request or just start an issue. If you want different things then I do... fork it!

## Sources

* [Quenhus Stackoverflow/Github copy-cats](https://gist.github.com/quenhus/6bd2c47e5780f726f0c96c0a2ee762a4)
* [uBlacklist - Pinterest](https://raw.githubusercontent.com/rjaus/ublacklist-pinterest/)
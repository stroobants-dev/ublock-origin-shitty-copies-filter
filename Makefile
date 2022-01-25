all: combined_list

combined_list: github stackoverflow
	rm -f combined-list.txt
	cat *.txt >> combined-list.txt

github:
	rm -f github-copycats-duckduckgo.txt;
	rm -f github-copycats-google.txt;
	while read -r l; do echo "google.*##.g:has(a[href*=\"$$(echo $$l | tr -d \\n\\r | tr -d '*:/')\"])" >> github-copycats-google.txt; echo "duckduckgo.*##.results > div:has(a[href*=\"$$(echo $$l | tr -d \\n\\r | tr -d '*:/')\"])" >> github-copycats-duckduckgo.txt; done < github-copycats.txt

stackoverflow:
	rm -f stackoverflow-copycats-duckduckgo.txt
	rm -f stackoverflow-copycats-google.txt
	while read -r l; do echo "google.*##.g:has(a[href*=\"$$(echo $$l | tr -d \\n\\r | tr -d '*:/')\"])" >> stackoverflow-copycats-google.txt; echo "duckduckgo.*##.results > div:has(a[href*=\"$$(echo $$l | tr -d \\n\\r | tr -d '*:/')\"])" >> stackoverflow-copycats-duckduckgo.txt; done < stackoverflow-copycats.txt

PRE_KSS:
	@while [ -z "$$PRE_KSS" ]; do \
		read -r -p "Enter the PRE_KSS Address you wish to assign to this container (de_lake) [PRE_KSS]: " PRE_KSS; echo "$$PRE_KSS">>PRE_KSS; cat PRE_KSS; \
	done ;

POST_KSS:
	@while [ -z "$$POST_KSS" ]; do \
		read -r -p "Enter the POST_KSS Address you wish to assign to this container (de_lake) [POST_KSS]: " POST_KSS; echo "$$POST_KSS">>POST_KSS; cat POST_KSS; \
	done ;

UPPER_NUM:
	@while [ -z "$$UPPER_NUM" ]; do \
		read -r -p "Enter the UPPER_NUM Address you wish to assign to this container (de_lake) [UPPER_NUM]: " UPPER_NUM; echo "$$UPPER_NUM">>UPPER_NUM; cat UPPER_NUM; \
	done ;

LOWER_NUM:
	@while [ -z "$$LOWER_NUM" ]; do \
		read -r -p "Enter the LOWER_NUM Address you wish to assign to this container (de_lake) [LOWER_NUM]: " LOWER_NUM; echo "$$LOWER_NUM">>LOWER_NUM; cat LOWER_NUM; \
	done ;

reqs: LOWER_NUM UPPER_NUM PRE_KSS POST_KSS

h: reqs diggit.csv

p: reqs para-diggit.csv

both: diggit.csv para-diggit.csv

diggit.csv:
	./hunt

para-diggit.csv:
	./parahunt

test: rm both sorted.diggit.csv diff

sorted.diggit.csv: para-diggit.csv
	sort -n para-diggit.csv > sorted.diggit.csv

diff: sorted.diggit.csv diggit.csv
	diff sorted.diggit.csv diggit.csv

rm:
	rm diggit.csv
	rm para-diggit.csv
	rm sorted.diggit.csv

show:
	echo showtime

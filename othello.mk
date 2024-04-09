EXERCISES += othello
CLEAN_FILES += othello

othello: othello_EOF.c
	$(CC) -o $@ $<

.PHONY: submit give

submit give: othello.s
	give dp1092 ass1_othello othello.s

.PHONY: test autotest

test autotest: othello.s
	1092 autotest othello othello.s

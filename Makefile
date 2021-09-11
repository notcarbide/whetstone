# CFLAGS +=

whetstone: whetstone.c
	$(CC) $(CFLAGS) whetstone.c -o whetstone -lm

runwhetstone: whetstone
	@echo 'Running whetstone (Level 1 optimization)'
	./whetstone
	./whetstone
	./whetstone
	@echo

whetstoneO: whetstone.c
	$(CC) $(CFLAGS) -O whetstone.c -o whetstoneO -lm

runwhetstoneO: whetstoneO
	@echo 'Running whetstone (Level 2 optimization)'
	./whetstoneO
	./whetstoneO
	./whetstoneO
	@echo

clean:
	(set nonomatch;rm -f whetstone whetstoneO *.o)

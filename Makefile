APP = oseclisp

all: $(APP).ose

%.ose : %.ask
	gcc -E -o a_0ask.txt -x c $<
	osectols tool:aska in:a_0ask.txt out:a_1oas_$*.txt
	gcc $(CFLAGS) -E -P -o a_2cas.txt -x c a_1oas_$*.txt
	osectols tool:lbstk in:a_2cas.txt out:a_3cas.txt lst:a_3lbl.txt
	osectols tool:db2bin in:a_3cas.txt out:a_4ose.ose
	osectols tool:appack in:a_4ose.ose out:$@

release:
	make CFLAGS=-DNODBGINFO0
	osectols tool:appack flags:8 in:$(APP).ose out:$(APP).tk5
	mv $(APP).tk5 $(APP).ose

clean:
	-rm a_0ask.txt a_1oas_$(APP).txt a_2cas.txt a_3cas.txt a_3lbl.txt a_4ose.ose

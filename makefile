HDRS	      = defs.h

CFLAGS	      = -O -DNDEBUG

LDFLAGS	      = -s

LIBS	      = -los2

LINKER	      = $(CC)

OBJS	      = closure.o \
		error.o \
		lalr.o \
		lr0.o \
		main.o \
		mkpar.o \
		output.o \
		reader.o \
		skeleton.o \
		symtab.o \
		verbose.o \
		warshall.o \
		isvalid.o

PROGRAM	      = yacc.exe

SRCS	      = closure.c \
		error.c \
		lalr.c \
		lr0.c \
		main.c \
		mkpar.c \
		output.c \
		reader.c \
		skeleton.c \
		symtab.c \
		verbose.c \
		warshall.c \
		isvalid.c

all:		$(PROGRAM)

$(PROGRAM):     $(OBJS)
		$(LINKER) $(LDFLAGS) -o $(PROGRAM) $(OBJS) $(LIBS)

clean:;		rm -f $(OBJS)

clobber:;	rm -f $(OBJS) $(PROGRAM)

index:;		etags -wx $(HDRS) $(SRCS)

program:        $(PROGRAM)

tags:           $(HDRS) $(SRCS); etags -e $(HDRS) $(SRCS)

closure.o:	$(HDRS)
error.o:	$(HDRS)
lalr.o:		$(HDRS)
lr0.o:		$(HDRS)
main.o:		$(HDRS)
mkpar.o: 	$(HDRS)
output.o: 	$(HDRS)
reader.o: 	$(HDRS)
skeleton.o: 	$(HDRS)
symtab.o: 	$(HDRS)
verbose.o: 	$(HDRS)
warshall.o: 	$(HDRS)

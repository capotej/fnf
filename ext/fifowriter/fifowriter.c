#include "ruby.h"
#include <stdio.h>
#include <stdlib.h>
#include <fcntl.h>
VALUE FifoWriter = Qnil;

void Init_fifowriter();

static void method_write_to_fifo(VALUE self, VALUE string);

void Init_fifowriter() {
	FifoWriter = rb_define_module("FifoWriter");
	rb_define_singleton_method(FifoWriter, "write_to_fifo", method_write_to_fifo, 1);
}

static void method_write_to_fifo(VALUE self, VALUE string) {
  int fd;
  fd = open("/tmp/fnfq", O_WRONLY | O_NONBLOCK);
  write(fd, RSTRING_PTR(string), strlen(RSTRING_PTR(string)));
  close(fd);
}

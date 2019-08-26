sudo sysctl -w kernel.randomize_va_space=0
gcc -z execstack -fno-stack-protector -g -o demo_dbg demo.c
sudo chown root demo_dbg
sudo chmod 4755 demo_dbg
gdb --nx demo_dbg

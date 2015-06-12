# For the moment I just use this simple Makefile.
# If you don't want to use libasan, just remove -lasan and -fsanitize=address


all:
        llvm-g++ -o test_turtle \                                               
            tests/turtle.c noc_turtle.c \                                       
            -Wall \                                                             
            -O0  -g \                                                           
            -I ./  -framework GLUT -framework OpenGL -framework Cocoa -framework IOKit -framework CoreVideo -I /usr/local/Cellar/glfw3/3.1.1/include  -lglfw3 \
-lGLEW  -framework IOKit

#include <stdio.h>

/* http://www.linuxjournal.com/article/8603 */
#define RESET     0
#define BRIGHT    1
#define DIM       2
#define UNDERLINE 3
#define BLINK     4
#define REVERSE   7
#define HIDDEN    8

#define BLACK     0
#define RED       1
#define GREEN     2
#define YELLOW    3
#define BLUE      4
#define MAGENTA   5
#define CYAN      6
#define WHITE     7

void textcolor(int attr, int fg, int bg){
  char command[13];

  /* Command is the control command to the terminal */
  sprintf(command, "%c[%d;%d;%dm", 0x1B, attr, fg + 30, bg + 40);
  printf("%s", command);
}

#define SLIDE_COUNT 12
char *slides[SLIDE_COUNT] = {
  "Ramsey Nasser: Computer Scientist",
  "American University of Beirut",
  "Dream come true",
  "Learned C, C++, Java, Python",
  "This was the real thing!",
  "Still felt wrong",
  "Couldn't put it in words",
  "The tools weren't made to be used in the way I wanted to use them",
  "'Dude, just use C++, its good enough'",
  "They were right",
  "Wanted a different relationship with code",
  "I didn't get an MS in Computer Science",
};

int main(int argc, char** argv) {
  if(argc != 2) {
    printf("USAGE\ninschool N\n\nN\tThe slide number to display\n");
    return 1;

  } else if(atoi(argv[1]) >= SLIDE_COUNT || atoi(argv[1]) < 0) {
    textcolor(BRIGHT, WHITE, RED);
    printf("Slide out of range!\n");
    textcolor(RESET, WHITE, BLACK);
    return 1;

  } else {
    textcolor(BRIGHT, GREEN, BLACK);
    printf("\n\n~* ");
    textcolor(RESET, WHITE, BLACK);
    textcolor(REVERSE, WHITE, BLACK);
    printf(" %s ", slides[atoi(argv[1])]);
    textcolor(RESET, GREEN, BLACK);
    textcolor(BRIGHT, GREEN, BLACK);
    printf(" *~\n\n");

  }

  textcolor(RESET, WHITE, BLACK);
  return 0;
}
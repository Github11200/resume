#import "@preview/basic-resume:0.2.8": project

== Projects

#project(
  name: "Motion Control Framework",
  type: "Embedded Controls Software Engineer",
  url: "https://github.com/Github11200/Motion-Control-Framework",
  linkName: "GitHub",
)
- Used C++ to enable autonomous robot movement using PID controllers, feedforward controllers, and 2D motion profiles
- Designed a custom *2D motion profile generator* using cubic Bezier curves to calculate the robot's position, velocity, and acceleration at each point on the path while compensating for centripetal forces to keep the robot on the path
- Built *real-time visualization software* with Svelte and WebSockets to display live position, PID data, and logs

#project(
  name: "Verbosity: Custom Programming Language",
  type: "Personal Project",
  url: "https://github.com/Github11200/Verbosity",
  linkName: "GitHub",
  url2: "https://jinay-patel.vercel.app/blog/creating-verbosity",
  link2Name: "Blog Post",
)
- Built a custom lexer, parser, and code generator from scratch for a custom programming language using C++ and CMake
- Applied C++26 features such as abstract classes, virtual methods, smart pointers, and variants for the compiler pipeline

#project(
  name: "Termicord - Real-Time CLI Chat Application",
  type: "Personal Project",
  url: "https://github.com/Github11200/Termicord",
  linkName: "GitHub",
)
- Developed a Discord-like chat application which runs in the terminal using C++, raw TCP sockets, NCurses (for the TUI), and vcpkg
- Implemented a *custom HTTP server* with routing to handle cURL requests sent to a REST API along with a custom database
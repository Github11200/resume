#import "@preview/basic-resume:0.2.8": project

== Projects

#project(
  name: "Motion Control Framework",
  type: "Embedded Controls Software Engineer",
  url: "https://github.com/Github11200/Motion-Control-Framework",
  linkName: "GitHub",
)
- Used C++ to make a robot move autonomously using PIDs, feedforward controllers, and 2D motion profiles
- Designed a custom 2D Motion Profile generator which used Cubic Bezier curves for calculating the robot's trajectory at each point on the path, and then compensating for centripetal forces to allow the robot to stay on the path
- Developed visualization software using Svelte and Websockets to view position and PID data in real time

#project(
  name: "Verbosity: Custom Programming Language",
  type: "Personal Project",
  url: "https://github.com/Github11200/Verbosity",
  linkName: "GitHub",
  url2: "https://jinay-patel.vercel.app/blog/creating-verbosity",
  link2Name: "Blog Post",
)
- Developed a custom lexer, parser, and code generator for a programming language using C++ and CMake
- Applied C++26 features such as abstract classes, virtual methods, smart pointers, and variants

#project(
  name: "Termicord",
  type: "Personal Project",
  url: "https://github.com/Github11200/Termicord",
  linkName: "GitHub",
)
- Developed a Discord-like chat application using C++, raw TCP sockets, NCurses (for the TUI), and VCPkg
- Implemented a custom HTTP server with routing that allows for requests CURL requests to be sent to a REST API

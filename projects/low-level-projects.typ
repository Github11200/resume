#import "@preview/basic-resume:0.2.8": project

== Projects

#project(
  name: "Autonomous Motions Template",
  url: "https://github.com/Github11200/Autonomous-Motions-Template",
)
- A template for moving robot's autonomously by making them move to points or follow curves, written in C++17, and it was used for creating the most consistent autonomous routines out of 50+ teams in British Columbia.
- Generates a 2D motion profile which uses a *Cubic Bézier curve* to plan the velocity the robot should have at each point in time and accounts for *centripetal force* while following the path.

#project(
  name: "Verbosity (Custom Programming Language)",
  url: "https://github.com/Github11200/Verbosity",
)
- A compiler written in C++ for my owen programming langauge.
- It contains a *lexer, parser, and code generator* to take input code, create an abstact syntax tree, and then generate an output in C++.

#project(
  name: "Termicord",
  url: "https://github.com/Github11200/Termicord",
)
- Discord in the terminal using *C++* and *raw TCP sockets* to communicate and send messages.
- Creates several servers to act as chat rooms, spins up a custom *HTTP server*, and includes client code for a TUI application so the user can chat with others from their terminal.

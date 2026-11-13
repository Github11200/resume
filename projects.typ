#import "template/resume.typ": project

== Projects

#project(
  name: "Motion Control Framework",
  type: "Embedded Controls Software Engineer",
  url: "https://github.com/Github11200/Motion-Control-Framework",
  linkName: "GitHub",
)
- Built drive-to-point PID and drive-to-pose lookahead controllers with odometry, drift compensation, and a 10 ms control loop
- Interpolated look up table that uses a Cubic spline to calculate PID gains prior to every movement
- Generated 2D cubic Bézier paths with 0.25-inch waypoints and acceleration limits; used RAMSETE with odometry based pose error to correct linear and angular velocity before feedforward wheel commands
- Built a custom self-registering C++ test harness with *89 tests* covering PID, geometry, Bézier curves, and interpolation

#project(
  name: "Verbosity: C++ Compiler",
  type: "Personal Project",
  url: "https://github.com/Github11200/Verbosity",
  linkName: "GitHub",
  url2: "https://jinay-patel.vercel.app/blog/creating-verbosity",
  link2Name: "Blog Post",
)
- Built a compiler with lexing, recursive-descent parsing, and C++ code generation for a custom language
- Implemented variables, functions, pointers, loops, and arithmetic with an AST and Pratt expression parser

#project(
  name: "Lynx (Automated Note Organizer)",
  type: "Hackathon Project",
  url: "https://community.obsidian.md/plugins/impact-forge",
  linkName: "Obsidian Plugin Listing",
)
- Launched a TypeScript Obsidian plugin using local Ollama models to organize notes, reaching *300+ users*
- Built retrieval-augmented search with LangChain vectors and a Graphology knowledge graph to answer note-based questions
- Synchronized vector and graph indexes as notes changed so answers reflect the most up-to-date versoin of the vault

#project(
  name: "Posturai",
  type: "Hackathon Project - VSHacks 2nd Place",
  url: "https://github.com/Github11200/Posturai",
  linkName: "GitHub",
)
- Built a Next.js posture monitor with MediaPipe and browser-based ONNX inference for live webcam feedback and audio alerts
- Used shoulder-centered data augmentation to generate *2,000 pose samples* from 200 images, making the test accuracy go from *70%* to *81%*
- Trained a PyTorch classifier on *132 pose features*, then exported it to ONNX for browser inference
- Tracked sitting, break, and bad-posture intervals in local Dexie storage to power session analytics

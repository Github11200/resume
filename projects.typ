#import "template/resume.typ": project

== Projects

#project(
  name: "Motion Control Framework",
  type: "Embedded Controls Software Engineer",
  url: "https://github.com/Github11200/Motion-Control-Framework",
  linkName: "GitHub",
)
- Built a C++ navigation library with PID and boomerang controllers, configured for 10 ms control and 5 ms position updates
- Configured 2D Bezier trajectories with 0.25-inch waypoint spacing and forward/backward passes enforcing acceleration limits
- Built a Svelte and WebSocket dashboard to visualize robot position, PID error, and system logs for real-time motion debugging

#project(
  name: "Verbosity: Custom Programming Language",
  type: "Personal Project",
  url: "https://github.com/Github11200/Verbosity",
  linkName: "GitHub",
  url2: "https://jinay-patel.vercel.app/blog/creating-verbosity",
  link2Name: "Blog Post",
)
- Built a 3-stage C++ compiler with a lexer, recursive-descent parser, and code generator producing executable C++ programs
- Implemented variables, functions, pointers, loops, and arithmetic with an abstract syntax tree and polymorphic code generation

#project(
  name: "Lynx (Automated Note Organizer)",
  type: "Hackathon Project",
  url: "https://community.obsidian.md/plugins/impact-forge",
  linkName: "Obsidian Plugin Listing",
)
- Reached *250+ users* with an Obsidian plugin using TypeScript, LangChain, and Ollama to organize notes with local AI models
- Implemented retrieval-augmented generation (RAG) with vector search and a Graphology knowledge graph to answer questions from relevant notes and linked references, updating both indexes as notes change and running AI inference locally through Ollama

#project(
  name: "Posturai",
  type: "Hackathon Project (2nd Place)",
  url: "https://devpost.com/software/posturai",
  linkName: "Devpost",
)
- Built a Next.js posture app with browser-based ONNX inference, webcam feedback, break reminders, and local session analytics
- Trained a PyTorch posture classifier on *150 images* and exported the model to ONNX for inference directly in the web browser

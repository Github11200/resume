#import "@preview/basic-resume:0.2.8": project

== Projects

#project(
name: "Content Management System & Website Backend",
type: "Lead Software Engineer",
url: "https://github.com/Github11200/Seaquam-Robotics-Backend",
linkName: "GitHub",
)
- Built a backend to aggregate data from an external API and a custom content management system that let our coach update data on the robotics website without touching code, reducing reliance on developer support for routine content changes
- Built the backend using *Deno* and created the desktop app for content management system using *Tauri* and *React*

#project(
name: "Telemetry Data Visualization",
type: "Embedded Controls Software Engineer",
url: "https://github.com/Github11200/Robot-Data-Visualization",
linkName: "GitHub",
)
- Streamed CSV-formatted odometry, PID error data, and logs over a *websocket* to a *real-time Svelte dashboard*
- Used Chart.js to render live PID and error graphs and the Canvas API to draw the robot's live position on a 2D field

#project(
name: "AI Complaint Categorization System",
type: "Hackathon Project",
url: "https://github.com/Github11200/Ruby-Hackathon-Project",
linkName: "GitHub",
)
- Built a pipeline that analyzed text, audio, and image-based complaints, categorized them, and stored the results in a *vector database* for a *RAG pipeline*; named a *finalist at the Headstarter Fellowship Hackathon*
- Leveraged OCR Space, Gemini, Hugging Face, LangChain, and Supabase (for the vector database) to power the pipeline
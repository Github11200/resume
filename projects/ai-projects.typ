#import "@preview/basic-resume:0.2.8": project

== Projects

#project(
  name: "Posturai",
  type: "Hackathon Project",
  url: "https://devpost.com/software/posturai",
  linkName: "Devpost",
)
- A Posture correction app that detects bad posture in real time and warns a user about it, built using Python and Streamlit
- Trained a Machine Learning model using PyTorch to classify good and bad posture with a dataset of just 150 images

#project(
  name: "Lynx (Automated Note Organizer)",
  type: "Hackathon Project",
  url: "https://community.obsidian.md/plugins/impact-forge",
  linkName: "Obsidian Plugin Listing",
)
- Utilized LangChain to automatically generate tags, a title, and references to other notes with LLMs running locally on Ollama
- Launched the plugin publicly on Obsidian's community store during the span of the hackathon and gained 50+ users
- Built a RAG + GraphRAG system for answering user queries and surfacing relevant notes, combining a local Graphology database, LangChain Memory Vector Stores and an embedding model running locally

#project(
  name: "AI Complaint Categorization System",
  type: "Personal Project",
  url: "https://github.com/Github11200/Ruby-Hackathon-Project",
  linkName: "GitHub",
)
- Built a pipeline that analyzes multimodal complaint data and auto-categorizes it using OCR Space, Gemini, and Hugging Face
- Designed a RAG pipeline that embeds and stores complaint data in a vector database, then retrieves relevant records via LangChain

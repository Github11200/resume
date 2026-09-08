#import "@preview/basic-resume:0.2.8": *

// Personal Information
#let name = "Jinay Patel"
#let email = "jinayunity22@gmail.com"
#let github = "github.com/Github11200"
#let personal-site = "jinay-patel.vercel.app"

#show: doc => {
resume(
author: name,
email: email,
github: github,
personal-site: personal-site,
accent-color: "#26428b",
font: "New Computer Modern",
paper: "us-letter",
author-position: left,
personal-info-position: left,
doc,
  )
}

== Education

#edu(
institution: "University of Waterloo",
dates: "Expected Graduation: Jun 2031",
degree: "Bachelor of Computer Engineering",
)

== Skills
*Languages*: C/C++ (5 years), JavaScript/TypeScript (6 years), Python (5 years), Java (2 years) \
*Technologies*: PyTorch, LangChain, Mastra, CMake, vcpkg, React, Svelte, Next JS, Tailwind CSS, Git, Docker, Unity, Linux

== Experience

#work(
title: "Lead Software Engineer",
company: "Seaquam Robotics",
location: "Delta, BC",
dates: dates-helper(start-date: "October 2023", end-date: "June 2026"),
)
- Built a data backend with Deno and TypeScript to aggregate data from 3 sources, cutting manual data entry by 50%
- Created a custom React and Tauri desktop CMS app, reducing data entry time from weeks to 60 minutes
- Built a Deno backend caching layer for slow third-party API endpoints, increasing server *response speed by 150%*

#work(
title: "Embedded Controls Software Engineer",
company: "Seaquam Robotics",
location: "Delta, BC",
dates: dates-helper(start-date: "October 2021", end-date: "June 2023"),
)
- Implemented C++ motion algorithms, securing a *100% win rate* during autonomous periods across 15+ matches
- Designed an interpolated lookup table using a monotonic cubic spline to tune PID constants in real time, increasing movement accuracy by 200% with *error tolerances under 1 inch*

#work(
title: "Software Engineering Tutor",
company: "Code Ninjas",
location: "Surrey, BC",
dates: dates-helper(start-date: "September 2025", end-date: "March 2026"),
)
- Helped 5 senior Black Belt students debug and implement features for their games being built with C\# and Unity
- Designed ad campaigns with visual assets for Code Ninjas, improving the local branch's search visibility

#work(
title: "Freelance Systems Administrator / IT Consultant",
company: "Convergence Media",
location: "Remote",
)
- Created a custom Linux Mint ISO using Cubic with 3 bash scripts to automate the installation and setup of programs
- Deployed a self-hosted Nextcloud server (Microsoft 365 alternative) using Docker, which allowed file sharing and private video calls
- Configured a *Tailscale tunnel* to securely expose the Nextcloud server for remote video calls and file sharing

#include "projects/low-level-projects.typ"

== Awards

#certificates(
name: "Vex Robotics World Champion",
issuer: "RECF & Vex Robotics",
date: "April 2026",
)\
Top overall team among 20,000+ worldwide, recognized for excellence across robot design, programming, and competitive performance

#certificates(
name: "Excellence Award @ Provincial Championship",
issuer: "Vex Robotics",
date: "February 2026",
)\
Awarded to the top team out of the 100+ teams in British Columbia for excellent performance

#certificates(
name: "VSHacks Hackathon 2nd Place",
issuer: "VSHacks",
date: "July 2025",
)\
Awarded for developing #link("https://devpost.com/software/posturai")[Posturai], a real-time posture correction app

#certificates(
name: "Senior Computer Programming Award",
issuer: "Seaquam Secondary School",
date: "June 2026",
)\

#certificates(
name: "Euclid Math Contest Distinction",
issuer: "Waterloo CEMC",
date: "May 2026",
)\
Top 25% in Canada for the Euclid math contest
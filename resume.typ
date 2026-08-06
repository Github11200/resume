#import "@preview/basic-resume:0.2.8": *

// Personal Information
#let name = "Jinay Patel"
#let email = "jinayunity22@gmail.com"
#let github = "github.com/Github11200"
#let personal-site = "jinay-patel.vercel.app/"

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
*Technologies*: PyTorch, Langchain, Mastra, CMake, React, Svelte, Next JS, Tailwind CSS, Git, Docker, Unity

== Experience

#work(
  title: "Lead Software Engineer",
  company: "Seaquam Robotics",
  location: "Delta, BC",
  dates: dates-helper(start-date: "October 2023", end-date: "June 2026"),
)
- Built a data backend with Deno and TypeScript to aggreate data from 3 sources, cutting manual data entry by +50%
- Created a custom React and Tauri CMS interface, reducing data entry time from weeks to 60 minutes
- Built a Deno backend caching layer for slow third-party API endpoints, increasing server response speed by +150%

#work(
  title: "Embedded Controls Software Engineer",
  company: "Seaquam Robotics",
  location: "Delta, BC",
  dates: dates-helper(start-date: "October 2021", end-date: "June 2026"),
)
- Implemented C++ motion algorithms, securing a 100% win rate during autonomous periods across 15+ matches
- Designed an Interpolated Look Up Table using a Monotonic Cubic Spline for tuning PID constants in real-time which resulted in a 200% increase in accuracy across all movements with error tolerances being \<1 inch

#work(
  title: "Software Engineering Tutor",
  company: "Code Ninjas",
  location: "Surrey, BC",
  dates: dates-helper(start-date: "September 2025", end-date: "March 2026"),
)
- Helped 5 senior Black Belt students debug and implement features for their games being built with C\# and Unity
- Designed ad campaigns with visual assets for Code Ninjas, improving our local branch search visibility

#include "projects/low-level-projects.typ"

== Awards

#certificates(
  name: "Excellence Award @ Vex Robotics World Championship",
  issuer: "RECF & Vex Robotics",
  date: "April 2026",
)\
Awarded to the top team out of 20,000+ teams worldwide for excellent performance

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
Awarded for developing #link("https://devpost.com/software/posturai")[Posturai], a real-time posture correction software

#certificates(
  name: "Euclid Math Contest Distinction",
  issuer: "Waterloo CEMC",
  date: "May 2026",
)\
Top 25% in Canada for the Euclid math contest

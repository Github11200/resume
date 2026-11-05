#import "@preview/basic-resume:0.2.8": *

// Personal Information
#let name = "Jinay Patel"
#let email = "jinayunity22@gmail.com"
#let github = "github.com/Github11200"
#let personal-site = "jinay-patel.vercel.app"

#show: doc => {
  resume(
    author: name,
    pronouns: [*Robotics World Champion*],
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
  degree: "Bachelor of Computer Engineering",
)

== Skills
*Languages*: C/C++ (5 years), JavaScript/TypeScript (6 years), Python (5 years), Java (2 years), Rust (3 years) \
*Technologies*: PyTorch, LangChain, Mastra, CMake, CUDA, React, Svelte, Next.JS, Tailwind CSS, Git, Docker, Unity, Linux, ROS2

== Experience

#work(
  title: "Perception Engineer",
  company: "WATonomous",
  location: "Waterloo, ON",
  dates: dates-helper(start-date: "September 2026", end-date: "Present"),
)
- Cut BEVFusion perception latency by *25%*, from 43 to 32 ms, using ResNet-50 for 2.47x faster camera processing
- Built a PyTorch model training pipeline to fine-tune 7M parameters, caching LiDAR data to avoid repeated sensor processing
- Implemented a TensorRT/CUDA semantic segmentation head to map 6 road categories, eliminating 240,000 calculations per frame

#work(
  title: "Lead Software Engineer",
  company: "Seaquam Robotics",
  location: "Delta, BC",
  dates: dates-helper(start-date: "October 2023", end-date: "June 2026"),
)
- Cut manual data entry by *50%* with a Deno and TypeScript backend aggregating team, event, and award data from 3 sources
- Reduced website updates from weeks to 60 minutes with a React and Tauri desktop content management system (CMS)
- Increased server response speed by *150%* by caching third-party API responses in the Deno backend for the robotics website

#work(
  title: "Embedded Controls Software Engineer",
  company: "Seaquam Robotics",
  location: "Delta, BC",
  dates: dates-helper(start-date: "October 2021", end-date: "June 2023"),
)
- Achieved a *100% autonomous win rate* across 15+ matches with C++ PID control, odometry, and automatic heading correction
- Increased movement accuracy by *200%* with errors under 1 inch by using a cubic-spline lookup table to tune PID control

#work(
  title: "IT Consultant",
  company: "Convergence Media",
  location: "Remote",
)
- Automated Linux workstation provisioning with a custom Linux Mint ISO, Cubic, and 3 Bash scripts for software installation
- Replaced Microsoft 365 file sharing and video calls with a self-hosted Nextcloud server deployed in Docker containers
- Enabled secure remote access to Nextcloud file sharing and video calls by configuring a Tailscale virtual private network (VPN)

#include "projects.typ"

== Awards

#certificates(
  name: "Vex Robotics World Champion",
  issuer: "RECF & Vex Robotics",
  date: "April 2026",
)\
Top overall team among *20,000+* worldwide, recognized for excellence across robot design, programming, and competitive performance

#certificates(
  name: "Robotics Programming Award x3",
  issuer: "RECF & Vex Robotics",
  date: "May 2026",
)\
Awarded for innovative motion control algorithms and technical documentation

#certificates(
  name: "VSHacks Hackathon 2nd Place",
  issuer: "VSHacks",
  date: "July 2025",
)\
Awarded for developing #link("https://devpost.com/software/posturai")[Posturai], a real-time posture correction app

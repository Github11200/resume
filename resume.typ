#import "template/resume.typ": *

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
    font-size: 9.75pt,
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

== Experience

#work(
  title: "Perception Engineer",
  company: "WATonomous",
  location: "Waterloo, ON",
  dates: dates-helper(start-date: "September 2026", end-date: "Present"),
)
- Cut BEVFusion inference latency *25%* (43 to 32 ms) by adding ResNet-50 support, making camera processing 2.47x faster
- Built a two-stage PyTorch training pipeline that cached LiDAR features and fine-tuned 7.1M parameters on a single GPU
- Integrated a TensorRT/CUDA segmentation head that produces six-class road maps from camera and LiDAR inputs
- Removed 240,000 sigmoid evaluations per frame by thresholding segmentation logits directly in a CUDA kernel

#work(
  title: "Embedded Controls Software Engineer",
  company: "Seaquam Robotics",
  location: "Delta, BC",
  dates: dates-helper(start-date: "October 2021", end-date: "June 2026"),
)
- Achieved a *100% autonomous win rate* across 15+ matches with C++ PID control, odometry, and automatic corrections
- Increased movement accuracy by *200%* with errors under 1 inch by using a cubic-spline lookup table to tune PID constants
- Earned *3 Robotics Programming Awards* for innovative motion control algorithms and technical documentation
- Won the world championship Excellence Award and provincial championship Excellence award, recognizing overall robot design, programming, and competitive performance among *20,000+ teams* worldwide

#work(
  title: "Lead Software Engineer",
  company: "Seaquam Robotics",
  location: "Delta, BC",
  dates: dates-helper(start-date: "October 2023", end-date: "June 2026"),
)
- Led 4 developers in connecting awards, events, and history pages to a shared Deno backend for dynamic content updates
- Cut manual data entry by *50%* with a Deno and TypeScript backend aggregating team, event, and award data from 3 sources
- Reduced website updates from weeks to 60 minutes with a React and Tauri desktop content management system (CMS)
- Cut third-party API response time from roughly *500 ms to 100–200 ms* by caching responses in the Deno backend


#include "projects.typ"

== Skills
*Languages*: C/C++ (5 years), JavaScript/TypeScript (6 years), Python (5 years), Rust (3 years) \
*Technologies*: PyTorch, LangChain, Mastra, CMake, CUDA, React, Svelte, Next.JS, Tailwind CSS, Git, Docker, Linux, ROS2

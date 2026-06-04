#import "@preview/basic-resume:0.2.8": *

// Put your personal information here, replacing mine
#let name = "Jinay Patel"
#let email = "jinayunity22@gmail.com"
#let phone = "+1 (778) 791-5122"
#let github = "https://github.com/Github11200"
#let personal-site = "https://jinay-patel.vercel.app/"

#show: resume.with(
  author: name,
  // All the lines below are optional.
  // For example, if you want to to hide your phone number:
  // feel free to comment those lines out and they will not show.
  email: email,
  phone: phone,
  github: github,
  personal-site: personal-site,
  accent-color: "#26428b",
  font: "New Computer Modern",
  paper: "us-letter",
  author-position: left,
  personal-info-position: left,
)

/*
 * Lines that start with == are formatted into section headings
 * You can use the specific formatting functions if needed
 * The following formatting functions are listed below
 * #edu(dates: "", degree: "", gpa: "", institution: "", location: "", consistent: false)
 * #work(company: "", dates: "", location: "", title: "")
 * #project(dates: "", name: "", role: "", url: "")
 * certificates(name: "", issuer: "", url: "", date: "")
 * #extracurriculars(activity: "", dates: "")
 * There are also the following generic functions that don't apply any formatting
 * #generic-two-by-two(top-left: "", top-right: "", bottom-left: "", bottom-right: "")
 * #generic-one-by-two(left: "", right: "")
 */

== Education

#edu(
  institution: "University of Waterloo",
  dates: "September 2026",
  degree: "Bachelor of Computer Engineering",
)

// -
// - Relevant Coursework: Data Structures, Program Development, Microprocessors, Abstract Algebra I: Groups and Rings, Linear Algebra, Discrete Mathematics, Multivariable & Single Variable Calculus, Principles and Practice of Comp Sci

== Experience

#work(
  title: "Lead Web Developer",
  location: "Delta, BC",
  company: "Seaquam Robotics",
  dates: dates-helper(start-date: "October 2023", end-date: "Present"),
)
- Led a team of 4 other students to make the data on a website dynamic by creating a *server with Deno* for managing data, connecting to APIs, and updating the UI on the frontend.
- Created a *Content Management System* in React with TypeScript which resulted in our coach being able to easily update the data for different teams every year.

#work(
  title: "Robotics Student",
  location: "Delta, BC",
  company: "Seaquam Robotics",
  dates: dates-helper(start-date: "October 2021", end-date: "Present"),
)
- Created the most *consistent autonomous routines out of 50+ teams* allowing us to win during the autonomous period every match.
- Programmed various algorithms for *autonomous robot motions* which made use Trigonometry (determining angles to points, polar coordinates, etc), Calculus (calculating the velocity and acceleration on a Cubic Bézier path for generating trajectories), and physics (to compensate for centripetal force while following trajectories)
- Qualified for the *Vex Robotics World Championships* three times.

#work(
  title: "Sensei",
  location: "Surrey, BC",
  company: "Code Ninjas",
  dates: dates-helper(start-date: "September 2025", end-date: "March 2026"),
)
- Helped students working on the most advanced levels with debugging code in *C\# with Unity*, and adding features for their games.
- Aided with sales calls, SEO, and optimizing ads for the branch.

#include "projects/fullstack-projects.typ"

== Awards

#certificates(
  name: "Excellence Award @ Vex Robotics World Championship",
  issuer: "RECF & Vex Robotics",
  date: "April 2026",
)
- Awarded to *1 out of 20,000+* teams across the world consistent and excellent performance in all areas of robotics.

#certificates(
  name: "Excellence Award @ Pronvincial Championship",
  issuer: "Vex Robotics",
  date: "Febuary 2026",
)
- Awarded to 1 out of the 100+ teams in British Columbia for excellent performance at the competition.

#certificates(
  name: "VSHacks Hackathon 2nd Place",
  issuer: "VSHacks",
  date: "July 2025",
)

#certificates(
  name: "Tournament Finalists x2 (Robotics)",
  issuer: "Vex Robotics",
  date: "March 2024, March 2025",
)

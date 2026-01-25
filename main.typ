#import "@preview/basic-resume:0.2.8": *

// Put your personal information here, replacing mine
#let name = "Jinay Patel"
#let email = "jinayunity22@gmail.com"
#let phone = "+1 (778) 791-5122"
#let github = "https://github.com/Github11200"

#show: resume.with(
  author: name,
  // All the lines below are optional.
  // For example, if you want to to hide your phone number:
  // feel free to comment those lines out and they will not show.
  email: email,
  phone: phone,
  github: github,
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
// == Education
//
// #edu(
//   institution: "Seaquam Secondary School",
//   location: "Delta, BC",
//   dates: dates-helper(start-date: "September, 2021", end-date: "Present"),
//
//   // Uncomment the line below if you want edu formatting to be consistent with everything else
//   consistent: true
// )
// -  
// - Relevant Coursework: Data Structures, Program Development, Microprocessors, Abstract Algebra I: Groups and Rings, Linear Algebra, Discrete Mathematics, Multivariable & Single Variable Calculus, Principles and Practice of Comp Sci

== Experience

#work(
  title: "Air Cadets Programming Club",
  location: "Delta, BC",
  company: "819 Skyhawk Squadron",
  dates: dates-helper(start-date: "May 2025", end-date: "Jun 2025"),
)
- Helped lead a programming club where we *taught other cadets Python and computer hardware concepts* over the course of *1.5 hour classes.*

#work(
  title: "Air Cadets",
  location: "Delta, BC",
  company: "819 Skyhawk Squadron",
  dates: dates-helper(start-date: "Nov 2020", end-date: "Jun 2025"),
)
- *Gave lessons* to classes of cadets (anywhere from 10 - 30) on various topics including leadership, aerospace and survival.
- Responsible for *leading a group of 30* or so cadets with a flight sergeant throughout the course of a year.

#work(
  title: "Lead Web Developer",
  location: "Delta, BC",
  company: "Seaquam Robotics",
  dates: dates-helper(start-date: "October 2023", end-date: "Present"),
)
- Led a team of 4 other students to reach the goal of making a website dynamic so it can accept constantly updating data.
- Created a *Content Management System* in React with TypeScript which resulted in our coach being able to easily update the data for different teams every year.
- Created a system using project planning software for delegating and keeping track of the progress of various tasks geared towards adding in the new features required. 

#work(
  title: "Robotics Student",
  location: "Delta, BC",
  company: "Seaquam Robotics",
  dates: dates-helper(start-date: "October 2021", end-date: "Present"),
)
- Working on *designing, building and programming* robots for the Vex Robotics Competition.
- Programmed various algorithms for *autonomous robot motions* which made use Trigonometry (determining angles to points, polar coordinates, etc) and Calculus (calculating the velocity and acceleration on a Bézier path for generating trajectories).
- Qualified for the *Vex Robotics World Championships* twice. 

== Projects

#project(
  name: "Termicord",
  url: "https://github.com/Github11200/Termicord",
)
- Discord in the terminal using *C++* and *raw sockets* to communicate and send messages.
- Creates several servers to act as chat rooms, spins up a custom *HTTP server*, and includes client code for a TUI application so the user can chat with others from their terminal.

#project(
  name: "Posturai",
  url: "https://github.com/Github11200/Posturai",
)
- A Posture correction app written in *Python* and Streamlit whose goal is to detect bad posture and warn a user about it.
- Makes use of a *Machine Learning model* written using *PyTorch* to classify good and bad posture based on several images that we've given to it.

#project(
  name: "Pure Pursuit Simulator",
  url: "https://github.com/Github11200/Pure-Pursuit-Simulator",
)
- An app to simulate the *Pure Pursuit algorithm* created using *React JS* and *Tailwind CSS*.
- Allows the user to create a path, modify it, and then run a simulation which allows you to see how a robot may behave when following this path on an actual field.

== Awards / Certificates

#certificates(
  name: "Lifesaving & Swim Instructor",
  issuer: "Canadian Red Cross",
  date: "June 2025",
)

#certificates(
  name: "First Aid & CPR/AED Level C",
  issuer: "Canadian Red Cross",
  date: "Febuary 2025",
)

#certificates(
  name: "VSHacks Hackathon 2025 2nd Place",
  issuer: "VSHacks",
  date: "July 2025",
)

#certificates(
  name: "Tournament Finalists x2 (Robotics)",
  issuer: "Vex Robotics",
  date: "March 2024, March 2025",
)

#certificates(
  name: "Excellence Award (Robotics)",
  issuer: "Vex Robotics",
  date: "March 2025",
)

#certificates(
  name: "Design Award x3 (Robotics)",
  issuer: "Vex Robotics",
  date: "January 2023, Febuary 2023, Febuary 2025",
)


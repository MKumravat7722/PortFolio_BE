# db/seeds.rb

Home.destroy_all
About.destroy_all
Service.destroy_all
Project.destroy_all
Skill.destroy_all 
Education.destroy_all
Contact.destroy_all
puts "Seeding data..."


# --- Home ---
Home.create!(
  name: "Mohit Kumravat",
  title: "Full-Stack Developer",
  subtitle: "React & Ruby on Rails Specialist"
)

# --- About ---
About.create!(
  name: "Mohit Kumravat",
  email: "mohit.kumravat@example.com",
  dob: "1999-05-12",
  location: "Indore, India",
  bio: "Hi! I'm a passionate Full-Stack Developer with 2+ years of experience building web applications. I specialize in React and Ruby on Rails. I love creating responsive, user-friendly, and high-performance applications.",
  experience: "2+ Years",
  availability: "Freelance & Remote"
)

# --- Services ---
services = [
  { title: "Frontend Development", description: "Responsive and modern UI using React, Bootstrap, and Tailwind CSS." },
  { title: "Backend Development", description: "APIs, database management, authentication, and secure endpoints with Ruby on Rails." },
  { title: "Full-Stack Applications", description: "End-to-end web applications with React frontend and Rails backend." }
]

services.each do |s|
  Service.create!(s)
end

# --- Projects ---
projects = [
  {
    title: "InstaClone",
    description: "A full-stack social media application built with React and Ruby on Rails.",
    tech_stack: ["React", "Rails", "PostgreSQL", "Bootstrap"].to_json,
    live_url: "#",
    github_url: "#"
  },
  {
    title: "E-Commerce App",
    description: "Online shopping platform with product catalog, cart, and checkout system.",
    tech_stack: ["React", "Rails", "Stripe API", "Tailwind CSS"].to_json,
    live_url: "#",
    github_url: "#"
  },
  {
    title: "Portfolio Website",
    description: "My personal portfolio website to showcase projects and skills.",
    tech_stack: ["React", "Bootstrap", "Vite", "Tailwind CSS"].to_json,
    live_url: "#",
    github_url: "#"
  }
]

projects.each do |p|
  Project.create!(p)
end

# --- Skills ---
skills = [
  { name: "React", percentage: 90 },
  { name: "Ruby on Rails", percentage: 85 },
  { name: "JavaScript", percentage: 95 },
  { name: "HTML & CSS", percentage: 95 },
  { name: "Tailwind CSS", percentage: 80 },
  { name: "PostgreSQL", percentage: 75 }
]

skills.each do |s|
  Skill.create!(s)
end

# --- Education ---
educations = [
  {
    degree: "Bachelor of Technology (B.Tech) in Computer Science",
    institution: "Swami Vivekanand College of Engineering, Indore",
    year: "2019 - 2023",
    grade: "CGPA: 7.22"
  },
  {
    degree: "High School – PCM",
    institution: "Saraswati Vidya Mandir, Pipalrawan",
    year: "2017 - 2019",
    grade: "Percentage: 85%"
  }
]

educations.each do |e|
  Education.create!(e)
end

# --- Contact ---
Contact.create!(
  name: "Test User",
  email: "test@example.com",
  message: "This is a dummy contact message."
)

puts "Seeding completed!"

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user = CreateAdminService.new.call

ActionText::RichText.create!(record_type: 'User',record_id: user.id, name: 'long_description_wysiwyg', body: "I'm a <strong>web designer</strong> and <strong>programmer</strong> specialized in creating useful applications and beautiful websites. I've been in the field for more than <strong>5 years</strong> and have been loving every minute of it! I'm an entrepreneur, designer, developer and overall a thinker. I have experience in all phases of the project life cycle - <strong>analysis</strong>,<strong> design</strong>,<strong> coding</strong>, <strong>debugging</strong>, <strong>testing</strong> and <strong>implementation</strong>. My working experience is the proof that I can be an excellent asset to your company.")
ActionText::RichText.create!(record_type: 'User',record_id: user.id, name: 'extra_description_for_pdf', body: "Find more details about me and my portfolio of projects on my website <a href=\"https://alexrogna.com\">alexrogna.com</a>")
user.cover_image.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/cover_image.jpg')), filename: 'cover_image.jpg')
user.profile_image.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/profile_image_small.jpg')), filename: 'profile_image_small.jpg')

#Social icons
SocialIcon.create!(name: 'LinkedIn', link: 'https://linkedin.com/in/alexrogna', icon: 'fab fa-linkedin-in', order_id: 1)
SocialIcon.create!(name: 'GitHub', link: 'https://github.com/AlexUkPC', icon: 'fab fa-github', order_id: 2)
SocialIcon.create!(name: 'DockerHub', link: 'https://hub.docker.com/u/alexrogna', icon: 'fab fa-docker', show_on_cv: false, order_id: 3)

#Skills
skill1 = Skill.create!(name: 'Ruby', order_id: '1')
skill1.logo.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Skills/Ruby.png')), filename: 'ruby.png')
skill2 = Skill.create!(name: 'Rails', order_id: '2')
skill2.logo.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Skills/Rails.png')), filename: 'rails.png')
skill3 = Skill.create!(name: 'HTML', order_id: '3')
skill3.logo.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Skills/HTML.png')), filename: 'html.png')
skill4 = Skill.create!(name: 'CSS', order_id: '4')
skill4.logo.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Skills/CSS.png')), filename: 'css.png')
skill5 = Skill.create!(name: 'Javascript', order_id: '5')
skill5.logo.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Skills/Javascript.png')), filename: 'javascript.png')
skill6 = Skill.create!(name: 'Wordpress', order_id: '6')
skill6.logo.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Skills/WordPress.png')), filename: 'wordpress.png')
skill7 = Skill.create!(name: 'Databases', order_id: '7')
skill7.logo.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Skills/Databases.png')), filename: 'databases.png')
skill8 = Skill.create!(name: 'Linux', order_id: '8')
skill8.logo.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Skills/Linux-Ubuntu.png')), filename: 'linux-ubuntu.png')
skill9 = Skill.create!(name: 'Git', order_id: '9')
skill9.logo.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Skills/Git-GitHub.png')), filename: 'git-github.png')
skill10 = Skill.create!(name: 'DevOps', order_id: '10')
skill10.logo.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Skills/DevOps.png')), filename: 'devops.png')

#Language skills
LanguageSkill.create!(language: "English", certificate_name: "EF SET Certificate", certificate_url: "https://efset.org/cert/ExPscw", procent: 66)
LanguageSkill.create!(language: "German",certificate_name: "", certificate_url: "", procent: 30)
LanguageSkill.create!(language: "Romanian",is_native: true, procent: 99)

#Personal skills
PersonalSkill.create!(skill: "Problem solving", icon: "fas fa-puzzle-piece", description: "In my mind, there's no problem without a solution. When I have a problem, I divide it into small parts and solve each one separately. After defining all possible solutions, I try to choose the best ones.", order_id: 1)
PersonalSkill.create!(skill: "Adaptability", icon: "fas fa-users-cog", description: "As a freelancer, I had to adapt myself to changes very often - different clients, areas, tools and technologies.", order_id: 2)
PersonalSkill.create!(skill: "Communication", icon: "fas fa-users", description: "Having a continuous exchange of information with my clients helped me to be able to express my ideas and implement the proposals from them.", order_id: 3)
PersonalSkill.create!(skill: "Keen eye for detail", icon: "fas fa-search", description: "I zoom in and verify every small detail in order to obtain better results, always keeping in mind how they could affect the success of the project.", order_id: 4)
PersonalSkill.create!(skill: "Self-motivation", icon: "fas fa-chart-line", description: "Successfully completing one project and moving on to the next one is very exciting for me. I'm passionate about my work and truly enjoy working towards the next big goal.", order_id: 5)
PersonalSkill.create!(skill: "Willingness to learn", icon: "fas fa-book-reader", description: "I'm very excited to discover new tools and technologies by reading books, taking online courses and experimenting.", order_id: 6)
PersonalSkill.create!(skill: "Planning", icon: "fas fa-tasks", description: "I'm a strategic planner, skilled in multitasking and prioritizing work tasks to meet any deadline.", order_id: 7)
PersonalSkill.create!(skill: "Time management", icon: "fas fa-user-clock", description: "I like to make every day a to-do list for myself that includes the tasks I need to complete within that day.", order_id: 8)
PersonalSkill.create!(skill: "Punctuality", icon: "far fa-clock", description: "It's really important to me to be punctual and I understand how important it is also for the team and for the organizational success. ", order_id: 9)

#Tech
tech1 = Tech.create!(name: "Ruby", order_id: 1)
tech1.logo.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Tech/Ruby.png')), filename: 'ruby.png')
tech2 = Tech.create!(name: "Rails", order_id: 2)
tech2.logo.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Tech/Rails.png')), filename: 'rails.png')
tech3 = Tech.create!(name: "Sqlite", order_id: 3, skill_ids: [skill7.id])
tech3.logo.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Tech/SQLite.png')), filename: 'sqlite.png')
tech4 = Tech.create!(name: "Postgresql", order_id: 4, skill_ids: [skill7.id])
tech4.logo.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Tech/PostgreSQL.png')), filename: 'postgresql.png')
tech5 = Tech.create!(name: "Python", order_id: 5)
tech5.logo.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Tech/Python.png')), filename: 'python.png')
tech6 = Tech.create!(name: "PHP", order_id: 6)
tech6.logo.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Tech/PHP.png')), filename: 'php.png')
tech7 = Tech.create!(name: "Sql Server", order_id: 7, skill_ids: [skill7.id])
tech7.logo.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Tech/SQLServer.png')), filename: 'sqlserver.png')
tech8 = Tech.create!(name: "Turbo Pascal", order_id: 8)
tech8.logo.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Tech/TurboPascal.png')), filename: 'turbopascal.png')
tech9 = Tech.create!(name: "FoxPro", order_id: 9, skill_ids: [skill7.id])
tech9.logo.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Tech/FoxPro.png')), filename: 'foxpro.png')
tech10 = Tech.create!(name: "C++", order_id: 10)
tech10.logo.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Tech/C++.png')), filename: 'c++.png')
tech11 = Tech.create!(name: "SQL", order_id: 11, skill_ids: [skill7.id])
tech11.logo.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Tech/SQL.png')), filename: 'sql.png')
tech12 = Tech.create!(name: "C#", order_id: 12)
tech12.logo.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Tech/C#.png')), filename: 'c#.png')
tech13 = Tech.create!(name: "Java", order_id: 13)
tech13.logo.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Tech/Java.png')), filename: 'java.png')
tech14 = Tech.create!(name: "Visual Basic", order_id: 14)
tech14.logo.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Tech/VisualBasic.png')), filename: 'visualbasic.png')
tech15 = Tech.create!(name: "MySql", order_id: 15, skill_ids: [skill7.id])
tech15.logo.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Tech/MySql.png')), filename: 'mysql.png')
tech16 = Tech.create!(name: "HTML", order_id: 16)
tech16.logo.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Tech/HTML.png')), filename: 'html.png')
tech17 = Tech.create!(name: "CSS", order_id: 17)
tech17.logo.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Tech/CSS.png')), filename: 'css.png')
tech18 = Tech.create!(name: "Sass", order_id: 18)
tech18.logo.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Tech/Sass.png')), filename: 'sass.png')
tech19 = Tech.create!(name: "Bulma", order_id: 19)
tech19.logo.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Tech/Bulma.png')), filename: 'bulma.png')
tech20 = Tech.create!(name: "Bootstrap", order_id: 20)
tech20.logo.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Tech/Bootstrap.png')), filename: 'bootstrap.png')
tech21 = Tech.create!(name: "Tailwind", order_id: 21)
tech21.logo.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Tech/Tailwind.png')), filename: 'tailwind.png')
tech22 = Tech.create!(name: "Javascript", order_id: 22)
tech22.logo.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Tech/Javascript.png')), filename: 'javascript.png')
tech23 = Tech.create!(name: "Jquery", order_id: 23, skill_ids: [skill5.id])
tech23.logo.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Tech/jQuery.png')), filename: 'jquery.png')
tech24 = Tech.create!(name: "React", order_id: 24)
tech24.logo.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Tech/React.png')), filename: 'react.png')
tech25 = Tech.create!(name: "Wordpress", order_id: 25)
tech25.logo.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Tech/WordPress.png')), filename: 'wordpress.png')
tech26 = Tech.create!(name: "WooCommerce", order_id: 26)
tech26.logo.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Tech/WooCommerce.png')), filename: 'woocommerce.png')
tech27 = Tech.create!(name: "IntelliJ Idea", order_id: 27)
tech27.logo.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Tech/IntelliJ.png')), filename: 'intellij.png')
tech28 = Tech.create!(name: "Android Studio", order_id: 28)
tech28.logo.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Tech/AndroidStudio.png')), filename: 'androidstudio.png')
tech29 = Tech.create!(name: "RubyMine", order_id: 29)
tech29.logo.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Tech/RubyMine.png')), filename: 'rubymine.png')
tech30 = Tech.create!(name: "Visual Studio Code", order_id: 30)
tech30.logo.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Tech/VisualStudioCode.png')), filename: 'visualstudiocode.png')
tech31 = Tech.create!(name: "Figma", order_id: 31)
tech31.logo.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Tech/Figma.png')), filename: 'figma.png')
tech32 = Tech.create!(name: "Notion", order_id: 32)
tech32.logo.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Tech/Notion.png')), filename: 'notion.png')
tech33 = Tech.create!(name: "Linux", order_id: 33)
tech33.logo.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Tech/Linux-Ubuntu.png')), filename: 'linux-ubuntu.png')
tech34 = Tech.create!(name: "Nginx", order_id: 34)
tech34.logo.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Tech/Nginx.png')), filename: 'nginx.png')
tech35 = Tech.create!(name: "Magento", order_id: 35)
tech35.logo.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Tech/Magento.png')), filename: 'magento.png')
tech36 = Tech.create!(name: "PrestaShop", order_id: 36)
tech36.logo.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Tech/PrestaShop.png')), filename: 'prestashop.png')
tech37 = Tech.create!(name: "Odoo", order_id: 37)
tech37.logo.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Tech/Odoo.png')), filename: 'odoo.png')
tech38 = Tech.create!(name: "Umbraco", order_id: 38)
tech38.logo.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Tech/Umbraco.png')), filename: 'umbraco.png')
tech39 = Tech.create!(name: "Aptana", order_id: 39)
tech39.logo.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Tech/Aptana.png')), filename: 'aptana.png')
tech40 = Tech.create!(name: "Windows Server", order_id: 40)
tech40.logo.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Tech/WindowsServer.png')), filename: 'windowsserver.png')
tech41 = Tech.create!(name: "Xampp", order_id: 41)
tech41.logo.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Tech/Xampp.png')), filename: 'xampp.png')
tech42 = Tech.create!(name: "OpenCart", order_id: 42)
tech42.logo.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Tech/OpenCart.png')), filename: 'opencart.png')
tech43 = Tech.create!(name: "Atom", order_id: 43)
tech43.logo.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Tech/Atom.png')), filename: 'atom.png')
tech44 = Tech.create!(name: "Visual Studio", order_id: 44)
tech44.logo.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Tech/VisualStudio.png')), filename: 'visualstudio.png')
tech45 = Tech.create!(name: "Eclipse", order_id: 45)
tech45.logo.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Tech/Eclipse.png')), filename: 'eclipse.png')
tech46 = Tech.create!(name: "Wamp", order_id: 46)
tech46.logo.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Tech/Wamp.png')), filename: 'wamp.png')
tech47 = Tech.create!(name: "CPanel", order_id: 47)
tech47.logo.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Tech/Cpanel.png')), filename: 'cpanel.png')
tech48 = Tech.create!(name: "Filezilla", order_id: 48)
tech48.logo.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Tech/Filezilla.png')), filename: 'filezilla.png')
tech49 = Tech.create!(name: "Git", order_id: 49)
tech49.logo.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Tech/Git-GitHub.png')), filename: 'git-github.png')
tech50 = Tech.create!(name: "Docker", order_id: 50, skill_ids: [skill10.id])
tech50.logo.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Tech/Docker.png')), filename: 'docker.png')
tech51 = Tech.create!(name: "Asana", order_id: 51)
tech51.logo.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Tech/Asana.png')), filename: 'asana.png')
tech52 = Tech.create!(name: "Harvest", order_id: 52)
tech52.logo.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Tech/Harvest.png')), filename: 'harvest.png')
tech53 = Tech.create!(name: "Corel Draw", order_id: 53)
tech53.logo.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Tech/Corel.png')), filename: 'corel.png')
tech54 = Tech.create!(name: "Photoshop", order_id: 54)
tech54.logo.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Tech/Photoshop.png')), filename: 'photoshop.png')
tech55 = Tech.create!(name: "After Effects", order_id: 55)
tech55.logo.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Tech/AfterEffects.png')), filename: 'aftereffects.png')
tech56 = Tech.create!(name: "Premier Pro", order_id: 56)
tech56.logo.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Tech/PremierPro.png')), filename: 'premierpro.png')
tech57 = Tech.create!(name: "VirtualBox", order_id: 57)
tech57.logo.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Tech/VirtualBox.png')), filename: 'virtualbox.png')
tech58 = Tech.create!(name: "VmWare", order_id: 58)
tech58.logo.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Tech/VmWare.png')), filename: 'vmware.png')
tech59 = Tech.create!(name: "Office Suite", order_id: 59)
tech59.logo.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Tech/Office.png')), filename: 'office.png')
tech60 = Tech.create!(name: "Jenkins", order_id: 60, skill_ids: [skill10.id])
tech60.logo.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Tech/Jenkins.png')), filename: 'jenkins.png')
tech61 = Tech.create!(name: "Jira", order_id: 61, skill_ids: [skill10.id])
tech61.logo.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Tech/Jira.png')), filename: 'jira.png')
tech62 = Tech.create!(name: "Portainer", order_id: 62, skill_ids: [skill10.id])
tech62.logo.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Tech/Portainer.png')), filename: 'portainer.png')
tech63 = Tech.create!(name: "Kubernetes", order_id: 63, skill_ids: [skill10.id])
tech63.logo.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Tech/Kubernetes.png')), filename: 'kubernetes.png')
tech64 = Tech.create!(name: "Ansible", order_id: 64, skill_ids: [skill10.id])
tech64.logo.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Tech/Ansible.png')), filename: 'ansible.png')
tech65 = Tech.create!(name: "Terraform", order_id: 65, skill_ids: [skill10.id])
tech65.logo.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Tech/Terraform.png')), filename: 'terraform.png')
tech66 = Tech.create!(name: "Grafana", order_id: 66, skill_ids: [skill10.id])
tech66.logo.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Tech/Grafana.png')), filename: 'grafana.png')
tech67 = Tech.create!(name: "Prometheus", order_id: 67, skill_ids: [skill10.id])
tech67.logo.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Tech/Prometheus.png')), filename: 'prometheus.png')
tech68 = Tech.create!(name: "Loki", order_id: 68, skill_ids: [skill10.id])
tech68.logo.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Tech/Loki.png')), filename: 'loki.png')

# Work Experience
work1 = Work.create!(company: "DESTINE BROKER DE ASIGURARE - Ploiesti, RO", position: "Network Administrator and IT Support", start_date: "2008-01-03", end_date: "2014-06-15", tech_ids: [tech12.id, tech53.id, tech47.id, tech17.id, tech45.id, tech48.id, tech16.id, tech13.id, tech15.id, tech59.id, tech54.id, tech14.id, tech44.id, tech58.id, tech46.id] )
ActionText::RichText.create!(record_type: 'Work',record_id: work1.id, name: 'key_responsibilities', body: "<ul><li>Maintained the servers by regularly troubleshooting them, keeping a backup of information and restoring it in time of need. </li><li>Planned the networking in the office, maintained the user accounts and passwords, safeguarding the network from viruses and spam. </li><li>Designed, programmed, tested and implemented business systems and support client server applications using C# and MYSQL. </li><li>Used Visual Basics to build user defined functions and automate processes. </li></ul>")

work2 = Work.create!(company: "SEMPRE SANO CATERING - Bucharest, RO", position: "C# Developer", start_date: "2014-07-01", end_date: "2014-12-01", tech_ids: [tech12.id, tech47.id, tech17.id, tech48.id, tech16.id, tech15.id, tech44.id, tech46.id, tech26.id, tech25.id])
ActionText::RichText.create!(record_type: 'Work',record_id: work2.id, name: 'key_responsibilities', body: "<ul><li>Developed the internal software and the external presentation website. </li><li>Generated, maintained and archived the content of the website . </li><li>Provided ongoing problem-solving support of applications and implementation of the web services.</li></ul>")

work3 = Work.create!(company: "ARTCANDLE - Ploiesti, RO", position: "Web developer", start_date: "2015-05-01", end_date: "2016-08-01", tech_ids: [tech43.id, tech47.id, tech17.id, tech16.id, tech15.id, tech54.id, tech6.id, tech36.id, tech46.id])
ActionText::RichText.create!(record_type: 'Work',record_id: work3.id, name: 'key_responsibilities', body: "<ul><li>Defined website architecture and overall site structure. </li><li>Prepared, coded, installed, tested and debugged web applications using appropriate editors.</li><li>Assured security and backups of all websites and related applications.</li></ul>")

work4 = Work.create!(company: "LOGIT SOLUTIONS - Ploiesti, RO", position: "Programmer and Web developer", start_date: "2016-09-01", end_date: "2016-12-01", tech_ids: [tech39.id, tech20.id, tech12.id, tech47.id, tech17.id, tech48.id, tech16.id, tech22.id, tech35.id, tech37.id, tech6.id, tech36.id, tech5.id, tech7.id, tech38.id, tech40.id, tech41.id])
ActionText::RichText.create!(record_type: 'Work',record_id: work4.id, name: 'key_responsibilities', body: "<ul><li>Coded, debugged and documented modules in Python and C# for different CMS, based on clients requests. </li><li>Designed and updated websites on PrestaShop and Magento.</li></ul>")

work5 = Work.create!(company: "FREELANCER", position: "Programmer and Web developer", start_date: "2016-12-01", end_date: "2022-12-01", present: true, tech_ids: [tech20.id, tech19.id, tech53.id, tech17.id, tech50.id, tech31.id, tech49.id, tech16.id, tech22.id, tech23.id, tech33.id, tech32.id, tech54.id, tech4.id, tech2.id, tech24.id, tech1.id, tech18.id, tech3.id, tech21.id, tech30.id, tech25.id, tech60.id, tech62.id])
ActionText::RichText.create!(record_type: 'Work',record_id: work5.id, name: 'key_responsibilities', body: "<ul><li>Coded, debugged, tested and documented web applications based on customer requests. </li><li>Designed, created, updated, assured security and backups for websites.</li><li>Learned new tools and technologies to help me achieve my goals.</li></ul>")

#Education
education1 = Education.create!(school: "TOMA N. SOCOLESCU HIGH SCHOOL", location: "Ploiesti, RO", start_date: "2003-09-15", end_date: "2007-06-15", specialization: "Mathematics - Computer Science", tech_ids: [tech9.id, tech59.id, tech8.id ], show_on_cv: false )
ActionText::RichText.create!(record_type: 'Education',record_id: education1.id, name: 'courses', body: "<div>ECDL &amp; CISCO Course</div>")

education2 = Education.create!(school: "SPIRU HARET UNIVERSITY", location: "Bucharest, RO", start_date: "2009-10-01", end_date: "2012-06-01", specialization: "Faculty of Mathematics and Computer Science", tech_ids: [tech10.id, tech11.id ], show_on_cv: true )
ActionText::RichText.create!(record_type: 'Education',record_id: education2.id, name: 'courses', body: "<div>Bachelor's degree in Computer Science</div>")

education3 = Education.create!(school: "Purple Beard Training", location: "UK", start_date: "2021-12-09", end_date: "2022-03-15", specialization: "DevOps Course ", tech_ids: [tech50.id, tech49.id, tech60.id, tech61.id, tech62.id, tech63.id, tech64.id, tech65.id, tech66.id, tech67.id, tech68.id ], show_on_cv: true )

#Books
book = Book.create!(title: "JavaScript in easy steps", subtitle: "5th Edition", author: "Mike McGrath", publisher: "In Easy Steps", dop: "2013-01-31", resources_link: "https://ineasysteps.com/wp-content/uploads/2013/04/JavaScript5th-sources-revisedApril2013.zip", github_link: "https://github.com/AlexUkPC/JavaScript_In_Easy_Steps", skill_ids: [skill5.id])
book.cover.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Books/JavaScript-5th-ies.jpg')), filename: 'JavaScript-5th-ies.jpg')

book = Book.create!(title: "jQuery in easy steps", subtitle: "", author: "Mike McGrath", publisher: "In Easy Steps", dop: "2014-02-11", resources_link: "https://ineasysteps.com/wp-content/uploads/2016/10/jquery-src.zip", github_link: "https://github.com/AlexUkPC/JQuery_In_Easy_Steps", skill_ids: [skill5.id])
book.cover.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Books/jquery-ies.jpg')), filename: 'jquery-ies.jpg')

book = Book.create!(title: "CSS3 in easy steps", subtitle: "", author: "Mike McGrath", publisher: "In Easy Steps", dop: "2013-02-08", resources_link: "https://ineasysteps.com/wp-content/uploads/2013/02/css3-src.zip", github_link: "https://github.com/AlexUkPC/CSS3_In_Easy_Steps", skill_ids: [skill4.id])
book.cover.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Books/css3-ies.jpg')), filename: 'css3-ies.jpg')

book = Book.create!(title: "HTML5 in easy steps", subtitle: "", author: "Mike McGrath", publisher: "In Easy Steps", dop: "2011-02-17", resources_link: "https://ineasysteps.com/wp-content/uploads/2018/06/HTML5sources.zip", github_link: "https://github.com/AlexUkPC/Html5_In_Easy_Steps", skill_ids: [skill3.id])
book.cover.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Books/html5-ies.jpg')), filename: 'html5-ies.jpg')

book = Book.create!(title: "Learn Rails 6", subtitle: "Accelerated Web Development with Ruby on Rails", author: "Adam Notodikromo", publisher: "Apress", dop: "2020-10-25", resources_link: "https://github.com/Apress/learn-rails-6", github_link: "https://github.com/AlexUkPC/tandibi", skill_ids: [skill2.id])
book.cover.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Books/learnRails6.jpg')), filename: 'learnRails6.jpg')

book = Book.create!(title: "Beginning Rails 6", subtitle: "From Novice to Professional", author: "Brady Somerville, Adam Gamble, Cloves Carneiro Jr. & Rida Al Barazi", publisher: "Apress", dop: "2020-07-23", resources_link: "https://github.com/Apress/beginning-rails-6", github_link: "https://github.com/AlexUkPC/begining_rail_6", skill_ids: [skill2.id])
book.cover.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Books/beginnigRails6.jpg')), filename: 'beginnigRails6.jpg')

book = Book.create!(title: "The Well-Grounded Rubyist", subtitle: "3rd Edition", author: "David A. Black & Joseph Leo III", publisher: "Manning", dop: "2019-05-07", resources_link: "https://www.manning.com/downloads/1966", github_link: "https://github.com/AlexUkPC/The-Well-Grounded-Rubyist", skill_ids: [skill1.id])
book.cover.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Books/TheWell-GroundedRubyistThird.jpg')), filename: 'TheWell-GroundedRubyistThird.jpg')

book = Book.create!(title: "Practical Linux with Raspberry Pi OS", subtitle: "Quick Start", author: "Ashwin Pajankar", publisher: "Apress", dop: "2021-01-05", resources_link: "", github_link: "", skill_ids: [skill8.id])
book.cover.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Books/Practical-Linux-with-Raspberry-Pi-OS.jpeg')), filename: 'Practical-Linux-with-Raspberry-Pi-OS.jpeg')

book = Book.create!(title: "Docker for Rails Developers", subtitle: "Build, Ship, and Run Your Applications Everywhere", author: "Rob Isenberg", publisher: "The Pragmatic Programmers", dop: "2019-03-19", resources_link: "https://media.pragprog.com/titles/ridocker/code/ridocker-code.zip", github_link: "https://github.com/AlexUkPC/Default_project_Rails_with_postgres", skill_ids: [skill10.id])
book.cover.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Books/docker-for-rails-developers.jpg')), filename: 'docker-for-rails-developers.jpg')

book = Book.create!(title: "CSS3 FOR WEB DESIGNERS", subtitle: "2nd Edition", author: "Dan Cederholm", publisher: "A Book Apart", dop: "2015-01-01", resources_link: "", github_link: "", skill_ids: [skill4.id])
book.cover.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Books/css3-for-web-designers-2nd.jpg')), filename: 'css3-for-web-designers-2nd.jpg')

book = Book.create!(title: "HTML5 FOR WEB DESIGNERS", subtitle: "2nd Edition", author: "Jeremy Keith & Rachel Andrew", publisher: "A Book Apart", dop: "2015-01-01", resources_link: "", github_link: "", skill_ids: [skill3.id])
book.cover.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Books/html5-for-web-designers-2nd.jpg')), filename: 'html5-for-web-designers-2nd.jpg')

book = Book.create!(title: "Pro HTML5 Programming", subtitle: "Powerful APIs for Richer Internet Application Development", author: "Peter Lubbers, Brian Albers & Frank Salim", publisher: "Apress", dop: "2010-03-01", resources_link: "", github_link: "", skill_ids: [skill3.id])
book.cover.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Books/Pro-HTML5-Programming.jpg')), filename: 'Pro-HTML5-Programming.jpg')

book = Book.create!(title: "Responsive Web Design with HTML5 and CSS3", subtitle: "Learn Responsive Design Using HTML5 and CSS3 to Adapt Websites to any Browser or Screen Size", author: "Ben Frain", publisher: "Packt", dop: "2012-04-10", resources_link: "", github_link: "", skill_ids: [skill3.id, skill4.id])
book.cover.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Books/Responsive-Web-Design-with-HTML5-and-CSS3.jpg')), filename: 'Responsive-Web-Design-with-HTML5-and-CSS3.jpg')

book = Book.create!(title: "Agile Web Development With Rails 6", subtitle: "", author: "Sam Ruby, David Bryant Copeland & Dave Thomas", publisher: "The Pragmatic Programmers", dop: "2020-02-10", resources_link: "https://media.pragprog.com/titles/rails6/code/rails6-code.zip", github_link: "https://github.com/AlexUkPC/depot", skill_ids: [skill2.id])
book.cover.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Books/AgileWebDevelopmentWithRails6.jpg')), filename: 'AgileWebDevelopmentWithRails6.jpg')

book = Book.create!(title: "Git for Programmers", subtitle: "Master Git for effective implementation of version control for your programming projects", author: "Jesse Liberty", publisher: "Packt", dop: "2021-06-30", resources_link: "", github_link: "", skill_ids: [skill9.id])
book.cover.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Books/Git-for-Programmers.jpg')), filename: 'Git-for-Programmers.jpg')

book = Book.create!(title: "Beginning Git and GitHub", subtitle: "A Comprehensive Guide to Version Control, Project Management, and Teamwork for the New Developer", author: "Mariot Tsioara", publisher: "Apress", dop: "2019-12-01", resources_link: "", github_link: "", skill_ids: [skill9.id])
book.cover.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Books/Beginning-Git-and-GitHub.jpg')), filename: 'Beginning-Git-and-GitHub.jpg')

book = Book.create!(title: "Hands-on GitHub Actions", subtitle: "Implement CI/CD with GitHub Action Workflows for Your Applications", author: "Chaminda Chandrasekara, Pushpa Herath", publisher: "Apress", dop: "2021-02-23", resources_link: "", github_link: "", skill_ids: [skill9.id])
book.cover.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Books/Hands-on-GitHub-Actions.jpg')), filename: 'Hands-on-GitHub-Actions.jpg')

book = Book.create!(title: "Jenkins Administrators Guide", subtitle: "Install, manage, and scale a CI/CD build and release system to accelerate your product life cycle", author: "Calvin Sangbin Park, Lalit Adithya, Samuel Gleske", publisher: "Packt", dop: "2021-06-30", resources_link: "", github_link: "", skill_ids: [skill10.id])
book.cover.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Books/Jenkins-Administrators-Guide.jpg')), filename: 'Jenkins-Administrators-Guide.jpg')

book = Book.create!(title: "Deploying Rails with Docker, Kubernetes and ECS", subtitle: "", author: "Pablo Acuna", publisher: "Apress", dop: "2016-12-20", resources_link: "", github_link: "", skill_ids: [skill10.id])
book.cover.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Books/Deploying-Rails-with-Docker-Kubernetes-and-ECS.jpg')), filename: 'Deploying-Rails-with-Docker-Kubernetes-and-ECS.jpg')

book = Book.create!(title: "Effective Testing with RSpec 3", subtitle: "Build Ruby Apps with Confidence", author: "Myron Marston, Ian Dees", publisher: "The Pragmatic Programmers", dop: "2017-09-15", resources_link: "", github_link: "", skill_ids: [skill1.id])
book.cover.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Books/Effective-Testing-with-RSpec-3.jpg')), filename: 'Effective-Testing-with-RSpec-3.jpg')

book = Book.create!(title: "The Ruby Way", subtitle: "Third Edition", author: "Hal Fulton, Andre Arko", publisher: "Adison Wesley", dop: "2015-03-12", resources_link: "", github_link: "", skill_ids: [skill1.id])
book.cover.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Books/The-Ruby-Way-Third-Edition.png')), filename: 'The-Ruby-Way-Third-Edition.png')

book = Book.create!(title: "Ubuntu Linux Bible" , subtitle: "", author: "Ubuntu Linux Bible, Christopher Negus", publisher: "Wiley", dop: "2021-01-04", resources_link: "", github_link: "", skill_ids: [skill8.id])
book.cover.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Books/Ubuntu-Linux-Bible.jpg')), filename: 'Ubuntu-Linux-Bible.jpg')

#Linkedins
linkedin = Linkedin.create!(badge_name: "Agile Methodologies", skill_ids: [skill2.id])
linkedin.badge.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Linkedins/Assessments/Agile-Methodologies.png')), filename: 'Agile-Methodologies.png')

linkedin = Linkedin.create!(badge_name: "CSS", skill_ids: [skill4.id])
linkedin.badge.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Linkedins/Assessments/CSS.png')), filename: 'CSS.png')

linkedin = Linkedin.create!(badge_name: "Git", skill_ids: [skill9.id])
linkedin.badge.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Linkedins/Assessments/Git.png')), filename: 'Git.png')

linkedin = Linkedin.create!(badge_name: "HTML", skill_ids: [skill3.id])
linkedin.badge.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Linkedins/Assessments/HTML.png')), filename: 'HTML.png')

linkedin = Linkedin.create!(badge_name: "JavaScript", skill_ids: [skill5.id])
linkedin.badge.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Linkedins/Assessments/JavaScript.png')), filename: 'JavaScript.png')

linkedin = Linkedin.create!(badge_name: "Linux", skill_ids: [skill8.id])
linkedin.badge.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Linkedins/Assessments/Linux.png')), filename: 'Linux.png')

linkedin = Linkedin.create!(badge_name: "Ruby on Rails", skill_ids: [skill1.id, skill2.id])
linkedin.badge.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Linkedins/Assessments/Ruby-on-Rails.png')), filename: 'Ruby-on-Rails.png')

linkedin = Linkedin.create!(badge_name: "Agile Development Practices",url: "https://www.linkedin.com/learning/certificates/42cea8bc5b94f03464f5b79cd8959da9580eaa3cd6a3041fbbd90450fee86563?trk=share_certificate", skill_ids: [skill2.id])
linkedin.badge.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Linkedins/Courses/01.Agile-Development-Practices.png')), filename: 'Agile-Development-Practices.png')

linkedin = Linkedin.create!(badge_name: "Agile Foundations",url: "https://www.linkedin.com/learning/certificates/72128198de935f6cf71bdbe819197188fee8b2521b3f6f63b3c8326af7214e10?trk=share_certificate", skill_ids: [skill2.id])
linkedin.badge.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Linkedins/Courses/02.Agile-Foundations.png')), filename: 'Agile-Foundations.png')

linkedin = Linkedin.create!(badge_name: "Become a Ruby on Rails Developer", url: "", skill_ids: [skill2.id])
linkedin.badge.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Linkedins/Courses/03.Become-a-Ruby-on-Rails-Developer.png')), filename: 'Become-a-Ruby-on-Rails-Developer.png')

linkedin = Linkedin.create!(badge_name: "Become a Web Designer", url: "", skill_ids: [skill3.id, skill4.id])
linkedin.badge.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Linkedins/Courses/04.Become-a-Web-Designer.png')), filename: 'Become-a-Web-Designer.png')

linkedin = Linkedin.create!(badge_name: "CSS Essential Training",url: "https://www.linkedin.com/learning/certificates/21db33e7f1704cb29974309563c0eac7da113d28a24275ae74658b87aabd4d87?trk=share_certificate", skill_ids: [skill4.id])
linkedin.badge.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Linkedins/Courses/05.CSS-Essential-Training.png')), filename: 'CSS-Essential-Training.png')

linkedin = Linkedin.create!(badge_name: "Design Aesthetics for the Web", url: "https://www.linkedin.com/learning/certificates/a8c32947a9bbb0a10a7681a071e761b2142cd418ab8039386e15de3ee0146754?trk=share_certificate", skill_ids: [skill4.id])
linkedin.badge.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Linkedins/Courses/06.Design-Aesthetics-for-the-Web.png')), filename: 'Design-Aesthetics-for-the-Web.png')

linkedin = Linkedin.create!(badge_name: "DevOps with AWS", url: "https://www.linkedin.com/learning/certificates/9e9c575af7d63edb9e778d6e81e4c75189d7ddd125f25ae2a1bee1868661e1bf?trk=share_certificate", skill_ids: [skill10.id])
linkedin.badge.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Linkedins/Courses/07.DevOps-with-AWS.png')), filename: 'DevOps-with-AWS.png')

linkedin = Linkedin.create!(badge_name: "Git Essential Training The Basics", url: "https://www.linkedin.com/learning/certificates/152c0024555250f1fca1b86d4098501da5f5440a147d7d3e8aa20be8e29fe66c?trk=share_certificate", skill_ids: [skill9.id])
linkedin.badge.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Linkedins/Courses/08.Git-Essential-Training-The-Basics.png')), filename: 'Git-Essential-Training-The-Basics.png')

linkedin = Linkedin.create!(badge_name: "Graphite and Grafana Visualizing Application Performance", url: "https://www.linkedin.com/learning/certificates/612f351841fee90204fd48d572bc1f4e02908d3f108c32006a307137dc6b5f37?trk=share_certificate", skill_ids: [skill10.id])
linkedin.badge.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Linkedins/Courses/09.Graphite-and-Grafana-Visualizing-Application-Performance.png')), filename: 'Graphite-and-Grafana-Visualizing-Application-Performance.png')

linkedin = Linkedin.create!(badge_name: "HTML Essential Training", url: "https://www.linkedin.com/learning/certificates/77bd7196bdc1d8bbfd42e62f34c490540a3bede735bdefffcc4f66d0591f010f?trk=share_certificate", skill_ids: [skill3.id])
linkedin.badge.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Linkedins/Courses/10.HTML-Essential-Training.png')), filename: 'HTML-Essential-Training.png')

linkedin = Linkedin.create!(badge_name: "Illustrator for Web Design", url: "https://www.linkedin.com/learning/certificates/7096b36bda7c01567213aa59b81c64604e2444da5000967238693fd095bc4d1c?trk=share_certificate", skill_ids: [skill4.id])
linkedin.badge.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Linkedins/Courses/11.Illustrator-for-Web-Design.png')), filename: 'Illustrator-for-Web-Design.png')

linkedin = Linkedin.create!(badge_name: "InDesign for UX Design", url: "https://www.linkedin.com/learning/certificates/90a9f7bb413fbec61a576c82b572bc240450130c53709398efb29eb363b54c18?trk=share_certificate", skill_ids: [skill4.id])
linkedin.badge.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Linkedins/Courses/12.InDesign-for-UX-Design.png')), filename: 'InDesign-for-UX-Design.png')

linkedin = Linkedin.create!(badge_name: "Introduction to Linux", url: "https://www.linkedin.com/learning/certificates/760f813cc40164f5306df5ea0cd8dbd4de725ddf5575f22f89993fff0b6f6cdf?trk=share_certificate", skill_ids: [skill8.id])
linkedin.badge.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Linkedins/Courses/13.Introduction-to-Linux.png')), filename: 'Introduction-to-Linux.png')

linkedin = Linkedin.create!(badge_name: "Introduction to Web Design and Development 2014", url: "https://www.linkedin.com/learning/certificates/bebdd50514e245661f58c997284dd8ac4a33f31ae60b7dee315a6a1ad40daaf6?trk=share_certificate", skill_ids: [skill3.id, skill4.id])
linkedin.badge.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Linkedins/Courses/14.Introduction-to-Web-Design-and-Development-2014.png')), filename: 'Introduction-to-Web-Design-and-Development-2014.png')

linkedin = Linkedin.create!(badge_name: "JavaScript Enhancing the DOM", url: "https://www.linkedin.com/learning/certificates/84078e5c838bede880397a8a0fb1914fd78872d30aecdc481f6508e0a961f381?trk=share_certificate", skill_ids: [skill5.id])
linkedin.badge.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Linkedins/Courses/15.JavaScript-Enhancing-the-DOM.png')), filename: 'JavaScript-Enhancing-the-DOM.png')

linkedin = Linkedin.create!(badge_name: "JavaScript Functions", url: "https://www.linkedin.com/learning/certificates/4518f56246bf4f8762b22543809690e5c3b4bcc7530f32b6f5c186d7f8374e94?trk=share_certificate", skill_ids: [skill5.id])
linkedin.badge.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Linkedins/Courses/16.JavaScript-Functions.png')), filename: 'JavaScript-Functions.png')

linkedin = Linkedin.create!(badge_name: "Learning Bash Scripting", url: "https://www.linkedin.com/learning/certificates/074bd60281e970bf9b0388ce6bfaac51dfda265a8332cb932fbd055f4b59d797?trk=share_certificate", skill_ids: [skill8.id])
linkedin.badge.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Linkedins/Courses/17.Learning-Bash-Scripting.png')), filename: 'Learning-Bash-Scripting.png')

linkedin = Linkedin.create!(badge_name: "Learning Chef", url: "https://www.linkedin.com/learning/certificates/1b7008cce88238dd39769fee498bfec5122d4f6ef160c7bd4904ecb06145a063?trk=share_certificate", skill_ids: [skill10.id])
linkedin.badge.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Linkedins/Courses/18.Learning-Chef.png')), filename: 'Learning-Chef.png')

linkedin = Linkedin.create!(badge_name: "Learning CoffeeScript", url: "https://www.linkedin.com/learning/certificates/75c2f2b2fb245345b7d2dae83a2babe5bc0d2df58e25c5efc446997da3d6cf96?trk=share_certificate", skill_ids: [skill5.id])
linkedin.badge.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Linkedins/Courses/19.Learning-CoffeeScript.png')), filename: 'Learning-CoffeeScript.png')

linkedin = Linkedin.create!(badge_name: "Learning Linux Command Line 2018", url: "https://www.linkedin.com/learning/certificates/4fc99d35edaf4fd36980f5491f44d360da4648b2b54a7c451bfb5da4e5d0d8c7?trk=share_certificate", skill_ids: [skill8.id])
linkedin.badge.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Linkedins/Courses/20.Learning-Linux-Command-Line-2018.png')), filename: 'Learning-Linux-Command-Line-2018.png')

linkedin = Linkedin.create!(badge_name: "Learning Responsive Web Design in the Browser", url: "https://www.linkedin.com/learning/certificates/d9f4baa0196f2af0bc057de4f7dfe839bef43fd3b6b544796183d17bb5f9d6eb?trk=share_certificate", skill_ids: [skill3.id, skill4.id])
linkedin.badge.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Linkedins/Courses/21.Learning-Responsive-Web-Design-in-the-Browser.png')), filename: 'Learning-Responsive-Web-Design-in-the-Browser.png')

linkedin = Linkedin.create!(badge_name: "Learning Sinatra", url: "https://www.linkedin.com/learning/certificates/ab46adeee9cf484368613a306d2004e8ecea5e948a8e4b808958333d7dbe94e3?trk=share_certificate", skill_ids: [skill2.id])
linkedin.badge.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Linkedins/Courses/22.Learning-Sinatra.png')), filename: 'Learning-Sinatra.png')

linkedin = Linkedin.create!(badge_name: "Learning TypeScript", url: "https://www.linkedin.com/learning/certificates/f0263f02ec62803e9df2c70089e5e7302badb5a857894ea4bd5432cb9510475b?trk=share_certificate", skill_ids: [skill5.id])
linkedin.badge.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Linkedins/Courses/23.Learning-TypeScript.png')), filename: 'Learning-TypeScript.png')

linkedin = Linkedin.create!(badge_name: "Mapping the Modern Web Design Process", url: "https://www.linkedin.com/learning/certificates/4e202aad24f6aee51ea3401bcfec416df59640daf380c8d10e28a8c62eeae219?trk=share_certificate", skill_ids: [skill3.id, skill4.id])
linkedin.badge.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Linkedins/Courses/24.Mapping-the-Modern-Web-Design-Process.png')), filename: 'Mapping-the-Modern-Web-Design-Process.png')

linkedin = Linkedin.create!(badge_name: "Microservices Foundations", url: "https://www.linkedin.com/learning/certificates/d1bb5a90e09c191de04f0f9be3d5bf44d81d513047118896ce1833bf1c6909e6?trk=share_certificate", skill_ids: [skill1.id])
linkedin.badge.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Linkedins/Courses/25.Microservices-Foundations.png')), filename: 'Microservices-Foundations.png')

linkedin = Linkedin.create!(badge_name: "Photoshop for Web Design", url: "https://www.linkedin.com/learning/certificates/b0bc036040788ec5251c404cc9d4fadd1f3604e0f85d96dbf712bd4c002afb29?trk=share_certificate", skill_ids: [skill4.id])
linkedin.badge.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Linkedins/Courses/26.Photoshop-for-Web-Design.png')), filename: 'Photoshop-for-Web-Design.png')

linkedin = Linkedin.create!(badge_name: "Responsive Images", url: "https://www.linkedin.com/learning/certificates/3a47e2d561f95eabf9ee739901ffe9b2174a2acfc97183ec6497e19312d119cc?trk=share_certificate", skill_ids: [skill4.id])
linkedin.badge.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Linkedins/Courses/27.Responsive-Images.png')), filename: 'Responsive-Images.png')

linkedin = Linkedin.create!(badge_name: "Responsive Typography Techniques", url: "https://www.linkedin.com/learning/certificates/0f783cdf6f6ac46e35b8c9fea373befd22baca39352554fb3b4aa65bcabbc072?trk=share_certificate", skill_ids: [skill4.id])
linkedin.badge.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Linkedins/Courses/28.Responsive-Typography-Techniques.png')), filename: 'Responsive-Typography-Techniques.png')

linkedin = Linkedin.create!(badge_name: "Ruby Essential Training Part 1 The Basics 2018", url: "https://www.linkedin.com/learning/certificates/01a2ef419c732c5843c24f76bb0d7a043db214fca5c2e34d306b871d7af65d56?trk=share_certificate", skill_ids: [skill1.id])
linkedin.badge.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Linkedins/Courses/29.Ruby-Essential-Training-Part-1-The-Basics-2018.png')), filename: 'Ruby-Essential-Training-Part-1-The-Basics-2018.png')

linkedin = Linkedin.create!(badge_name: "Ruby on Rails 5 Essential Training", url: "https://www.linkedin.com/learning/certificates/f2ecffe2593ce328fda195e9248a80f9d0fb5bc7f04a8ef049bf0621057e9ed6?trk=share_certificate", skill_ids: [skill2.id])
linkedin.badge.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Linkedins/Courses/30.Ruby-on-Rails-5-Essential-Training.png')), filename: 'Ruby-on-Rails-5-Essential-Training.png')

linkedin = Linkedin.create!(badge_name: "Ruby on Rails Get More From ActiveRecord", url: "https://www.linkedin.com/learning/certificates/4207dcade373a768fe9facb69c0468eb2ebe2ece800e02edccfdcca96cb628f1?trk=share_certificate", skill_ids: [skill2.id])
linkedin.badge.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Linkedins/Courses/31.Ruby-on-Rails-Get-More-From-ActiveRecord.png')), filename: 'Ruby-on-Rails-Get-More-From-ActiveRecord.png')

linkedin = Linkedin.create!(badge_name: "Ruby Testing with RSpec", url: "https://www.linkedin.com/learning/certificates/322e6af742ceb60b003d665f3cf464a1b4fe709cc3dddb05f89cf0b7d335cdbe?trk=share_certificate", skill_ids: [skill1.id])
linkedin.badge.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Linkedins/Courses/32.Ruby-Testing-with-RSpec.png')), filename: 'Ruby-Testing-with-RSpec.png')

linkedin = Linkedin.create!(badge_name: "Sass Essential Training 2015", url: "https://www.linkedin.com/learning/certificates/4cc8abbba0d7808a3eba35d5b3a77a0962e21baa3f1da79968782938180e9874?trk=share_certificate", skill_ids: [skill4.id])
linkedin.badge.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Linkedins/Courses/33.Sass-Essential-Training-2015.png')), filename: 'Sass-Essential-Training-2015.png')

linkedin = Linkedin.create!(badge_name: "Shopify Essential Training", url: "https://www.linkedin.com/learning/certificates/da17f73e7bd148d43aa47a296221f2d7956b8d75750a7dacc3206358369e1265?trk=share_certificate", skill_ids: [skill1.id])
linkedin.badge.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Linkedins/Courses/34.Shopify-Essential-Training.png')), filename: 'Shopify-Essential-Training.png')

linkedin = Linkedin.create!(badge_name: "Software Development Life Cycle SDLC", url: "https://www.linkedin.com/learning/certificates/ef34b23a8c0aaa711025c0db5387227fda6e2951d506680ee718a440963c4590?trk=share_certificate", skill_ids: [skill10.id])
linkedin.badge.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Linkedins/Courses/35.Software-Development-Life-Cycle-SDLC.png')), filename: 'Software-Development-Life-Cycle-SDLC.png')

linkedin = Linkedin.create!(badge_name: "User Experience for Web Design 2015", url: "https://www.linkedin.com/learning/certificates/2d05fc598d0deda770f8cabcea5836cf5106f32bd668cce2a3da6099eef89e3d?trk=share_certificate", skill_ids: [skill3.id, skill4.id])
linkedin.badge.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Linkedins/Courses/36.User-Experience-for-Web-Design-2015.png')), filename: 'User-Experience-for-Web-Design-2015.png')

#Hackerrank
HackerRank.create!(cerificate_name: "Problem Solving", is_badge: true, url: "https://www.hackerrank.com/vlad_rogna", badgeorcertificate: "<svg viewBox=\"0 0 91.66667 100\" class=\"hexagon\"><g><defs><linearGradient id=\"badge-bronze-gradient\" x1=\"52.5\" y1=\"2.5\" x2=\"52.5\" y2=\"102.5\" gradientUnits=\"userSpaceOnUse\"><stop offset=\"0\" stop-color=\"#ffc5ab\"></stop><stop offset=\"1\" stop-color=\"#ffa38a\"></stop></linearGradient></defs><path fill=\"url(#badge-bronze-gradient)\" d=\"M98.28277,47.36h0c-.18459-9.382-.87983-17.797-2.0917-19.8595-1.02214-1.742-6.1721-5.43476-12.6195-9.45853L66.3804,8.23311C59.94162,4.89541,54.4699,2.5,52.49778,2.5c-2.42987,0-10.17687,3.63131-18.49789,8.18049-6.30411,3.44623-12.9328,7.41557-17.83631,10.74623-3.85037,2.61278-6.63864,4.828-7.35893,6.07393-.73574,1.27216-1.28014,4.91124-1.63613,9.67794l-.00014-.00008c-.45195,6.03951-.599,13.88935-.43933,21.10033.20233,9.11082.89243,17.18541,2.07561,19.22049C11.66541,82.42328,46.78277,102.5,52.49778,102.5c2.374,0,9.82245-3.47115,17.92388-7.87722,6.4-3.48081,13.19866-7.5418,18.23618-10.9459l-.00046-.00026c3.93694-2.6605,6.80064-4.91944,7.53385-6.17728.72907-1.2482,1.27024-4.80557,1.62881-9.48065l-.00014-.00008C98.269,62.13222,98.42408,54.47227,98.28277,47.36Z\" transform=\"translate(-6.66667 -2.5)\"></path></g><image class=\"badge-icon\" xlink:href=\"https://hrcdn.net/community-frontend/assets/badges/problem-solving-ecaf59a612.svg\" x=\"50%\" y=\"22\" height=\"27\" width=\"27\" transform=\"translate(-13.5, 0)\"></image><text class=\"badge-title\" x=\"50%\" y=\"65.5\" font-size=\"10\">Problem Solving</text><g class=\"star-section\" transform=\"translate(-8, 0)\"><svg x=\"50%\" y=\"71\" height=\"10\"><svg class=\"badge-star\" viewBox=\"0 0 6.54904 6.25825\" width=\"7\" x=\"0\"><path class=\"star\" d=\"M55.51425,77.01983l-1.89417-.275-.84833-1.7175a.299.299,0,0,0-.27167-.16917.3245.3245,0,0,0-.2725.16917l-.305.61833-.5425,1.09916-.51417.075-1.38.2a.30333.30333,0,0,0-.18583.10083.33411.33411,0,0,0-.045.06833.35631.35631,0,0,0-.02417.07667.34087.34087,0,0,0-.005.04083.3038.3038,0,0,0,.02417.13417.33341.33341,0,0,0,.06667.0975l1.37167,1.33667-.2875,1.67167-.03667.21417c-.00167.01-.00167.02-.0025.02917l-.00167.0175a.26453.26453,0,0,0,.00167.04417.30489.30489,0,0,0,.44417.22917l1.69417-.89,1.69416.89a.30352.30352,0,0,0,.44084-.32L54.31175,78.874l1.37083-1.33667a.30339.30339,0,0,0-.16833-.5175\" transform=\"translate(-49.22548 -74.85817)\"></path></svg><svg class=\"badge-star\" viewBox=\"0 0 6.54904 6.25825\" width=\"7\" x=\"9\"><path class=\"star\" d=\"M55.51425,77.01983l-1.89417-.275-.84833-1.7175a.299.299,0,0,0-.27167-.16917.3245.3245,0,0,0-.2725.16917l-.305.61833-.5425,1.09916-.51417.075-1.38.2a.30333.30333,0,0,0-.18583.10083.33411.33411,0,0,0-.045.06833.35631.35631,0,0,0-.02417.07667.34087.34087,0,0,0-.005.04083.3038.3038,0,0,0,.02417.13417.33341.33341,0,0,0,.06667.0975l1.37167,1.33667-.2875,1.67167-.03667.21417c-.00167.01-.00167.02-.0025.02917l-.00167.0175a.26453.26453,0,0,0,.00167.04417.30489.30489,0,0,0,.44417.22917l1.69417-.89,1.69416.89a.30352.30352,0,0,0,.44084-.32L54.31175,78.874l1.37083-1.33667a.30339.30339,0,0,0-.16833-.5175\" transform=\"translate(-49.22548 -74.85817)\"></path></svg></svg></g></svg>", skill_ids: [skill1.id])

HackerRank.create!(cerificate_name: "10 Days of JS", is_badge: true, url: "https://www.hackerrank.com/vlad_rogna", badgeorcertificate: "<svg viewBox=\"0 0 91.66667 100\" class=\"hexagon\"><g><defs><linearGradient id=\"badge-gold-gradient\" x1=\"52.5\" y1=\"2.5\" x2=\"52.5\" y2=\"102.5\" gradientUnits=\"userSpaceOnUse\"><stop offset=\"0\" stop-color=\"#f9d641\"></stop><stop offset=\"1\" stop-color=\"#f8bc36\"></stop></linearGradient></defs><path fill=\"url(#badge-gold-gradient)\" d=\"M98.28277,47.36h0c-.18459-9.382-.87983-17.797-2.0917-19.8595-1.02214-1.742-6.1721-5.43476-12.6195-9.45853L66.3804,8.23311C59.94162,4.89541,54.4699,2.5,52.49778,2.5c-2.42987,0-10.17687,3.63131-18.49789,8.18049-6.30411,3.44623-12.9328,7.41557-17.83631,10.74623-3.85037,2.61278-6.63864,4.828-7.35893,6.07393-.73574,1.27216-1.28014,4.91124-1.63613,9.67794l-.00014-.00008c-.45195,6.03951-.599,13.88935-.43933,21.10033.20233,9.11082.89243,17.18541,2.07561,19.22049C11.66541,82.42328,46.78277,102.5,52.49778,102.5c2.374,0,9.82245-3.47115,17.92388-7.87722,6.4-3.48081,13.19866-7.5418,18.23618-10.9459l-.00046-.00026c3.93694-2.6605,6.80064-4.91944,7.53385-6.17728.72907-1.2482,1.27024-4.80557,1.62881-9.48065l-.00014-.00008C98.269,62.13222,98.42408,54.47227,98.28277,47.36Z\" transform=\"translate(-6.66667 -2.5)\"></path></g><image class=\"badge-icon\" xlink:href=\"https://hrcdn.net/community-frontend/assets/badges/10-days-of-javascript-94ff22d1c9.svg\" x=\"50%\" y=\"22\" height=\"27\" width=\"27\" transform=\"translate(-13.5, 0)\"></image><text class=\"badge-title\" x=\"50%\" y=\"65.5\" font-size=\"10\">Days of JS</text><g class=\"star-section\" transform=\"translate(-21.5, 0)\"><svg x=\"50%\" y=\"71\" height=\"10\"><svg class=\"badge-star\" viewBox=\"0 0 6.54904 6.25825\" width=\"7\" x=\"0\"><path class=\"star\" d=\"M55.51425,77.01983l-1.89417-.275-.84833-1.7175a.299.299,0,0,0-.27167-.16917.3245.3245,0,0,0-.2725.16917l-.305.61833-.5425,1.09916-.51417.075-1.38.2a.30333.30333,0,0,0-.18583.10083.33411.33411,0,0,0-.045.06833.35631.35631,0,0,0-.02417.07667.34087.34087,0,0,0-.005.04083.3038.3038,0,0,0,.02417.13417.33341.33341,0,0,0,.06667.0975l1.37167,1.33667-.2875,1.67167-.03667.21417c-.00167.01-.00167.02-.0025.02917l-.00167.0175a.26453.26453,0,0,0,.00167.04417.30489.30489,0,0,0,.44417.22917l1.69417-.89,1.69416.89a.30352.30352,0,0,0,.44084-.32L54.31175,78.874l1.37083-1.33667a.30339.30339,0,0,0-.16833-.5175\" transform=\"translate(-49.22548 -74.85817)\"></path></svg><svg class=\"badge-star\" viewBox=\"0 0 6.54904 6.25825\" width=\"7\" x=\"9\"><path class=\"star\" d=\"M55.51425,77.01983l-1.89417-.275-.84833-1.7175a.299.299,0,0,0-.27167-.16917.3245.3245,0,0,0-.2725.16917l-.305.61833-.5425,1.09916-.51417.075-1.38.2a.30333.30333,0,0,0-.18583.10083.33411.33411,0,0,0-.045.06833.35631.35631,0,0,0-.02417.07667.34087.34087,0,0,0-.005.04083.3038.3038,0,0,0,.02417.13417.33341.33341,0,0,0,.06667.0975l1.37167,1.33667-.2875,1.67167-.03667.21417c-.00167.01-.00167.02-.0025.02917l-.00167.0175a.26453.26453,0,0,0,.00167.04417.30489.30489,0,0,0,.44417.22917l1.69417-.89,1.69416.89a.30352.30352,0,0,0,.44084-.32L54.31175,78.874l1.37083-1.33667a.30339.30339,0,0,0-.16833-.5175\" transform=\"translate(-49.22548 -74.85817)\"></path></svg><svg class=\"badge-star\" viewBox=\"0 0 6.54904 6.25825\" width=\"7\" x=\"18\"><path class=\"star\" d=\"M55.51425,77.01983l-1.89417-.275-.84833-1.7175a.299.299,0,0,0-.27167-.16917.3245.3245,0,0,0-.2725.16917l-.305.61833-.5425,1.09916-.51417.075-1.38.2a.30333.30333,0,0,0-.18583.10083.33411.33411,0,0,0-.045.06833.35631.35631,0,0,0-.02417.07667.34087.34087,0,0,0-.005.04083.3038.3038,0,0,0,.02417.13417.33341.33341,0,0,0,.06667.0975l1.37167,1.33667-.2875,1.67167-.03667.21417c-.00167.01-.00167.02-.0025.02917l-.00167.0175a.26453.26453,0,0,0,.00167.04417.30489.30489,0,0,0,.44417.22917l1.69417-.89,1.69416.89a.30352.30352,0,0,0,.44084-.32L54.31175,78.874l1.37083-1.33667a.30339.30339,0,0,0-.16833-.5175\" transform=\"translate(-49.22548 -74.85817)\"></path></svg><svg class=\"badge-star\" viewBox=\"0 0 6.54904 6.25825\" width=\"7\" x=\"27\"><path class=\"star\" d=\"M55.51425,77.01983l-1.89417-.275-.84833-1.7175a.299.299,0,0,0-.27167-.16917.3245.3245,0,0,0-.2725.16917l-.305.61833-.5425,1.09916-.51417.075-1.38.2a.30333.30333,0,0,0-.18583.10083.33411.33411,0,0,0-.045.06833.35631.35631,0,0,0-.02417.07667.34087.34087,0,0,0-.005.04083.3038.3038,0,0,0,.02417.13417.33341.33341,0,0,0,.06667.0975l1.37167,1.33667-.2875,1.67167-.03667.21417c-.00167.01-.00167.02-.0025.02917l-.00167.0175a.26453.26453,0,0,0,.00167.04417.30489.30489,0,0,0,.44417.22917l1.69417-.89,1.69416.89a.30352.30352,0,0,0,.44084-.32L54.31175,78.874l1.37083-1.33667a.30339.30339,0,0,0-.16833-.5175\" transform=\"translate(-49.22548 -74.85817)\"></path></svg><svg class=\"badge-star\" viewBox=\"0 0 6.54904 6.25825\" width=\"7\" x=\"36\"><path class=\"star\" d=\"M55.51425,77.01983l-1.89417-.275-.84833-1.7175a.299.299,0,0,0-.27167-.16917.3245.3245,0,0,0-.2725.16917l-.305.61833-.5425,1.09916-.51417.075-1.38.2a.30333.30333,0,0,0-.18583.10083.33411.33411,0,0,0-.045.06833.35631.35631,0,0,0-.02417.07667.34087.34087,0,0,0-.005.04083.3038.3038,0,0,0,.02417.13417.33341.33341,0,0,0,.06667.0975l1.37167,1.33667-.2875,1.67167-.03667.21417c-.00167.01-.00167.02-.0025.02917l-.00167.0175a.26453.26453,0,0,0,.00167.04417.30489.30489,0,0,0,.44417.22917l1.69417-.89,1.69416.89a.30352.30352,0,0,0,.44084-.32L54.31175,78.874l1.37083-1.33667a.30339.30339,0,0,0-.16833-.5175\" transform=\"translate(-49.22548 -74.85817)\"></path></svg></svg></g></svg>", skill_ids: [skill5.id])

HackerRank.create!(cerificate_name: "30 Days of Code", is_badge: true, url: "https://www.hackerrank.com/vlad_rogna", badgeorcertificate: "<svg viewBox=\"0 0 91.66667 100\" class=\"hexagon\"><g><defs><linearGradient id=\"badge-bronze-gradient\" x1=\"52.5\" y1=\"2.5\" x2=\"52.5\" y2=\"102.5\" gradientUnits=\"userSpaceOnUse\"><stop offset=\"0\" stop-color=\"#ffc5ab\"></stop><stop offset=\"1\" stop-color=\"#ffa38a\"></stop></linearGradient></defs><path fill=\"url(#badge-bronze-gradient)\" d=\"M98.28277,47.36h0c-.18459-9.382-.87983-17.797-2.0917-19.8595-1.02214-1.742-6.1721-5.43476-12.6195-9.45853L66.3804,8.23311C59.94162,4.89541,54.4699,2.5,52.49778,2.5c-2.42987,0-10.17687,3.63131-18.49789,8.18049-6.30411,3.44623-12.9328,7.41557-17.83631,10.74623-3.85037,2.61278-6.63864,4.828-7.35893,6.07393-.73574,1.27216-1.28014,4.91124-1.63613,9.67794l-.00014-.00008c-.45195,6.03951-.599,13.88935-.43933,21.10033.20233,9.11082.89243,17.18541,2.07561,19.22049C11.66541,82.42328,46.78277,102.5,52.49778,102.5c2.374,0,9.82245-3.47115,17.92388-7.87722,6.4-3.48081,13.19866-7.5418,18.23618-10.9459l-.00046-.00026c3.93694-2.6605,6.80064-4.91944,7.53385-6.17728.72907-1.2482,1.27024-4.80557,1.62881-9.48065l-.00014-.00008C98.269,62.13222,98.42408,54.47227,98.28277,47.36Z\" transform=\"translate(-6.66667 -2.5)\"></path></g><image class=\"badge-icon\" xlink:href=\"https://hrcdn.net/community-frontend/assets/badges/30-days-of-code-a772ae4c2f.svg\" x=\"50%\" y=\"22\" height=\"27\" width=\"27\" transform=\"translate(-13.5, 0)\"></image><text class=\"badge-title\" x=\"50%\" y=\"65.5\" font-size=\"10\">Days of Code</text><g class=\"star-section\" transform=\"translate(-3.5, 0)\"><svg x=\"50%\" y=\"71\" height=\"10\"><svg class=\"badge-star\" viewBox=\"0 0 6.54904 6.25825\" width=\"7\" x=\"0\"><path class=\"star\" d=\"M55.51425,77.01983l-1.89417-.275-.84833-1.7175a.299.299,0,0,0-.27167-.16917.3245.3245,0,0,0-.2725.16917l-.305.61833-.5425,1.09916-.51417.075-1.38.2a.30333.30333,0,0,0-.18583.10083.33411.33411,0,0,0-.045.06833.35631.35631,0,0,0-.02417.07667.34087.34087,0,0,0-.005.04083.3038.3038,0,0,0,.02417.13417.33341.33341,0,0,0,.06667.0975l1.37167,1.33667-.2875,1.67167-.03667.21417c-.00167.01-.00167.02-.0025.02917l-.00167.0175a.26453.26453,0,0,0,.00167.04417.30489.30489,0,0,0,.44417.22917l1.69417-.89,1.69416.89a.30352.30352,0,0,0,.44084-.32L54.31175,78.874l1.37083-1.33667a.30339.30339,0,0,0-.16833-.5175\" transform=\"translate(-49.22548 -74.85817)\"></path></svg></svg></g></svg>", skill_ids: [skill1.id])

HackerRank.create!(cerificate_name: "Ruby", is_badge: true, url: "https://www.hackerrank.com/vlad_rogna", badgeorcertificate: "<svg viewBox=\"0 0 91.66667 100\" class=\"hexagon\"><g><defs><linearGradient id=\"badge-gold-gradient\" x1=\"52.5\" y1=\"2.5\" x2=\"52.5\" y2=\"102.5\" gradientUnits=\"userSpaceOnUse\"><stop offset=\"0\" stop-color=\"#f9d641\"></stop><stop offset=\"1\" stop-color=\"#f8bc36\"></stop></linearGradient></defs><path fill=\"url(#badge-gold-gradient)\" d=\"M98.28277,47.36h0c-.18459-9.382-.87983-17.797-2.0917-19.8595-1.02214-1.742-6.1721-5.43476-12.6195-9.45853L66.3804,8.23311C59.94162,4.89541,54.4699,2.5,52.49778,2.5c-2.42987,0-10.17687,3.63131-18.49789,8.18049-6.30411,3.44623-12.9328,7.41557-17.83631,10.74623-3.85037,2.61278-6.63864,4.828-7.35893,6.07393-.73574,1.27216-1.28014,4.91124-1.63613,9.67794l-.00014-.00008c-.45195,6.03951-.599,13.88935-.43933,21.10033.20233,9.11082.89243,17.18541,2.07561,19.22049C11.66541,82.42328,46.78277,102.5,52.49778,102.5c2.374,0,9.82245-3.47115,17.92388-7.87722,6.4-3.48081,13.19866-7.5418,18.23618-10.9459l-.00046-.00026c3.93694-2.6605,6.80064-4.91944,7.53385-6.17728.72907-1.2482,1.27024-4.80557,1.62881-9.48065l-.00014-.00008C98.269,62.13222,98.42408,54.47227,98.28277,47.36Z\" transform=\"translate(-6.66667 -2.5)\"></path></g><image class=\"badge-icon\" xlink:href=\"https://hrcdn.net/community-frontend/assets/badges/ruby-b2c8eababe.svg\" x=\"50%\" y=\"22\" height=\"27\" width=\"27\" transform=\"translate(-13.5, 0)\"></image><text class=\"badge-title\" x=\"50%\" y=\"65.5\" font-size=\"10\">Ruby</text><g class=\"star-section\" transform=\"translate(-21.5, 0)\"><svg x=\"50%\" y=\"71\" height=\"10\"><svg class=\"badge-star\" viewBox=\"0 0 6.54904 6.25825\" width=\"7\" x=\"0\"><path class=\"star\" d=\"M55.51425,77.01983l-1.89417-.275-.84833-1.7175a.299.299,0,0,0-.27167-.16917.3245.3245,0,0,0-.2725.16917l-.305.61833-.5425,1.09916-.51417.075-1.38.2a.30333.30333,0,0,0-.18583.10083.33411.33411,0,0,0-.045.06833.35631.35631,0,0,0-.02417.07667.34087.34087,0,0,0-.005.04083.3038.3038,0,0,0,.02417.13417.33341.33341,0,0,0,.06667.0975l1.37167,1.33667-.2875,1.67167-.03667.21417c-.00167.01-.00167.02-.0025.02917l-.00167.0175a.26453.26453,0,0,0,.00167.04417.30489.30489,0,0,0,.44417.22917l1.69417-.89,1.69416.89a.30352.30352,0,0,0,.44084-.32L54.31175,78.874l1.37083-1.33667a.30339.30339,0,0,0-.16833-.5175\" transform=\"translate(-49.22548 -74.85817)\"></path></svg><svg class=\"badge-star\" viewBox=\"0 0 6.54904 6.25825\" width=\"7\" x=\"9\"><path class=\"star\" d=\"M55.51425,77.01983l-1.89417-.275-.84833-1.7175a.299.299,0,0,0-.27167-.16917.3245.3245,0,0,0-.2725.16917l-.305.61833-.5425,1.09916-.51417.075-1.38.2a.30333.30333,0,0,0-.18583.10083.33411.33411,0,0,0-.045.06833.35631.35631,0,0,0-.02417.07667.34087.34087,0,0,0-.005.04083.3038.3038,0,0,0,.02417.13417.33341.33341,0,0,0,.06667.0975l1.37167,1.33667-.2875,1.67167-.03667.21417c-.00167.01-.00167.02-.0025.02917l-.00167.0175a.26453.26453,0,0,0,.00167.04417.30489.30489,0,0,0,.44417.22917l1.69417-.89,1.69416.89a.30352.30352,0,0,0,.44084-.32L54.31175,78.874l1.37083-1.33667a.30339.30339,0,0,0-.16833-.5175\" transform=\"translate(-49.22548 -74.85817)\"></path></svg><svg class=\"badge-star\" viewBox=\"0 0 6.54904 6.25825\" width=\"7\" x=\"18\"><path class=\"star\" d=\"M55.51425,77.01983l-1.89417-.275-.84833-1.7175a.299.299,0,0,0-.27167-.16917.3245.3245,0,0,0-.2725.16917l-.305.61833-.5425,1.09916-.51417.075-1.38.2a.30333.30333,0,0,0-.18583.10083.33411.33411,0,0,0-.045.06833.35631.35631,0,0,0-.02417.07667.34087.34087,0,0,0-.005.04083.3038.3038,0,0,0,.02417.13417.33341.33341,0,0,0,.06667.0975l1.37167,1.33667-.2875,1.67167-.03667.21417c-.00167.01-.00167.02-.0025.02917l-.00167.0175a.26453.26453,0,0,0,.00167.04417.30489.30489,0,0,0,.44417.22917l1.69417-.89,1.69416.89a.30352.30352,0,0,0,.44084-.32L54.31175,78.874l1.37083-1.33667a.30339.30339,0,0,0-.16833-.5175\" transform=\"translate(-49.22548 -74.85817)\"></path></svg><svg class=\"badge-star\" viewBox=\"0 0 6.54904 6.25825\" width=\"7\" x=\"27\"><path class=\"star\" d=\"M55.51425,77.01983l-1.89417-.275-.84833-1.7175a.299.299,0,0,0-.27167-.16917.3245.3245,0,0,0-.2725.16917l-.305.61833-.5425,1.09916-.51417.075-1.38.2a.30333.30333,0,0,0-.18583.10083.33411.33411,0,0,0-.045.06833.35631.35631,0,0,0-.02417.07667.34087.34087,0,0,0-.005.04083.3038.3038,0,0,0,.02417.13417.33341.33341,0,0,0,.06667.0975l1.37167,1.33667-.2875,1.67167-.03667.21417c-.00167.01-.00167.02-.0025.02917l-.00167.0175a.26453.26453,0,0,0,.00167.04417.30489.30489,0,0,0,.44417.22917l1.69417-.89,1.69416.89a.30352.30352,0,0,0,.44084-.32L54.31175,78.874l1.37083-1.33667a.30339.30339,0,0,0-.16833-.5175\" transform=\"translate(-49.22548 -74.85817)\"></path></svg><svg class=\"badge-star\" viewBox=\"0 0 6.54904 6.25825\" width=\"7\" x=\"36\"><path class=\"star\" d=\"M55.51425,77.01983l-1.89417-.275-.84833-1.7175a.299.299,0,0,0-.27167-.16917.3245.3245,0,0,0-.2725.16917l-.305.61833-.5425,1.09916-.51417.075-1.38.2a.30333.30333,0,0,0-.18583.10083.33411.33411,0,0,0-.045.06833.35631.35631,0,0,0-.02417.07667.34087.34087,0,0,0-.005.04083.3038.3038,0,0,0,.02417.13417.33341.33341,0,0,0,.06667.0975l1.37167,1.33667-.2875,1.67167-.03667.21417c-.00167.01-.00167.02-.0025.02917l-.00167.0175a.26453.26453,0,0,0,.00167.04417.30489.30489,0,0,0,.44417.22917l1.69417-.89,1.69416.89a.30352.30352,0,0,0,.44084-.32L54.31175,78.874l1.37083-1.33667a.30339.30339,0,0,0-.16833-.5175\" transform=\"translate(-49.22548 -74.85817)\"></path></svg></svg></g></svg>", skill_ids: [skill1.id])

#FreeCodeCamp
freecodecamp1 = FreeCodeCamp.create!(cerificate_name: "Responsive Web Design", url: "https://www.freecodecamp.org/certification/alexrogna/responsive-web-design", skill_ids: [skill3.id, skill4.id])
freecodecamp1.certificate.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/FreeCodeCamps/Responsive-Web-Design.png')), filename: 'Responsive-Web-Design.png')

freecodecamp2 = FreeCodeCamp.create!(cerificate_name: "JavaScript Algorithms and Data Structures", url: "https://www.freecodecamp.org/certification/alexrogna/javascript-algorithms-and-data-structures", skill_ids: [skill5.id])
freecodecamp2.certificate.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/FreeCodeCamps/Javascript.png')), filename: 'Javascript.png')

freecodecamp3 = FreeCodeCamp.create!(cerificate_name: "DevOps Purple Beard", url: "", skill_ids: [skill10.id])
freecodecamp3.certificate.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/FreeCodeCamps/DevOps-PurpleBeard.png')), filename: 'DevOps-PurpleBeard.png')

#Tags
tag1 = Tag.create!(name: "Agency")
tag2 = Tag.create!(name: "Amazon S3")
tag3 = Tag.create!(name: "Blog")
tag4 = Tag.create!(name: "Css")
tag5 = Tag.create!(name: "Docker", skill_ids: [skill10.id])
tag6 = Tag.create!(name: "Ecommerce")
tag7 = Tag.create!(name: "Git")
tag8 = Tag.create!(name: "Google Maps")
tag9 = Tag.create!(name: "Html")
tag10 = Tag.create!(name: "I18n")
tag11 = Tag.create!(name: "Javascript")
tag12 = Tag.create!(name: "Linux")
tag13 = Tag.create!(name: "Logo Design")
tag14 = Tag.create!(name: "Photography Platform")
tag15 = Tag.create!(name: "PostGis", skill_ids: [skill7.id])
tag16 = Tag.create!(name: "Postgresql", skill_ids: [skill7.id])
tag17 = Tag.create!(name: "Presentation Website")
tag18 = Tag.create!(name: "Rails")
tag19 = Tag.create!(name: "React")
tag20 = Tag.create!(name: "Ruby")
tag21 = Tag.create!(name: "Social Network")
tag22 = Tag.create!(name: "VueJs", skill_ids: [skill5.id])
tag23 = Tag.create!(name: "Wordpress")
tag24 = Tag.create!(name: "Shopify")
tag25 = Tag.create!(name: "Liquid")

Project.create!(name: "Vang", tag_ids: [tag5.id, tag7.id, tag9.id, tag16.id, tag18.id, tag20.id], hidden: true, order_id: 101)
Project.create!(name: "AlexRogna", tag_ids: [tag4.id, tag5.id, tag7.id, tag9.id, tag11.id, tag12.id, tag16.id, tag18.id, tag20.id ], hidden: true, order_id: 101)
Project.create!(name: "Books website", tag_ids: [tag7.id, tag9.id, tag12.id, tag16.id, tag18.id, tag20.id], hidden: true, order_id: 101)
Project.create!(name: "First Blog", tag_ids: [tag7.id, tag16.id, tag18.id, tag20.id], hidden: true, order_id: 101)
Project.create!(name: "Second Blog", tag_ids: [tag7.id, tag16.id, tag18.id, tag20.id], hidden: true, order_id: 101)
Project.create!(name: "Third Blog", tag_ids: [tag7.id, tag12.id, tag16.id, tag18.id, tag20.id], hidden: true, order_id: 101)
Project.create!(name: "Twitter", tag_ids: [tag4.id, tag5.id, tag7.id, tag9.id, tag12.id, tag16.id, tag18.id, tag20.id], hidden: true, order_id: 101)
Project.create!(name: "Dribble", tag_ids: [tag4.id, tag5.id, tag7.id, tag9.id, tag11.id, tag12.id, tag16.id, tag18.id, tag20.id], hidden: true, order_id: 101)
Project.create!(name: "Depot", tag_ids: [tag4.id, tag5.id, tag7.id, tag9.id, tag10.id, tag11.id, tag12.id, tag16.id, tag18.id, tag19.id, tag20.id], hidden: true, order_id: 101)
Project.create!(name: "Beginning Rails 6", tag_ids: [tag4.id, tag5.id, tag7.id, tag9.id, tag11.id, tag12.id, tag16.id, tag18.id, tag20.id], hidden: true, order_id: 101)
Project.create!(name: "Tandibi", tag_ids: [tag4.id, tag5.id, tag7.id, tag8.id, tag9.id, tag10.id, tag11.id, tag15.id, tag18.id, tag20.id, tag22.id], hidden: true, order_id: 101)
# Project.create!(name: "Sempresano", tag_ids: [tag4.id, tag9.id, tag11.id, tag23.id], hidden: true, order_id: 101)
Project.create!(name: "Cufarul cu dorinte", tag_ids: [tag23.id], hidden: true, order_id: 101)
Project.create!(name: "Florarescu", tag_ids: [tag23.id], hidden: true, order_id: 101)
Project.create!(name: "PloiestiValueCenter", tag_ids: [tag23.id], hidden: true, order_id: 101)
Project.create!(name: "PloiestiRetailCenter", tag_ids: [tag23.id], hidden: true, order_id: 101)
Project.create!(name: "ArtCandle", tag_ids: [tag4.id, tag9.id], hidden: true, order_id: 101)
Project.create!(name: "Rogna", tag_ids: [tag23.id], hidden: true, order_id: 101)
Project.create!(name: "VA Photos", tag_ids: [tag4.id, tag9.id], hidden: true, order_id: 101)
Project.create!(name: "AdrianPetre.com", tag_ids: [tag4.id, tag9.id], hidden: true, order_id: 101)

project1 = Project.create!(name: "Logit Solutions", url: "https://logit-solutions.co.uk", tag_ids: [tag8.id, tag17.id, tag23.id], hidden: true, order_id: 1)
ActionText::RichText.create!(record_type: 'Project',record_id: project1.id, name: 'description', body: "This is a presentation website for Logit Solutions which provides top-grade software services and together with partners delivers solutions on the fields involving high-volumes of operations and data, such as retail, distribution and logistics, business intelligence, process optimization, scientific research, applied data science, and others.")
project1.cover_image.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Portfolio/01.Logit-Solutions/cover-image-logit-solutions.png')), filename: 'cover-image-logit-solutions.png')
project1.logo.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Portfolio/01.Logit-Solutions/logo-logit-solutions.png')), filename: 'logo-logit-solutions.png')
project1.project_logo.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Portfolio/01.Logit-Solutions/project-logo-logit-solutions.png')), filename: 'project-logo-logit-solutions.png')
project1.main_tech.attac(io: File.open(Rails.root.join('app/assets/images/for_seed/Portfolio/Main-Tech/WordPress_blue_logo.png')), filename: 'WordPress_blue_logo.png')

project2 = Project.create!(name: "Eleca", url: "https://eleca.fun", tag_ids: [tag3.id, tag13.id, tag23.id], hidden: false, order_id: 2)
ActionText::RichText.create!(record_type: 'Project',record_id: project2.id, name: 'description', body: "Eleca is a blog made for a passionate reader who wants to share with her followers the opinions about what she and her daughter read. She also inspire followers with food recipe and handmade ideas.")
project2.cover_image.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Portfolio/02.EleCa/cover-image-eleca.png')), filename: 'cover-image-eleca.png')
project2.logo.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Portfolio/02.EleCa/logo-eleca.png')), filename: 'logo-eleca.png')
project2.project_logo.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Portfolio/02.EleCa/project-logo-eleca.png')), filename: 'project-logo-eleca.png')
project2.main_tech.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Portfolio/Main-Tech/WordPress_blue_logo.png')), filename: 'WordPress_blue_logo.png')

project3 = Project.create!(name: "Online Trust Mark", url: "https://trust-mark.online", tag_ids: [tag13.id, tag17.id, tag23.id], hidden: true, order_id: 3)
ActionText::RichText.create!(record_type: 'Project',record_id: project3.id, name: 'description', body: "Undoubtedly, one of the key elements for the development of e-commerce is consumer confidence. The Online Trustmark is a self-regulatory tool designed to achieve this goal. However, as the Internet is a transnational environment, and legal regulations for consumer protection cannot be the only element that bring online business development, they are trying to actively involve the business environment in increasing confidence in the field in which it operates.")
project3.cover_image.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Portfolio/03.Online-Trust-Mark/cover-image-online-trust-mark.png')), filename: 'cover-image-online-trust-mark.png')
project3.logo.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Portfolio/03.Online-Trust-Mark/logo-online-trust-mark.png')), filename: 'logo-online-trust-mark.png')
project3.project_logo.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Portfolio/03.Online-Trust-Mark/project-logo-online-trust-mark.png')), filename: 'project-logo-online-trust-mark.png')
project3.main_tech.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Portfolio/Main-Tech/WordPress_blue_logo.png')), filename: 'WordPress_blue_logo.png')

project4 = Project.create!(name: "Lindenfeld", url: "https://lindenfeld.eu", tag_ids: [tag4.id, tag8.id, tag13.id, tag17.id, tag23.id], hidden: false, order_id: 4)
ActionText::RichText.create!(record_type: 'Project',record_id: project4.id, name: 'description', body: "Presentation website for a village in Romania that currently has no residents, the last one dying in 1998. It is a place that despite the fact that it’s in ruins , is reborn in online so that the descendants of those who lived there not to forget about it, and maybe one day to return to the place where they came from.")
project4.cover_image.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Portfolio/04.Lindenfeld/cover-image-lindenfeld.png')), filename: 'cover-image-lindenfeld.png')
project4.logo.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Portfolio/04.Lindenfeld/logo-lindenfeld.png')), filename: 'logo-lindenfeld.png')
project4.project_logo.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Portfolio/04.Lindenfeld/project-logo-lindenfeld.png')), filename: 'project-logo-lindenfeld.png')
project4.main_tech.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Portfolio/Main-Tech/WordPress_blue_logo.png')), filename: 'WordPress_blue_logo.png')

project5 = Project.create!(name: "Muzeul Petrolului", url: "https://muzeulpetrolului.ro", tag_ids: [tag8.id, tag13.id, tag17.id, tag23.id], hidden: false, order_id: 5)
ActionText::RichText.create!(record_type: 'Project',record_id: project5.id, name: 'description', body: "Presentation website for the largest crude oil museum in Eastern Europe. It is about the beginning of an era that today is almost over due to developments in technology, but which must not be forgotten because it led to our development as a species. Without the discovery of crude oil, the world today would have looked very different from what we know.")
project5.cover_image.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Portfolio/05.Muzeul-Petrolului/cover-image-muzeul-petrolului.png')), filename: 'cover-image-muzeul-petrolului.png')
project5.logo.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Portfolio/05.Muzeul-Petrolului/logo-muzeul-petrolului.png')), filename: 'logo-muzeul-petrolului.png')
project5.project_logo.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Portfolio/05.Muzeul-Petrolului/project-logo-muzeul-petrolului.png')), filename: 'project-logo-muzeul-petrolului.png')
project5.main_tech.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Portfolio/Main-Tech/WordPress_blue_logo.png')), filename: 'WordPress_blue_logo.png')

project6 = Project.create!(name: "Ewbs", url: "https://ewbs.ltd", tag_ids: [tag8.id, tag13.id, tag17.id, tag23.id], hidden: false, order_id: 6)
ActionText::RichText.create!(record_type: 'Project',record_id: project6.id, name: 'description', body: "Presentation website for EWB Solutions which supplies bellows to many industries throughout the world including: Aerospace, Vacuum Engineering, Chemical, Semiconductor, Medical, Nuclear, Pharmaceutical and Defence industries.")
project6.cover_image.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Portfolio/06.Ewbs/cover-image-ewbs.png')), filename: 'cover-image-ewbs.png')
project6.logo.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Portfolio/06.Ewbs/logo-ewbs.png')), filename: 'logo-ewbs.png')
project6.project_logo.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Portfolio/06.Ewbs/project-logo-ewbs.png')), filename: 'project-logo-ewbs.png')
project6.main_tech.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Portfolio/Main-Tech/WordPress_blue_logo.png')), filename: 'WordPress_blue_logo.png')

project7 = Project.create!(name: "Mahunt", url: "https://mahunt.autos", tag_ids: [tag8.id, tag13.id, tag17.id, tag23.id], hidden: false, order_id: 7)
ActionText::RichText.create!(record_type: 'Project',record_id: project7.id, name: 'description', body: "Presentation website for M A Hunt Ltd which remove scrap cars for the general public and private owned garages. Being approved by both the DVLA and the Environment Agency they will scrap vehicles responsibly and they will issue an official certificate of destruction.")
project7.cover_image.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Portfolio/07.Mahunt/cover-image-mahunt.png')), filename: 'cover-image-mahunt.png')
project7.logo.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Portfolio/07.Mahunt/logo-mahunt.png')), filename: 'logo-mahunt.png')
project7.project_logo.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Portfolio/07.Mahunt/project-logo-mahunt.png')), filename: 'project-logo-mahunt.png')
project7.main_tech.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Portfolio/Main-Tech/WordPress_blue_logo.png')), filename: 'WordPress_blue_logo.png')

project8 = Project.create!(name: "Awesome New Design", url: "https://awesomenewdesign.co.uk", tag_ids: [tag1.id, tag13.id, tag17.id, tag23.id], hidden: false, order_id: 8)
ActionText::RichText.create!(record_type: 'Project',record_id: project8.id, name: 'description', body: "Presentation website for Awesome New Design, a web development agency which offer affordable and creative solutions for all online needs like websites design, e-commerce websites, CRM solutions, software development and branding.")
project8.cover_image.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Portfolio/08.Awesome-New-Design/cover-image-awesome-new-design.png')), filename: 'cover-image-awesome-new-design.png')
project8.logo.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Portfolio/08.Awesome-New-Design/logo-awesome-new-design.png')), filename: 'logo-awesome-new-design.png')
project8.project_logo.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Portfolio/08.Awesome-New-Design/project-logo-awesome-new-design.png')), filename: 'project-logo-awesome-new-design.png')
project8.main_tech.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Portfolio/Main-Tech/WordPress_blue_logo.png')), filename: 'WordPress_blue_logo.png')

project9 = Project.create!(name: "Black and Orange", url: "https://blackandorange.pics", github_url: "https://github.com/AlexUkPC/blackAndOrangeA", docker_url: "https://hub.docker.com/r/alexrogna/blackandorange_web", tag_ids: [tag2.id, tag4.id, tag5.id, tag7.id, tag9.id, tag11.id, tag12.id, tag13.id, tag14.id, tag16.id, tag18.id, tag20.id], hidden: false, order_id: 9)
ActionText::RichText.create!(record_type: 'Project',record_id: project9.id, name: 'description', body: "For a long time in history there were only black and white pictures, after which colour photos appeared. Because I want to remember the black and white pictures, but I wanted a splash of colour I made this platform for sharing black and orange photos with everyone. Anyone can upload their black and orange pictures. Users can view, like and comment other user photos.")
project9.cover_image.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Portfolio/09.Black-and-Orange/cover-image-black-and-orange.png')), filename: 'cover-image-black-and-orange.png')
project9.logo.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Portfolio/09.Black-and-Orange/logo-black-and-orange.png')), filename: 'logo-black-and-orange.png')
project9.project_logo.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Portfolio/09.Black-and-Orange/project-logo-black-and-orange.png')), filename: 'project-logo-black-and-orange.png')
project9.main_tech.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Portfolio/Main-Tech/Ruby_on_Rails_logo.png')), filename: 'Ruby_on_Rails_logo.png')

project10 = Project.create!(name: "It Bookstore", url: "https://itbookstore.alexrogna.com", github_url: "https://github.com/AlexUkPC/itbookstore", docker_url: "https://hub.docker.com/r/alexrogna/itbookstore_web", tag_ids: [tag4.id, tag5.id, tag6.id, tag7.id, tag9.id, tag10.id, tag11.id, tag12.id, tag13.id, tag16.id, tag18.id, tag19.id, tag20.id], hidden: true, order_id: 10)
ActionText::RichText.create!(record_type: 'Project',record_id: project10.id, name: 'description', body: "This is a proof of concept, made in Rails, for an ecommerce website which sell IT books. The cart is updated dynamic with AJAX, changes are broadcast with the help of Action Cable, the checkout is made with a little help from React for adding fields dynamically to the form and admins can be notified in a RSS client about new orders with the help of Atom feed. I used Action mailer to send confirmation email to clients for placed orders, and Action Mailbox to receive support emails, Active Storage to store them and Rich Text to respond.")
project10.cover_image.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Portfolio/10.It-Bookstore/cover-image-it-bookstore.png')), filename: 'cover-image-it-bookstore.png')
project10.logo.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Portfolio/10.It-Bookstore/logo-it-bookstore.png')), filename: 'logo-it-bookstore.png')
project10.project_logo.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Portfolio/10.It-Bookstore/project-logo-it-bookstore.png')), filename: 'project-logo-it-bookstore.png')
project10.main_tech.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Portfolio/Main-Tech/Ruby_on_Rails_logo.png')), filename: 'Ruby_on_Rails_logo.png')

project11 = Project.create!(name: "Geldar Network", url: "https://geldar.network", github_url: "https://github.com/AlexUkPC/GeldarNetwork", docker_url: "https://hub.docker.com/r/alexrogna/geldarnetwork_web", tag_ids: [tag2.id, tag4.id, tag5.id, tag7.id, tag8.id, tag9.id, tag10.id, tag11.id, tag12.id, tag13.id, tag15.id, tag18.id, tag20.id, tag21.id, tag22.id], hidden: false, order_id: 11)
ActionText::RichText.create!(record_type: 'Project',record_id: project11.id, name: 'description', body: "This is a social network in which users can share their thoughts, photos and check in at different locations. They can also interact with other users by following and be followed. If they follow someone, then they can see in the main timeline what the other user post and respond to that. From the settings section users can change their profile photo, details, make the profile private or delete the account.")
project11.cover_image.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Portfolio/11.Geldar-Network/cover-image-geldar-network.png')), filename: 'cover-image-geldar-network.png')
project11.logo.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Portfolio/11.Geldar-Network/logo-geldar-network.png')), filename: 'logo-geldar-network.png')
project11.project_logo.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Portfolio/11.Geldar-Network/project-logo-geldar-network.png')), filename: 'project-logo-geldar-network.png')
project11.main_tech.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Portfolio/Main-Tech/Ruby_on_Rails_logo.png')), filename: 'Ruby_on_Rails_logo.png')

project12 = Project.create!(name: "The Art Of Travelling", url: "https://theartoftravelling.online", github_url: "https://github.com/AlexUkPC/theartoftravelling", docker_url: "https://hub.docker.com/r/alexrogna/theartoftravelling_web", tag_ids: [tag3.id, tag4.id, tag5.id, tag7.id, tag9.id, tag10.id, tag11.id, tag12.id, tag13.id, tag16.id, tag18.id, tag20.id], hidden: false, order_id: 12)
ActionText::RichText.create!(record_type: 'Project',record_id: project12.id, name: 'description', body: "This is a travel blog made in Rails. A blogger can post an article on the website or he can send an email to a custom email address and with the help of Active Mailbox this is stored as an unpublished article linked with his account which he can publish later. When a new article is published on the blog, with the help of Action Cable everyone active on the website can see a notification for this event with a direct link to the article.")
project12.cover_image.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Portfolio/12.The-Art-of-Travelling/cover-image-the-art-of-travelling.png')), filename: 'cover-image-the-art-of-travelling.png')
project12.logo.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Portfolio/12.The-Art-of-Travelling/logo-the-art-of-travelling.png')), filename: 'logo-the-art-of-travelling.png')
project12.project_logo.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Portfolio/12.The-Art-of-Travelling/project-logo-the-art-of-travelling.png')), filename: 'project-logo-the-art-of-travelling.png')
project12.main_tech.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Portfolio/Main-Tech/Ruby_on_Rails_logo.png')), filename: 'Ruby_on_Rails_logo.png')

project13 = Project.create!(name: "Titiatio", url: "https://titiatio.alexrogna.com", github_url: "https://github.com/AlexUkPC/titiatio", docker_url: "https://hub.docker.com/r/alexrogna/titiatio_web", tag_ids: [tag4.id, tag5.id, tag7.id, tag9.id, tag11.id, tag12.id, tag13.id, tag16.id, tag18.id, tag20.id], hidden: true, order_id: 13)
ActionText::RichText.create!(record_type: 'Project',record_id: project13.id, name: 'description', body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nescio quo modo praetervolavit oratio. Sed in rebus apertissimis nimium longi sumus. Perge porro; Compensabatur, inquit, cum summis doloribus laetitia. Bonum patria: miserum exilium. Conferam tecum, quam cuique verso rem subicias;")
project13.logo.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Portfolio/13.Titiatio/logo-titiatio.png')), filename: 'logo-titiatio.png')
project13.project_logo.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Portfolio/13.Titiatio/project-logo-titiatio.png')), filename: 'project-logo-titiatio.png')
project13.main_tech.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Portfolio/Main-Tech/Ruby_on_Rails_logo.png')), filename: 'Ruby_on_Rails_logo.png')

project14 = Project.create!(name: "Sempresano", url: "https://sempresano.ro", github_url: "https://github.com/AlexUkPC/sempresano", docker_url: "", tag_ids: [tag6.id, tag24.id, tag25.id], hidden: false, order_id: 14)
ActionText::RichText.create!(record_type: 'Project',record_id: project14.id, name: 'description', body: "This is an eCommerce website built with Shopify for a catering company. The biggest challenge was creating a pleasant experience for customers, because when you're hungry you have no more patience and you want to order as soon as possible. Starting from a custom theme, I modified it using Liquid to meets the client's requirements.")
project14.cover_image.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Portfolio/14.Sempresano/cover-image-sempresano.png')), filename: 'cover-image-sempresano.png')
project14.logo.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Portfolio/14.Sempresano/logo-sempresano.png')), filename: 'logo-sempresano.png')
project14.project_logo.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Portfolio/14.Sempresano/project-logo-sempresano.png')), filename: 'project-logo-sempresano.png')
project14.main_tech.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Portfolio/Main-Tech/Shopify_logo.png')), filename: 'Shopify_logo.png')

project15 = Project.create!(name: "Enocis", url: "https://enocis.ro", github_url: "https://github.com/AlexUkPC/enocis", docker_url: "https://hub.docker.com/repository/docker/alexrogna/enocis_web", tag_ids: [tag4.id, tag5.id, tag7.id, tag8.id, tag9.id, tag11.id, tag12.id, tag16.id, tag17.id, tag18.id, tag20.id], hidden: false, order_id: 15)
ActionText::RichText.create!(record_type: 'Project',record_id: project15.id, name: 'description', body: "Presentation website for a custom made furniture company. Because they wanted to be able to update the website regularly, I've created a dashboard from which they can add/update projects, products and services. The admin can also accept/reject testimonials, see all the contact forms submission and also can change contact details.")
project15.cover_image.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Portfolio/15.Enocis/cover-image-enocis.png')), filename: 'cover-image-enocis.png')
project15.logo.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Portfolio/15.Enocis/logo-enocis.png')), filename: 'logo-enocis.png')
project15.project_logo.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Portfolio/15.Enocis/project-logo-enocis.png')), filename: 'project-logo-enocis.png')
project15.main_tech.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Portfolio/Main-Tech/Ruby_on_Rails_logo.png')), filename: 'Ruby_on_Rails_logo.png')

project16 = Project.create!(name: "Erp Enocis", url: "https://erpenocis.alexrogna.com", github_url: "https://github.com/AlexUkPC/erpenocis", docker_url: "https://hub.docker.com/repository/docker/alexrogna/erpenocis_web", tag_ids: [tag4.id, tag5.id, tag7.id, tag9.id, tag11.id, tag12.id, tag16.id, tag18.id, tag20.id], hidden: false, order_id: 16)
ActionText::RichText.create!(record_type: 'Project',record_id: project16.id, name: 'description', body: "This is an enterprise resource planning platform custom build for the customer's needs. With the help of this they can see an overview of the company's performance, make quick decisions and plan for the future.")
project16.cover_image.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Portfolio/16.Erp-Enocis/cover-image-erpenocis.png')), filename: 'cover-image-erpenocis.png')
project16.logo.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Portfolio/16.Erp-Enocis/logo-erpenocis.png')), filename: 'logo-erpenocis.png')
project16.project_logo.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Portfolio/16.Erp-Enocis/project-logo-erpenocis.png')), filename: 'project-logo-erpenocis.png')
project16.main_tech.attach(io: File.open(Rails.root.join('app/assets/images/for_seed/Portfolio/Main-Tech/Ruby_on_Rails_logo.png')), filename: 'Ruby_on_Rails_logo.png')
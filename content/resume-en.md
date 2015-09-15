There are 3 large family of IT applications: Desktop application ** ** ** ** Web ** and ** mobile. The major difference is the medium in which they are accessible, and by extension, the technologies to be used for the development thereof. Technological barriers between the supports are becoming finer, and it is now easy to use the same family of technologies for multiple media. This will greatly reduce the cost of development and maintenance. The web is now the target of all applications, because of its simplicity.

Cdiscount, the leader in e-commerce in France is growing worldwide presence. Therefore, the number of applications to be developed is increasing, because each country has its specificities. It currently outsources the development of its mobile applications and strongly considering re developing them internally. However, the technical expertise of the company is the web, not the mobile. Is it not possible for Cdiscount to use its expertise to create mobile applications using modern web technologies?

In parallel, many projects are underway to restore the functioning of the IS (Information Systems) Cdiscount and change the internal architecture and development methods used. We strongly encourage new applications using agile methods and implement the architecture on which she works (microservices).

On my computer engineering course at the EPSI Bordeaux, I had the opportunity to work alternately for 3 years from Cdiscount (from 2012-2015). My job was essentially the first application development. Gaining experience and confidence with my superiors, my everyday work has gradually evolved. In addition to developing, I had time emerged to do research on new technologies, and improve my design skills.

I was part of the Lab team (R & D). This is the team responsible for maintaining innovation at Cdiscount. For this, it is in constant technological monitoring and proposes new ideas to the IT technologies. Their objective is to keep up to date technologies used, and thus to build the platform of the future. It has a free hand in the choice of technologies.

The web world is moving very fast and is hard to follow. Many technologies appear regularly. Make a modern web application, and quality is not an easy job. Find the perfect solution and make the right choices according to the technical project and team development style, requires good analytical skills and an active technology watch.

** What are the choices to be made and what are the steps for the design and implementation of a modern web application quality? **

Our team has proposed to create a project type POC (Proof Of Concept). The main objective is to demonstrate how to make a quality application, but also:

* Use of our web expertise to create a mobile application, and propose an alternative embodiment Cdiscount to cheaper, more efficient and ready to use (industrially)
* Demonstrate interest in the use of new technologies, and thus the interest to make an active technology watch
* Propose a modern architecture allowing the isolation of the logic of the field of application, and therefore its reuse in another context, allowing easy technology change
* This architecture is one on which works the architecture team, give them the opportunity to use our project as a concrete proof of the interest of it
* Interest ?? d have small cross-functional teams (team pizzas) on small projects rather than large teams separated by technical areas on large projects

But ultimately what is a quality software? This is in my opinion a program with the following features:

* Rapid development features (time = money)
* Development of new features without impacting the existing (non-regression)
* Possess a scalable architecture to reduce technical debt and the appearance of bugs
* Frequent and rapid deployments into production to satisfy customer demand
* Make sure that the application still works production

For this project, we propose to reproduce the behavior of the current Android application, but
using:

* Web Technologies only
* Architecture well chosen (in correspondence with the architecture team)
* Agile Methodology

We have a two-month limit, and we are three developers. At the end of two months, we will present the project to a jury made both technical and non-technical.

Create a good application starts with choosing a good software architecture. If there's one thing to avoid is the monolith. A monolithic application is a putting more functionality in a single process. Many legacy applications are monolithic, because they are the simplest to implement. If that is suitable for small applications, over time this application become more and more complex in its evolution. The modular architecture planned for the beginning is difficult to keep.

"* From the simple application to the application to do anything, it is only one step. *" Julien Dubreuil.

The code base of a monolith is very important and daunting. It is difficult to understand and modify. The slightest change has a big impact on the entire code. In addition, it engages in the long term on a single technology.

The software architecture is not generally limited to a single architectural style is often a combination of several styles that will form a complete software system. The main architectural styles are:

| Category | architectures Styles |
| --- | --- |
| Communication | SOA (Service Oriented Architecture), Message Bus |
| Deployment | Client / Server, N-tier, 3-tier |
| Domain | DDD (Domain Driven Design) |
| Structure | oriented components, object-oriented, layered architecture |

There is another style, later that draws heavily from the others, but with a different approach to the implementation level:

* SOA: Integrate different applications as a set of services
* Microservices: Architecture each application as a set of services

This is the style that Cdiscount wants to use, and it's one we will implement our project in several stages since its implementation is complex.

DDD (Domain Driven Design) taught us that there are actually two kinds of logic in an application: field of logic and business logic. Separating them allows better technological freedom. This is especially useful in the field of web technologies evolve as quickly.

For our project, the client application will be a SPA (Single Page Application) based on a SOA components coupled with SOA events. The server is a RESTful web service based on the architecture of microservices.

Technology choices are many, especially for the front-end as there are several frameworks SPA. We chose angularjs to maturity, combined with a bus homemade events to meet our architectural choices (components and events). We also used a number of tools, allowing us to be productive by avoiding duplication (DRY: Do not Repeat Yourself).

If Cdiscount historically uses the method of V cycle for project management, she wants to move towards agile methods. That's why we use SCRUM combined with Extreme Programming (XP). They combine perfectly good project management and development practices. What we really retain agile methods are:

* ** ** Testability: A tested software ensures that any new functionality does not affect the rest of the system. The act of writing the test first (TDD) forces the constant refactoring and ensures good design from the start, limiting the technical debt.
* ** ** Code review: The code review by another colleague helps ensure the quality of it.
* ** ** Never technical debt: The technical debt slows development and strengthens the ability to be bugs in the system.
* ** Rapid deployments easy and frequent **
* ** ** Use the right tools
* ** ** Good communication
* ** Welfare of team members **

This is our concrete methodology used to add functionality to the product.

* Creating a new branch in the version control system (to avoid conflict with other new features implemented in parallel)
* Write high-level tests (UI Integration or as appropriate)
* Writing the source code in strict TDD (it is forbidden to add the source code without the development by the lack of a test)
* Code review by another team member
* Integration of the new branch of the main branch
* Verification of non-regression through continuous integration

Having applied these principles (architecture, methodologies, technologies) on our project during two months with our team of three developers, we reached a satisfactory result. Through Cordova technology, we have created an application running on multiple mobile devices (iOS, Android) as well as web browsers. The result is satisfactory in our view, with good performance and a simple and effective user interface.

The demonstration project is a success and achieved its objectives. It's quality software, allowing rapid implementation of new technical features without accumulating debt. We have at the same time demonstrated Cdiscount it is possible to create mobile applications using only web technology, our area of ​​expertise. During the presentation, the jury is well aware and want to test our solution in transverse applications. It should be before that, we are finalizing the integration with current methods Cdiscount.

The job of a software architect is designing applications. The work of a software developer is the realization of applications. We have seen that it is difficult to separate the design phase of a project to its realization phase. This is the weak point of the V cycle methodology and agile methods are designed to rally the two phases. Many companies separate these two roles, and software quality is diminished.

A software engineer is able to design and build an application. The best way to get quality software is to have a software engineering team, working together during all project phases (design, construction and implementation).

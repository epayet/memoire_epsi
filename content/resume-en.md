There are two kind of software applications: desktop applications and web/mobile applications. The main difference is the device from which it is consumed, and by extension, the choice of the development technologies. Technological barriers between devices become thiner and thiner so the use of one software family for many devices is about to become the common way to do it. It allows to reduce development costs and also maintenance efforts. Because of its simplicity, the web is now the first target choice for every applications.

Cdiscount, the e-commerce french leader, operates  on  an international scale; hence, the quantity of “to be developed” applications goes increasing. Indeed, every country has its specific culture and so, features. Yet, Cdiscount contracts out its mobile software developments and thinks about getting it back to internal developments. However, the expertise domain of the company is not mobile developments but web developments. Would it not be possible for Cdiscount to use its expertise in order to create mobile applications through recent web technologies?

In the meantime, lots of project are launched to improve the Cdiscount Information System and so, to change both the internal architecture and the development methods. Cdiscount strongly encourages new applications to use agile methods and to implement microservices.

During my time at EPSI Bordeaux, I had the opportunity to get a 3 years co-op work job (from 2012 to 2015). First, my work consisted in software developments. As I became more experienced and as I gained the trust of my supervisors, my everyday job evolved. Besides software developpements, I had free time to make my own researches about new technologies and to improve my conception skills.

I was part of the “Lab team (R&D). This team was in charge of the innovation at Cdiscount. For this purpose, we always spend part of our time in technological monitoring so we would be able to propose  new ideas, new ways to built up the tomorrow platform. That’s why as a R&D team member, I felt free regarding my technological choices.

The World Wide Web grows strong and quick so it is really difficult to follow. Many technologies appear every single day. Making a web application combining recent technologies with the best technical choices and with a good quality level requires both strong abilities to analyse and an active technological monitoring.

**What are the choices to make and the various steps to follow in order to conceive a robust and modern web application?**

Our team applied to create a POC (Proof Of Concept) project. The objective was to demonstrate how to proceed to build a high quality application, but also:

* use our expertise in web development to create a mobile application and suggest a more cost effective, more efficient, and ready-to-use realization alternative for Cdiscount (using industrialization concepts)
* show the advantages of new technologies usages, and demonstrate the benefits of an active technological watch
* suggest a modern architecture that isolates contextual logic from the application itself, allowing code reuse within other contexts, allowing easy technological shifts
* This technology, being used by the Architecture team, shows them the concrete proof of the advantages to use our project
* The advantages of having small polyvalent teams (pizza teams) working on small projects, instead of having large teams working on separate technical subsets

But in the end, what is a high quality software? To me, it’s a piece of software having the following qualities:

* fast feature development (time is money),
* feature development that does not cause regressions on existing ones,
* has an architecture that allows new features to be built while containing bug count and technical debt growth,
* fast build, frequent and easy production deployments, allowing customer satisfaction
* Make sure the software always works for the end-user

For this project, we suggest to reproduce the android application behaviour, but we will use:

* only web technologies,
* a well-chosen architecture (accordingly to the Architecture team)
* Agile methodology

We have a two months limit and are three developers. By the end of the two months period, we will showcase our project in front of a jury composed by “technical” and “non-technical" people.
Create a good application starts by choosing the right software architecture. If there is one thing to avoid at all costs, it is the monolithic application.

A monolithic application is an application putting together lots of features into one single process. Several existing applications are monolithic ones because they are the easiest one in term of realisation.  In the early stages, this approach could be relevant for the smallest applications, but those kind of applications are condemned to become really difficult to maintain. The modular architecture previously designed cannot be maintained anymore.

“*From the simple application to the can-do-everything application, there is only one step.*”, Julien Dubreuil.

The basis of a monolithic code is very important and intimidating. It is difficult to understand and to modify. Any single change has a great impact on all the code. Moreover, it is engaging in long-term on a unique technology.

Software architecture is not limited to one type of architecture, it is often a combination of several types that forms a complete software system. The main types of architecture are:

| Catégorie | Styles d'architectures |
| --- | --- |
| Communication | SOA (Service Oriented Architecture), Message Bus |
| Deployment | Client/Serveur, N-tiers, 3-tiers |
| Domain | DDD (Domain Driven Design) |
| Structure | Component oriented, object oriented, Layered architecture |

There is another type of architecture, more recent, which is inspired from others, but with a different approach on implementation:

* SOA: includes different applications like a set of services
* Microservices: Design each application like a set of services

It is the type that Cdiscount wants to use, and it is the one that we are going to put in place for our project, in several phases, because its production is complicated.

The DDD (Domain Driven Design) made us aware that there are two types of logic in an application: domain logic and applicative logic. Separating the two of them allows a better technological freedom. It even more useful in the web field because technologies are growing at a fast pace.

For our project, the client application will be a SPA (Single Page Application), based on a component-oriented architecture with an event-oriented architecture. The server will be a RESTful web service based on the architecture of microservices.

There are many technological choices, especially for front-end development because there are many SPA frameworks. We chose AngularJS because of its maturity, combined with a homemade bus of events to respect our architecture choices (components and events). We also used many tools, allowing us to be productive and avoiding repetitions (DRY: Don’t Repeat Yourself).

Cdiscount uses historically the V-cycle methodology of project management and wants to tend to agile methodologies. That’s why we are going to use SCRUM combined with Extreme Programming (XP). They are perfectly combining project management and good practices of development. We can sum up agile methodologies by:

* **Testability**: a tested software allows to ensure that any new functionality is not affecting the system. Writing the test first (TDD) reinforces constant refactoring and ensures a good conception from the start, limiting the technological debt.
* **Code review**: allows the assurance of a good quality code
* **No technical debt**: the technical debt slows down the development and reinforces the possibility to have bugs in the system
* **Quick, easy, frequent deployments**
* **The use of good tools**
* **Good communication**
* **Well-being of team members**

Here is our concrete methodology to add functionalities to the product:

* Creation of a new branch on the version manager (avoiding conflict with other new implemented functionalities)
* Writing tests of high level (Integration or UI)
* Writing source code in strict TDD (it is forbidden to add source code without a test)
* Code review by another team member
* Integration of the new branch on the principal one
* Checking of the non-regression thanks to continuous integration

Because we applied those principles (architecture, methodologies, technologies) on our project for two months with a team of three developers, we now have a satisfying result. Thanks to Cordova technology, we created an application that works on different mobile devices (iOS, Android) and on web browsers. The result is, in our opinion, satisfying, with good performances, and with a simple and effective user interface.

The demonstration project is a success and its objectives were achieved. This well-designed software allows a quick implementation of new functionalities with no place for technical debt. In the meantime, we also proved that it is possible to create mobile applications within our expertise field, web applications. Now the jury wants to test our solution on transversal applications. However, beforehand we need to finalize the integration with the Cdiscount current methods.

A software architect job is  the conception for applications. A software developer job is the execution of applications. We saw that it is difficult to separate the conception phase from the execution phase. It is the weak spot of the V-cycle methodology, and agile methodologies exist to bound those two phases together. Many firms are separating these two roles and the software quality diminishes in consequence.

A software engineer is capable of conceive AND execute an application. The best way to have a good quality software is to have a team of software engineers, who work together during all phases of a project (conception, execution and production).

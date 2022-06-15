<p align="center">
  <img src="/assets/Logo.svg" width="400" alt="Logo" />
</p>

# Seal Fighter V

## Technical test 👨‍💻

Welcome to our technical test repository.
If you are here, either you are going through a recruitment phase to work with us, you are just curious, or you have nothing better to do!

Whatever the situation is, we are going to present you with an exercise where you are expected to do some code. But of course, not everything is about code, there is choices, styles, ideas... hopefully it will be fun! 🥳

## General overview 🦭

We love seals, that's something that you need to know for this exercise. We struggled to decide which seal is our favorite. After several discussions, we decided to create a video game to decide which one is the best; The game is called `Seal Fighter V`.

Seals will fight each other in 1 vs 1 in order to gain glory, respect and maybe finish on top of the leaderboard :rocket:

## The game 🎮

In the current repository you will find the first little bricks of this game. Of course, the technical stack matters: the winner seal has to win in a terrain where we want them to play. So this game will be created in the following environment:

- A [Ruby on Rails](https://rubyonrails.org/) HTTP API, which will handle the back-end and create the bases and rules for the arena they'll be using to fight.
- A [React](https://reactjs.org/) App, that will handle the front-end, and organize the arena itself.
- A quite simple Relational Database ([SQLite](https://www.sqlite.org)) to make things easier for everyone.

## The challenge 🚀

You will take part of the development of the first stages of the game. We just want you to add a few bricks to this amazing project, and get in touch with some seals (and some Ruby, and some JS).

### You should know ✍️

- **We do not expect you to spend an ubelievable amount of hours** working on this project for the technical test. If you love it we can develop the whole game later, but for now, making some choices, doing some modifications and making sure you understand the codebase and are capable of contributing will be more than enough for us to have a technical chat afterward. **Please DO NOT sacrifice a huge amount of your lovely free time**, just take this as a technical exercise you can work on it for a few hours (2 or 3 hours should be enough, and if it is not, please let us know to adapt everything).

- We expect you to be able to do some **work in the front-end AS WELL AS in the back-end**, even if you end up working more in one than the other one, it is important to us to know that any developer in our team is capable of understanding and interacting with the whole environment, even when it is not your field of expertise.

- If something is not doable, can not be completed, or you have an amazing new idea that feels way more interesting than what you are asked to do, please **feel free to take some initiative** and do it. We will just discuss about those choices afterward. It's a technical test, not a prison!

## First steps 🥇

- Set up the back-end environment and get the API running by [reading this guide](api/README.md).
- Set up the front-end environment and get the app running by [reading this guide](front/README.md).

## The mission 🎯

This is the very early stage of this game development! Someone took some decisions about the architecture of the project but that's it. Your goal will be to develop an interface to present all the characters of the game. Those little seals are eager to show off their little faces.

What's provided:
- A basic design that shows what we would like the start of the game to look like. You can find this design in Figma, [click on this link](https://www.figma.com/file/1F1hraYvSAN7vzhd4e5iMU/Seal-Fighter-V?node-id=0%3A1) and check it out.
- An asset folder with some images and fonts, keep in mind you can access all those in the Figma file too. [Check here](front/assets).
- A functional API with a route `GET http://localhost:8888/seals`.
- A functional front-end application.
- A basic CI including tests and linter for the api and the front-end.

What you need to do:
- Create the `Home` page following the design.
- Create the `Info` page following the design and using an API route in the form of `GET http://localhost:8888/seals/name_of_the_seal`. The `Info` page should be accessible from the front-end using the URL scheme `http://localhost:3000/seals/name_of_the_seal`.
- [OPTIONAL] Create the character selection system.

You can contact @eskombro or @nicolasvienot if you need anything.

## Images 📷

<p align="center">
  <img src="/assets/Home.png" alt="Home" />
</p>

<p align="center">
  <img src="/assets/Home - Player hover.png" alt="Home hover" />
</p>

<p align="center">
  <img src="/assets/Infos.png" alt="Infos" />
</p>

<p align="center">
  <img src="/assets/Home - Player selected [OPTIONAL].png" alt="Home selected" />
</p>

Thanks to @lpinot for the design :seal:

## Boris Bikes
> A simple program to emulate the Boris Bikes (Santander bikes from 2010) system
> as employed by the London cycle scheme, deployed by Transport for London.

### Framework used

Ruby

# How to use

From the command line, enter;

> ruby ./boris-bikes/boris-bikes.rb

### Basic User Story Diagram


| User |  --> | Bike  |  -->  | DockingStation |
|:----:|:----:|:-----:|:-----:|:--------------:|

#### Step 1

The the basic setup process of creating a file, creating a `Github` repo and
linking them together.

#### Step 2

Introduction to the `user stories` system.
Detail can be added to user stories in two ways:

- By splitting a user story into multiple, smaller user stories.
- By adding “conditions of satisfaction.”

> As a **< type of user >**, I want **< some goal >** so that **< some reason >**.

#### Step 3

Introduction to `feature tests` using the `domain modeling`

#### Step 4 - 8

Although none was needed, an introduction into the `debugging` process.
The implimentation of `rspec` for the first time in the project.
From basic initialization to deployment.

#### Step 9

Building the bike class and having the docking class recognise it.

#### Step 10

Making sure the docking station releases the bikes if it's working.

#### Step 11

Ability to dock a bike. This of course will accept all the bikes given to it.
This will have to be changed later.

#### Step 12

Starting to raise errors now. We're getting so used to them that we might
as well customise them.

#### Step 13

Writing tests that expect errors. Make them suffer too.

#### Step 14

Finally starting to look at DockingStation as an actual dock that
can hold more than 1 bike. Implimented this by creating an array
and storing the max capacity of 20 bikes within.
As usual keeping up with the `RED-GREEN-REFACTOR` process.
All green at the moment.

#### Step 15

Took a sledge hammer to the code and broke some parts down to smaller pieces.
Refactored it using `**Single Responsibility Principle**` making sure
each method had one job only. It takes a special kind of method to
pull this off. Good method.

#### 16 + 17

Started using `Constants Variables` to cement the max capacity value. This
will also become the dafault value.

#### 18

Started to impliment a reporting system where a user can flag a specific
bike as being broken. The `DockingStation` will then go though each bike
to check it's state, only releasing it if it's good to go.

**STILL IN PROGRESS**




### Contributors

**Day 1** [Jeremy Smith](https://github.com/JRRS1982)

**Day 2** [Amy Jordan](https://github.com/amyj0rdan)

**Day 3** [Tomé Jesus](https://github.com/saypop)

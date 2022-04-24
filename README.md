# maxin_task

a task for maxin ,I only implement the requirements as PDF ask for it, so I did not add any additional feature like app Icon, splash page, pull to refresh and etc.

## Architect of application

I used provider architect because its easy to understand and I create this app with provider state
management

## Widgets

I am create widgets that I know I am going to used more then once in beginning of project, that way
I can change main style of application easily and help the other developers to do not duplicate one
code.

## Theme

for most of the widget and colors that design wants, I implement theme on theme section of
application , for example :
check box design icon and background colors and etc

## Third party library

list of lib that I added on project

### percent_indicator

I used this lib to speed up the proses (we could create container in container and curve them and
handle the this manually. but that unnecessary)

### dio

for handle HTTP request

### intl

for handle multi language and have a dictionary for all static texts

### get_it

for having only one instance of http service

### provider

its main state management , I like provider more then rest of them

### google_fonts

using preMade font style

### json_serializable

for create to json and from json for view models

### build_runner

to run json_serializable command
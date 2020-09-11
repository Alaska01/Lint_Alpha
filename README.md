# CSS Linter

## About
CSS Linter project at [Microverse]
This project is a CSS Linter that checks for various CSS errors such as multiple semicolumns, semicolons, a wrong indentation on code lines, and error in spacing while opening curly braces. I named the CSS Linter Alpha_Lint. It was built as a Ruby Capstone project at Microverse to show my efficiency in using OOP in ruby language and the ability to work with minimal supervision. Here is a screenshot of the working code displaying error it uncovered in a CSS code.
![screenshot](./assets/errors.JPG)
 
## Built With

- RUBY

[ONLINE VIDEO EXPLANING THE PROJECT](https://www.loom.com/share/cc99f6a5bf9c4013ac8093cd370eec0c)


## Rules Created for Alpha_Lint

- Checks for multiple semicolons on a single line throughout the code
- Checks for multiple colons on a single line throughout the code
- Checks empty block(s) on a single line in the code file throughout the code
- Checks wrong code indentation throughout the code, among others.

## Good Code
![screenshot](./assets/goodcode.JPG)
 
 ## Bad Code
 ![screenshot](./assets/badcoding.JPG)



# Getting Started 🚀

These instructions will get you a copy on how to get your Alphat_Lint running on your local machine to debug CSS code errors. The gem colorize will also need to be installed to have a colored output. [Follow this link](https://www.devdungeon.com/content/colorize-ruby-terminal-output) on how to install the colorize gem.

## How To Run Checks 🔧

From your command line, first clone the project:  

```bash
# Clone this repository
$ git clone https://github.com/Alaska01/Lint_Alpha.git
$ cd Lint_Alpha
$ cd bin/main
# Go to the command line/terminal and type the following command
$ ./main.rb '../css/good_code.css'
-OR
$ ./main.rb '../css/bug.css'

# Running RSPEC Check
- Use the following command to go a step backward into the root directory
$ cd ..
- Run the command
$ rspec


## Author
👤 **Aye Daniel A*****

- [Github](https://github.com/Alaska01)
- [Twitter](https://twitter.com/AyeAsoo)
- [Linkedin](https://www.linkedin.com/in/daniel-asoo-aye/)

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- I acknowledge Microverse, the global remote school for developers.
- I appreciate The Odin Project for providing the project and making lessons simple to learn.

## 📝 License

This project is [MIT](lic.url) licensed.

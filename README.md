<!-- Badges -->
<p>
  <img alt="Version" src="https://img.shields.io/badge/version-0.1-blue.svg?cacheSeconds=2592000" />
  <a href="#" target="_blank">
    <img alt="License: GPLv3 " src="https://img.shields.io/badge/License-GPL-yellow.svg" />
  </a>
  <a href="https://twitter.com/redacuve" target="_blank">
    <img alt="Twitter: redacuve " src="https://img.shields.io/twitter/follow/redacuve.svg?style=social" />
  </a>
</p>


<!-- Project Header -->
  <p align="center">
    <img src="my-cat-photos.png" width="350">
  <br>
  <h1 align="center">Project: My Cat Photos</h1>
  <p align="center">
  <br>
   <a href="https://github.com/redacuve/my-cat-photos"><strong>Explore the repo »</strong></a>
  <br>
    <a href="https://github.com/redacuve/my-cat-photos/issues">Request Feature</a>
  </p>
  <h2 align="center"><a href="https://my-cat-photos.herokuapp.com/"><strong>Live Link!</strong></a></h2>

<!-- TABLE OF CONTENTS -->

## Table of Contents

* [About the Project](#about-the-project)

* [Built With](#built-with)

* [Getting Started](#getting-started)

* [How it Works](#how-it-works)

* [Contributing](#contributing)

* [License](#license)

* [Contact](#contact)

<!-- ABOUT THE PROJECT -->

## About The Project

This is the full app using my initial code from my tutorial <a href="https://hackernoon.com/how-to-upload-and-display-images-trough-ibm-cloud-with-rails-6-xwj3um0">"A Guide for Uploading and Showing Images Trough IBM CLOUD with RAILS 6"</a>. If you only want to check the code for  the tutorial, you can find the repo [here](https://github.com/redacuve/ibm-cloud-storage-example).

My Cat Photos app allows you to like photos of cats. You only can vote once, you don't need to register to vote, it has a very simple logic for the voting, but it works.

You can upload your Cat Photo with ease, and your photos can be voted on by anyone.
Have fun looking at lots of cats photos.

<p align="center">
  <img src="my-cat-photos.gif" width="450">
</p>

## Built With

* [Ruby](https://ruby-doc.org/core-2.7.0/)

* [HTML5](https://developer.mozilla.org/es/docs/HTML/HTML5)

* [IBM Cloud](https://cloud.ibm.com/docs)

* [Tailwin dCSS](https://tailwindcss.com/docs/installation/)

* Gems used:
    * [carrierwave](https://rubygems.org/gems/carrierwave)
    * [fog-aws](https://rubygems.org/gems/fog-aws)
    * [mini_magick](https://rubygems.org/gems/mini_magick)

* npm Packages used:
    * [fontawesome](https://www.npmjs.com/package/font-awesome)
    * [tailwindcss](https://www.npmjs.com/package/tailwindcss)

<!-- GETTING STARTED -->

## Getting Started

To get a local copy up and running follow these simple steps.

Clone or fork the <a href="https://github.com/redacuve/my-cat-photos">repo</a> [git@github.com:redacuve/my-cat-photos.git]

Note* Ruby and Rails needs to be installed to run the code, check [here](https://www.ruby-lang.org/en/documentation/installation/) and [here](https://guides.rubyonrails.org/getting_started.html) for further steps. Also you need to setup your own IBM Cloud or AWS keys on the [credentials](https://guides.rubyonrails.org/security.html#custom-credentials) to work properly.

Attention* If you want to setup this project locally you need to add YOUR OWN CLOUD KEYS on credientials.yml, to edit this file you NEED to run this command:
```
 $ EDITOR='nano' rails credentials:edit
```
note* you must change the editor to your favorite, for example, gedit, vim, geany, kate, kwrite, emacs, etc.
Also, you MUST configure the file carrierwave.rb, this file is located at:
```
.
├── config
│   ├── initializers
│   │   ├── carrierwave.rb

```
The configuration of this file needs to have YOUR OWN cloud configuration:
* region: 'eu-west-1',
* endpoint: 'https://s3.example.com:8080'
* config.fog_directory  = 'name_of_bucket'


<!-- HOW IT WORKS -->
## How it Works

It uses the carrierwave gem to upload files with ease, carrierwave by default is not able to send the uploaded files to the cloud, to achieve that we need to use the gem fow-aws, this gem allows to us to save the file previously uploaded with carrierwave to the cloud with the protocol S3, IBM cloud uses this protocol, so the configuration is straightforward.

There are two pages for this app, the index page where you can see all of the photos uploaded by anyone and the upload page, here you can upload your photo to be voted.

On the index page you can sort the photos by most voted or by recent photos, also you can vote with the like or dislike buttons if you click like, the total votes for the photo will be increased by 1 and if you click dislike the votes will decrease by one, all of the votes are updating via Vanilla JS, the method votes in the photos controller respond to a js.erb view, so voting for a photo can be done without refreshing the entire index page.

## Running the code

*   Navigate to the root directory of the project

*   Run this command on your terminal to install all the needed gems:
    ```
    $ bundle install
    ```
*   Install Yarn
    ```
    $ yarn install --check-files
    ```
*   Create and migrate the database
    ```
    $ rails db:create
    $ rails db:migrate
    ```
*   Add your own credentials for IBM Cloud or AWS
    ```
    $ EDITOR='nano' rails credentials:edit
    ```
*   Run the develpment server with
    ```
    $ rails server
    ```
*   Take a look at the app
    ```
    http://127.0.0.1:3000/
    ```

<!-- CONTRIBUTING -->

## Contributing

Contributions are what make the open source community such an amazing place to be learn, inspire, and create. Any contributions you make are **greatly appreciated**.

1. Fork the Project

2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)

3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)

4. Push to the Branch (`git push origin feature/AmazingFeature`)

5. Open a Pull Request

<!-- LICENSE -->

## License

This project is under the <a href="https://www.gnu.org/licenses/gpl-3.0.html">GNU Public License V3</a>. For more information see <a href="https://github.com/redacuve/my-cat-photos/blob/master/LICENSE">here</a>

<!-- CONTACT -->

## Contact

Rey David Cuevas Vela - [@redacuve](https://twitter.com/redacuve) - [redacuve@gmail.com](mailto:redacuve@gmail.com) -[linkedin.com/in/redacuve/](https://www.linkedin.com/in/redacuve/)

Project Link: [github.com/redacuve/my-cat-photos](https://github.com/redacuve/my-cat-photos) - My Cat Photos.
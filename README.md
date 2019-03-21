# Mutant on Rails

This workshop aims to teach the usage of [mutant](https://github.com/mbj/mutant)
on a real world rails codebase.

While trying to use a real world code base, we still have to make some compromises
due to the time limitations in a workshop setting. These are:

* Having a pre-supplied working `mutant` setup for the project, as provided in this repo.
* Having some pre-selected targets that are known to be easy to work with.

This does not mean that `mutant` cannot be used on the entire example project with success,
but it would require a bigger setup diff that is specific to the example project.

## Requirements for attendees

* Read this Readme ;)
* Bring your laptop with a Unix OS (Linux / Mac, others may also work).
  As `mutant` does not work (well) on Windows, we recommend setting up a Linux VM
  (in advance) if you want to attend the workshop.
* Clone the workshop repo (this repo) and perform the setup *before* you attend the
  workshop.
* Setup your WIFI (for being able to fix any setup issue you might be encountering).

## Assumptions for attendess

* You know `rails`
* You know `rspec`
* You can navigate a `rails` code base you do not know
* You have an idea about the e-commerce domain

## Setup

* Install MRI Ruby 2.3 or higher, `rubygems` and `bundler`.
* Clone this repository
* `cd solidus && bundle install`
* `cd example && bundle install`

## Workshop setting

After the setup has been confirmed to work for everyone, we'll do a really quick recap
on `mutant` and show the `solidus` specific setup that has been done.

We'll then walk through one of the examples together. After that, we'll have
groups (or individuals) work on the remaining example subjects we've selected.

## First step

```
cd example
bundle exec mutant -I lib -r my_range --use rspec -- 'MyRange*'
```

Than iterate and ask questions.

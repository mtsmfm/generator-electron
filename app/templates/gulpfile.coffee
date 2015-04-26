gulp       = require 'gulp'
util       = require 'gulp-util'
coffee     = require 'gulp-coffee'
sass       = require 'gulp-sass'
slim       = require 'gulp-slim'
plumber    = require 'gulp-plumber'

COFFEE_FILES = './src/coffee/**/*.coffee'

gulp.task 'coffee', ->
  gulp.src COFFEE_FILES
    .pipe plumber()
    .pipe coffee bare: true
    .on 'error', util.log
    .pipe gulp.dest './dest/js'

gulp.task 'watch-coffee', ->
  gulp.watch COFFEE_FILES, ['coffee']

SASS_FILES = './src/sass/**/*.sass'

gulp.task 'sass', ->
  gulp.src SASS_FILES
    .pipe plumber()
    .pipe sass indentedSyntax: true
    .pipe gulp.dest './dest/css'

gulp.task 'watch-sass', ->
  gulp.watch SASS_FILES, ['sass']

SLIM_FILES = './src/slim/**/*.slim'

gulp.task 'slim', ->
  gulp.src SLIM_FILES
    .pipe plumber()
    .pipe slim pretty: true
    .pipe gulp.dest './dest/html'

gulp.task 'watch-slim', ->
  gulp.watch SLIM_FILES, ['slim']

IMAGE_FILES = './src/images/**/*.{jpg,jpeg,png,gif}'

gulp.task 'images', ->
  gulp.src IMAGE_FILES
    .pipe gulp.dest './dest/images'

gulp.task 'watch-images', ->
  gulp.watch IMAGE_FILES, ['images']

gulp.task 'watch', ['watch-coffee', 'watch-sass', 'watch-slim', 'watch-images']
gulp.task 'default', ['coffee', 'sass', 'slim', 'images']
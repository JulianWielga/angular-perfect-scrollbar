gulp = require 'gulp'
coffee = require 'gulp-coffee'
sourcemaps = require 'gulp-sourcemaps'
plumber = require 'gulp-plumber'
karma = require 'gulp-karma'
git = require 'gulp-git'
bump = require 'gulp-bump'
filter = require 'gulp-filter'
tag_version = require 'gulp-tag-version'


gulp.task 'coffee', ->
	gulp.src 'src/**/*.coffee'
	.pipe plumber()
	.pipe sourcemaps.init()
	.pipe coffee bare: true
	.pipe sourcemaps.write 'maps'
	.pipe gulp.dest 'dist'

gulp.task 'test', ->
	gulp.src 'dummy'
	.pipe plumber()
	.pipe karma
		configFile: 'test/karma.conf.coffee'
		action: 'run'

gulp.task 'watch', ->
	gulp.watch '**/*.coffee', ['test', 'coffee']

gulp.task 'default', ['coffee']



# Bumping version number and tagging the repository with it.
# Please read http://semver.org/

# You can use the commands

# gulp patch     # makes v0.1.0 → v0.1.1
# gulp feature   # makes v0.1.1 → v0.2.0
# gulp release   # makes v0.2.1 → v1.0.0

# To bump the version numbers accordingly after you did a patch,
# introduced a feature or made a backwards-incompatible release.

inc = (importance) ->
	gulp.src ['./package.json', './bower.json']
	.pipe plumber()
	.pipe bump type: importance
	.pipe gulp.dest './'
	.pipe git.commit 'bumps package version'
	.pipe filter 'package.json'
	.pipe tag_version()

gulp.task 'patch', -> inc 'patch'
gulp.task 'feature', -> inc 'minor'
gulp.task 'release', -> inc 'major'
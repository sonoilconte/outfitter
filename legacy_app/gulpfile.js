const gulp = require("gulp");
const babel = require("gulp-babel");

gulp.task("default", function() {
  // transpile client JavaScript from es6 to es5 and put into the Rails asset pipeline
  gulp.src("app/assets/javascripts-es6/**/*.js")
    .pipe(babel())
    .pipe(gulp.dest("app/assets/javascripts"));
});

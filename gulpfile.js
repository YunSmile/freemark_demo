var gulp = require("gulp");
var postcss = require("gulp-postcss");
var autoprefixer = require("autoprefixer");
var cssnext = require("cssnext");
var precss = require("precss");
var del = require("del");
var exec = require("child_process").exec;
const CSS_PATH = "./src/**/*.css";

// css
gulp.task("css", async () => {
  var processors = [autoprefixer, cssnext, precss];
  gulp.src(CSS_PATH).pipe(postcss(processors)).pipe(gulp.dest("./dist/ftl"));
});

// clean
gulp.task("clean:/dist", async function () {
  //删除之前生成的文件
  return del(["/dist"]);
});

gulp.task("copy", async function () {
  gulp.src("src/**/*.ftl").pipe(gulp.dest("dist/ftl"));
});

// 监听
gulp.task("watchs", async function () {
  gulp.watch(CSS_PATH, gulp.series("css"));
  gulp.watch("src/**/*.ftl", gulp.series("copy"));
});

// 启动服务
gulp.task("server", async function (cb) {
  exec("npm run server", function (err, stdout, stderr) {
    console.log(stdout);
    console.log(stderr);
    cb(err);
  });
});

gulp.task("init", gulp.series("clean:/dist", gulp.parallel("css")));
gulp.task("run", gulp.series("server", "init", "copy", "watchs"));

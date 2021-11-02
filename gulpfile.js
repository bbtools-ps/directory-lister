var gulp = require('gulp'),
    del = require('del'),
    zip = require('gulp-zip'),

    destinationFolder = 'dist',
    sourceFolder = 'src',
    projectName = 'Directory_Lister',
    projectVersion = '1.0.0';

// 0. Clean the whole dest/ folder
gulp.task('clean', function () {
    return del([
        destinationFolder + '/**/*'
    ])
});

// 1. Zip the files
gulp.task('zip-files', () =>
    gulp.src([sourceFolder + '/**/*'])
        .pipe(zip(projectName + '_v' + projectVersion + '.zip'))
        .pipe(gulp.dest(destinationFolder))
);

// Default task
gulp.task('default', gulp.series('clean', 'zip-files'));

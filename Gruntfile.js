module.exports = function (grunt) {

    'use strict';

    grunt.initConfig({
        /**
         * Get package meta data
         */
        pkg: grunt.file.readJSON('package.json'),
        /**
         * Set project object
         */
        project: {
            theme: 'wave',
            dev: './',
            out: './../../../out/',
            tmp: './../../../tmp/',
            modules: './../../../modules/',
        },
        /**
         * Clean tmp folders
         */
        clean: {
            options: {
                'force':true,
            },
            src: ['<%= project.tmp %>/*'],
        },
        /**
         * Sass (compile & minify)
         */
        sass: {
            dist: {
                options: {
                    update: true,
                    style: 'compressed' /* compressed */
                },
                files: {
                    '<%= project.out %><%= project.theme %>/src/css/styles.css': [
                        '<%= project.dev %>/build/scss/style.scss'
                    ]
                }
            }
        },
        cssmin: {
            options: {
                mergeIntoShorthands: false,
                roundingPrecision: -1
            },
            target: {
                files: {
                    '<%= project.out %><%= project.theme %>/src/css/styles.min.css': ['<%= project.out %><%= project.theme %>/src/css/styles.css']
                }
            }
        },
        postcss: {
            options: {
                processors: [
                    require('autoprefixer')({browsers: ['last 2 versions', 'ie 11']})
                ]
            },
            dist: {
                src: '<%= project.out %><%= project.theme %>/src/css/styles.css'
            }
        },
        uglify: {
            options: {
                sourceMap: true
            },
            my_target: {
                files: {
                    '<%= project.out %><%= project.theme %>/src/js/script.min.js': [
                        '<%= project.dev %>node_modules/jquery/dist/jquery.min.js',
                        '<%= project.dev %>build/js/jquery/patch.js',
                        '<%= project.dev %>build/vendor/jquery-ui/js/jquery-ui.js',
                        '<%= project.dev %>node_modules/popper.js/dist/umd/popper.min.js',
                        '<%= project.dev %>node_modules/bootstrap/dist/js/bootstrap.bundle.js',
                        '<%= project.dev %>build/vendor/jquery-unveil/js/jquery.unveil.js',
                        '<%= project.dev %>build/vendor/jquery-flexslider2/js/jquery.flexslider.js',
                        '<%= project.dev %>build/vendor/jquery-bootstrap-validation/js/jqBootstrapValidation.js',
                        '<%= project.dev %>build/js/main.js',
                        '<%= project.dev %>build/js/pages/compare.js',
                        '<%= project.dev %>build/js/pages/details.js',
                        '<%= project.dev %>build/js/pages/review.js',
                        '<%= project.dev %>build/js/pages/start.js'
                    ]
                }
            }
        },
        combine_mq: {
            new_filename: {
                options: {
                    beautify: false,
                    expand: false
                },
                src: '<%= project.out %><%= project.theme %>/src/css/styles.css',
                dest: '<%= project.out %><%= project.theme %>/src/css/styles.css'
            }
        },
        /**
         * Watch files for changes
         */
        watch: {
            configFiles: {
                files: ['Gruntfile.js', 'config/*.js'],
                options: {
                    reload: true
                }
            },
            clean: {
                files: [
                    '<%= project.dev %>de/**/*.*','<%= project.dev %>en/**/*.*','<%= project.modules %>**/*.tpl'],
                tasks:
                    ['clean'],
                options:
                    {
                        spawn: false,
                        livereload: true
                    }
            },
            sass: {
                files: [
                    '<%= project.dev %>build/scss/**/*.scss','<%= project.dev %>tpl/**/*.tpl'],
                tasks:
                    ['sass', 'postcss', 'combine_mq', 'cssmin', 'clean'],
                options:
                    {
                        spawn: false,
                        livereload: true
                    }
            },
            js: {
                files: [
                    '<%= project.dev %>build/js/*.js',
                ],
                tasks:
                    ['uglify'],
                options:
                    {
                        spawn: false,
                        livereload: true
                    }
            }
        },
        copy: {
            fonts: {
                files: [
                    {
                        expand: true,
                        src: '*',
                        cwd: '<%= project.dev %>/build/vendor/fontawesome-free-webfonts/webfonts/',
                        dest: '<%= project.out %><%= project.theme %>/src/fonts/'
                    }
                ]
            },
            vendor: {
                files: {
                    "<%= project.out %><%= project.theme %>/src/js/libs/jquery.cookie.min.js":         "build/vendor/jquery-cookie/js/jquery.cookie.js",
                    "<%= project.out %><%= project.theme %>/src/js/libs/photoswipe.min.js":            "build/vendor/photoswipe/js/photoswipe.js",
                    "<%= project.out %><%= project.theme %>/src/js/libs/photoswipe-ui-default.min.js": "build/vendor/photoswipe/js/photoswipe-ui-default.js"
                }
            }
        }
    });

    /**
     * Load Grunt plugins
     */
    require('matchdep').filterDev('grunt-*').forEach(grunt.loadNpmTasks);
    require('time-grunt')(grunt);

    /**
     * Default task
     * Run `grunt` on the command line
     */
    grunt.registerTask('default', [
        'copy',
        'sass',
        'postcss',
        'combine_mq',
        'cssmin',
        'uglify',
        'clean',
        'watch'
    ]);
};

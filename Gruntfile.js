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
            theme: 'flow',
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
                    style: 'expanded', /* compressed */
                    sourcemap: 'auto'
                },
                files: {
                    '<%= project.out %><%= project.theme %>/src/css/styles.css': [
                        '<%= project.dev %>/build/scss/style.scss'
                    ]
                }
            }
        },

        concat: {
            js: {
                options: {
                    separator: ';\n',
                    sourcemap: true
                },
                files: {
                    '<%= project.out %><%= project.theme %>/src/js/javascript.js': [
                        '<%= project.dev %>node_modules/jquery/dist/jquery.min.js',
                        '<%= project.dev %>node_modules/popper.js/dist/umd/popper.min.js',
                        '<%= project.dev %>node_modules/bootstrap/dist/js/bootstrap.js',
                        "<%= project.dev %>build/vendor/bootstrap-select/js/bootstrap-select.js",
                        "<%= project.dev %>build/vendor/jquery-bootstrap-validation/js/jqBootstrapValidation.js",
                        "<%= project.dev %>build/vendor/jquery-unveil/js/jquery.unveil.js",
                        '<%= project.dev %>build/js/main.js'
                    ],
                    '<%= project.out %><%= project.theme %>/src/js/javascript.async.js': [
                        '<%= project.dev %>build/js/**/*.js'
                    ],
                    "<%= project.out %><%= project.theme %>/src/js/pages/compare.min.js": "<%= project.dev %>build/js/pages/compare.js",
                    "<%= project.out %><%= project.theme %>/src/js/pages/details.min.js": "<%= project.dev %>build/js/pages/details.js",
                    "<%= project.out %><%= project.theme %>/src/js/pages/review.min.js":  "<%= project.dev %>build/js/pages/review.js",
                    "<%= project.out %><%= project.theme %>/src/js/pages/start.min.js":   "<%= project.dev %>build/js/pages/start.js"
                }
            }
        },
        postcss: {
            options: {
                map: true,
                processors: [
                    require('autoprefixer')({browsers: ['last 2 versions', 'ie 10', 'ie 11']})
                ]
            },
            dist: {
                src: '<%= project.out %><%= project.theme %>/src/css/styles.css'
            }
        },
        uglify: {
            options: {
                sourcemap: true
            },
            my_target: {
                files: {
                    '<%= project.out %><%= project.theme %>/src/js/script.min.js': [
                        '<%= project.out %><%= project.theme %>/src/js/javascript.js'
                    ],
                    '<%= project.out %><%= project.theme %>/src/js/script.async.min.js': [
                        '<%= project.out %><%= project.theme %>/src/js/javascript.async.js'
                    ]
                }
            }
        },
        combine_mq: {
            new_filename: {
                options: {
                    beautify: true
                },
                src: '<%= project.out %><%= project.theme %>/src/css/styles.css',
                dest: '<%= project.out %><%= project.theme %>/src/css/styles.min.css'
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
                        livereload: true,
                    }
            },
            sass: {
                files: [
                    '<%= project.dev %>build/scss/**/*.scss','<%= project.dev %>tpl/**/*.tpl'],
                tasks:
                    ['sass', 'postcss', 'combine_mq'],
                options:
                    {
                        spawn: false,
                        livereload: true,
                    }
            },
            js: {
                files: [
                    '<%= project.dev %>build/js/*.js',
                    '<%= project.out %><%= project.theme %>/src/js/js/**/*.js'
                ],
                tasks:
                    ['concat:js', 'uglify'],
                options:
                    {
                        spawn: false,
                        livereload: true,
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
        'concat:js',
        'uglify',
        'clean',
        'watch'
    ]);
};

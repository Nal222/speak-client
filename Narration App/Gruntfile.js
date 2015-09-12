/**
 * Created by Nalini on 9/9/2015.
 */
module.exports = function(grunt) {

    grunt.initConfig({

        stylus: {
            compile: {
                options: {
                    compress: false,
                    paths: ['source/stylus']
                },
                files: {
                    'build/style.css': 'source/stylus/main.styl'
                }
            }
        },

    });

    // Load grunt plugins.
    grunt.loadNpmTasks('grunt-contrib-stylus');

};
module.exports = {

    options: {
        compress: true,
        yuicompress: true,
        optimization: 2,
        plugins: [
            new (require('less-plugin-autoprefix'))({browsers: ["last 2 versions"]})
        ]
    },

    theme: {
        files: {
            "out/wave/src/css/styles.min.css": "build/less/wave.less"
        }
    },

    vendor: {
        files: {
            "out/wave/src/css/libs/jquery.flexslider.min.css": "build/vendor/jquery-flexslider2/less/flexslider.less"
        }
    }

};
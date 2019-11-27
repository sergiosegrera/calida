const path = require("path");

module.exports = {
    module: {
        rules: [
            {
                test: /\.(js|jsx)$/,
                exclude: /node_modules/,
                use: {
                    loader: "babel-loader"
                }
            }
        ]
    },
    entry: {
        home: "./src/home.jsx"
    },
    output: {
        path: path.resolve(__dirname + "/static"),
        filename: "[name].bundle.js",
    }
};

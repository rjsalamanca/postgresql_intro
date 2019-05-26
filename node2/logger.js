const log = {
    info: info => {
        console.log(`Info: ${info}`);
    },
    error: error => {
        console.error(error);
    }
}

module.exports = log;
exports.success = function (req, res, status, data) {
    res.status(status || 200).send(data);
}

exports.error = function (req, res, message, status, details) {
    console.error('[response error] ' + details);

    res.status(status || 500).send({ 
        error: message,
        body: 'error',
    });
}

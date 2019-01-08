'use strict';

var host = "";
var port = "";
var prevRequest;


function initialParams(mPort, mHost) {
    host = mHost;
    port = mPort;
    console.log(port + "---" + host);
}

function get(url, requestId) {
    console.log('get ' + url);
    var xhr = new peer5.Request(); // new XMLHttpRequest(); // new peer5.Request();
    xhr.url = url;

    function onloadend() {
        if(isFragment(url)){
            prevRequest = null;
        }

        var status = xhr.status;
        if (status === 200) {
            console.log('loaded ' + url);
            if (regex.test(url)) {
                var contentType = xhr.getResponseHeader('Content-Type');
                postPlaylist(xhr.responseText, contentType, requestId, status);
            } else {
                var byteArray = new Uint8Array(xhr.response);
                postFragment(byteArray, requestId, status);
            }
        } else {
            console.log('errored ' + url);
            postError(xhr.response, requestId, status || 500);
        }
    }

    if (isFragment(url)) {
        if (prevRequest) {
            if (prevRequest.url === url){
                console.log('merging request ' + url);
                xhr = prevRequest;
                xhr.addEventListener('loadend',onloadend);
                return;
            }

            prevRequest.abort();
            console.log('abort ' + prevRequest.url);
        }

        prevRequest = xhr;
        xhr.responseType = 'arraybuffer';
    }

    xhr.onloadend = onloadend;
    xhr.open('GET', url, true);
    xhr.send();

}

var regex = new RegExp('.m3u8');
function isPlaylist(url){
    return regex.test(url)
}

function isFragment(url){
    return !isPlaylist(url);
}

function postPlaylist(aBody, contentType, requestId, statusCode) {
    console.log('posting m3u8');
    var xhr = new XMLHttpRequest();
    xhr.onload = function () {
        console.log('posted m3u8')
    };
    xhr.open('POST', host + '?requestId=' + requestId + '&statusCode=' + statusCode, true);
    xhr.setRequestHeader("Content-Type", contentType);
    xhr.send(aBody);

}

function postFragment(aBody, requestId, statusCode) {
    console.log("posting ts");
    var xhr = new XMLHttpRequest();
    xhr.onload = function () {
        console.log('posted ts')
    };
    xhr.open('POST', host + '?requestId=' + requestId + '&statusCode=' + statusCode, true);
    xhr.send(aBody);
}
function postError(aBody, requestId, statusCode) {
    console.log("posting error, requestId="+requestId + " statusCode=" + statusCode);
    var xhr = new XMLHttpRequest();
    xhr.onload = function () {
        console.log('posted error')
    };
    xhr.open('POST', host + '?requestId=' + requestId + '&statusCode=' + statusCode, true);
    xhr.send(aBody);
}
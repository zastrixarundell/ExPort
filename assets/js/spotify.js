let Hooks = {}

Hooks.SpotifyProgressBar = {
    updated() {
        let progressBar = this.el;
        let progress = progressBar.getAttribute("progress");

        adjustProgress(progress, progressBar);

        // I'm just using a timeout to add smoother playing. If I made it update automatically
        // it would eventually go a tad faster than the websocket says and the progress bar would
        // jump around... 
        //
        // ... also spotify increments the bar every 500ms so...
        setTimeout(() => {
            let progressBar = document.getElementById("song-progress-bar");
            let progress = parseInt(progressBar.getAttribute("progress-ms")) + 500;
            let duration = parseInt(progressBar.getAttribute("duration-ms"));
        
            let data = progress * 100 / duration;
        
            progressBar.setAttribute("progress-ms", progress);
        
            adjustProgress(`${data}%`, progressBar);
        
        }, 500);
    }
}

function adjustProgress(progress, progressBar) {
    progressBar.style.background = `linear-gradient(90deg, var(--spotify-highlight-color) 0%, var(--spotify-highlight-color) ${progress}, var(--progress-bar-bg) ${progress})`;
}

// Thumbnail

Hooks.Thumbnail = {
    updated() {
        hideThumbnail(this.el);
    },
    mounted() {
        hideThumbnail(this.el);
    }
}

function hideThumbnail(element) {
    // if (element.offsetTop > 583) 
    //     element.style.display = 'none';
    // else
    //     element.style.display = 'block';
}

// General text block

// window.addEventListener('resize', () => {
    // text = document.getElementById('spotify-song-text');
    // setBackground(text);
// })

Hooks.SpotifyText = {
    updated() {
        setBackground(this.el);
    },
    mounted() {
        setBackground(this.el);
    }
}

function setBackground(element) {
    // thumbnail = document.getElementById('spotify-thumbnail');

    // console.log(thumbnail.offsetTop);

    // if ((thumbnail.offsetTop > 583) || (thumbnail.offsetTop == 0)) 
    //     element.style.backgroundImage = `url(${thumbnail.getAttribute('src')})`;
    // else
    //     element.style.backgroundImage = '';
}

export { Hooks }


// var thumbnailElement = document.getElementById('spotify-thumbnail');

// window.addEventListener('phx:update', () => {
//     thumbnailElement = document.getElementById('spotify-thumbnail');
// })

// function isThumbnailWrapped() {
//     console.log(thumbnailElement.offsetTop);
//     return thumbnailElement.offsetTop > 583;
// }

// window.onload = () => {
//     thumbnailElement.style.width = isThumbnailWrapped() ? '100%' : '300px';
// }

// window.onresize = () => {
//     thumbnailElement.style.width = isThumbnailWrapped() ? '100%' : '300px';
// }
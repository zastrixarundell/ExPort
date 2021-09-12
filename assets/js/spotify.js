window.addEventListener("phx:update", () => {
    let progressBar = document.getElementById("song-progress-bar");
    let progress = progressBar.getAttribute("progress");

    console.log(progress);

    adjustProgress(progress, progressBar);
    setTimeout(() => {
        let progressBar = document.getElementById("song-progress-bar");
        let progress = parseInt(progressBar.getAttribute("progress-ms")) + 500;
        let duration = parseInt(progressBar.getAttribute("duration-ms"));
    
        let data = progress * 100 / duration;
    
        progressBar.setAttribute("progress-ms", progress);
    
        adjustProgress(`${data}%`, progressBar);
    
    }, 500);
})

function adjustProgress(progress, progressBar) {
    progressBar.style.background = `linear-gradient(90deg, var(--highlight-color) 0%, var(--highlight-color) ${progress}, var(--progress-bar-bg) ${progress})`;
}
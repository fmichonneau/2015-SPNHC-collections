fix_pandoc <- function(html_file) {
    hf <- readLines(html_file)
    file.rename(html_file, paste0("orig_", html_file))
    hf <- gsub("min\\.(js|css)", "\\1", hf)
    hf <- gsub("head\\.js", "head.min.js", hf)
    hf <- gsub("simple.\\css", "black.css", hf)
    cat(hf, file = html_file,  sep = "\n")
}

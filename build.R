#! /usr/bin/env Rscript

rmarkdown::render(input         = "presentation.Rmd",
                  output_format = "ioslides_presentation",
                  output_file   = "presentation_ioslides.html")

rmarkdown::render(input         = "presentation.Rmd",
                  output_format = "xaringan::moon_reader",
                  output_file   = "presentation.html")


# html_document themes
rmarkdown::render(input         = "presentation.Rmd",
                  output_format = "html_document",
                  output_file   = "presentation_web.html")

current_user <- system(command = "whoami", intern = T)

if (current_user == "Lukas") {
  out_dir <- "~/Sync/public.tadaa-data.de/QM/pruefungstutorien/qm1_wise_17/"
} else if (current_user == "tobias") {
  out_dir <- ""
} else {
  out_dir <- ""
}

if (out_dir == "") {
  stop("No output directory defined")
}

out_docs   <- c(list.files(pattern = "*.html"), "presentation.Rmd")
out_assets <- c("styles.css", "assets")

sapply(out_docs,   file.copy, to = out_dir, overwrite = T, recursive = F)
sapply(out_assets, file.copy, to = out_dir, overwrite = T, recursive = T)

# Debugging log for "non-function" error that popped up in 0.3.0

# Error con knitr
# https://github.com/mitchelloharawild/vitae/issues/108
# Solucion:
# 1) instalar 'devtools'
# 2) install_version("tibble", version = "2.1.3", repos = "http://cran.us.r-project.org")
# 3) cambiar output: (function (...) {;template <- here::here("cv-template.tex");vitae::cv_document(..., template = template, citation_package = "biblatex",latex_engine = "xelatex")})
# 4) nueva version (ajustar formato) output: (function (..., latex_engine = "xelatex") {; template <- here::here("cv-template.tex"); vitae:::set_entry_formats(vitae:::awesome_cv_entries); vitae:::copy_supporting_files("awesomecv"); vitae::cv_document(..., template = template, latex_engine = latex_engine)})

debug(vitae::detailed_entries)
debug(knitr:::block_exec)
debug(vitae:::protect_tex_input)

rmarkdown::render("cv-es/cv-es.Rmd")

in_dir(input_dir(), evaluate(code, envir = env, new_device = FALSE, 
    keep_warning = T, keep_message = T, 
    stop_on_error = if (options$error && options$include) 
      0L
    else 2L, output_handler = knit_handlers(options$render, 
      options)))

evaluate(code,
         envir = env,
         new_device = FALSE, 
         keep_warning = T, keep_message = T, 
         stop_on_error =
           if (options$error && options$include) 0L else 2L,
         output_handler = knit_handlers(options$render, options)))

evaluate(code,
         envir = env,
         new_device = T, 
         keep_warning = T, keep_message = T, 
         stop_on_error = 2L,
         output_handler = knit_handlers(options$render, options)) -> a

evaluate(code,
         envir = env,
         new_device = T, 
         keep_warning = T, keep_message = T, 
         stop_on_error = 0L,
         output_handler = knit_handlers(options$render, options)) -> a

knitr::asis_output(entry_format_functions$format$detailed(protect_tex_input(x$what), 
    protect_tex_input(x$when), protect_tex_input(x$with), 
    protect_tex_input(x$where), lapply(x$why, protect_tex_input)))

knitr::asis_output(
  entry_format_functions$format$detailed(
    protect_tex_input(x$what), 
    protect_tex_input(x$when),
    protect_tex_input(x$with), 
    protect_tex_input(x$where),
    lapply(x$why, protect_tex_input)
    )
  )
test_that("important package files are present", {
  expect_true(file.exists("DESCRIPTION"))
  expect_true(file.exists("NAMESPACE"))
  expect_true(dir.exists("R"))
  expect_true(file.exists("inst/shiny/app.R"))
})

test_that("R source files parse", {
  r_files <- list.files("R", pattern = "[.]R$", full.names = TRUE)
  expect_gt(length(r_files), 0)
  for (file in r_files) {
    expect_error(parse(file), NA)
  }
})

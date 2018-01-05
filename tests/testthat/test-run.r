context("docker run")

test_that("image can be run", {
  res <- docker_run(image = "hello-world", capture_text = TRUE)
  expect_true(any(grepl("Hello from Docker", attr(res, "output"), fixed = TRUE)))
})

context("docker pull")

test_that("image can be pulled and is listed in images", {
  docker_pull(image = "hello-world")
  images <- as.data.frame(images())$repo
  expect_true(any(grepl("hello-world", images, fixed = TRUE)))
})

test_that("text of pull command can be captured", {
  res <- docker_pull(image = "hello-world", capture_text = TRUE)
  expect_match(res, "Image is up to date")
})

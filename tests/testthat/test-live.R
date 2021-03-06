# Run this test for users to make sure the core features
# of doAzureParallel are still working
context("live scenario test")
test_that("Scenario Test", {
  testthat::skip_on_travis()
  credentialsFileName <- "credentials.json"
  clusterFileName <- "cluster.json"

  doAzureParallel::generateCredentialsConfig(credentialsFileName)
  doAzureParallel::generateClusterConfig(clusterFileName)

  # set your credentials
  doAzureParallel::setCredentials(credentialsFileName)
  cluster <- doAzureParallel::makeCluster(clusterFileName)
  doAzureParallel::registerDoAzureParallel(cluster)

  '%dopar%' <- foreach::'%dopar%'
  res <- foreach::foreach(i = 1:4) %dopar% {
    mean(1:3)
  }

  doAzureParallel::stopCluster(cluster)

  testthat::expect_equal(length(res),
                         4)

  testthat::expect_equal(res,
                         list(2, 2, 2, 2))
})

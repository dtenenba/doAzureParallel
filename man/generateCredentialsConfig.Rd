% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cluster.R
\name{generateCredentialsConfig}
\alias{generateCredentialsConfig}
\title{Creates a credentials file for rAzureBatch package authentication}
\usage{
generateCredentialsConfig(fileName, ...)
}
\arguments{
\item{fileName}{Credentials file name}

\item{...}{Further named parameters
\itemize{
 \item{"batchAccount"}: {Batch account name for Batch Service authentication.}
 \item{"batchKey"}: {Batch account key for signing REST signatures.}
 \item{"batchUrl"}: {Batch service url for account.}
 \item{"storageAccount"}: {Storage account for storing output results.}
 \item{"storageKey"}: {Storage account key for storage service authentication.}
}}
}
\value{
The request to the Batch service was successful.
}
\description{
Creates a credentials file for rAzureBatch package authentication
}
\examples{
{
generateCredentialsConfig("test_config.json")
generateCredentialsConfig("test_config.json", batchAccount = "testbatchaccount",
   batchKey = "test_batch_account_key", batchUrl = "http://testbatchaccount.azure.com",
   storageAccount = "teststorageaccount", storageKey = "test_storage_account_key")
}
}

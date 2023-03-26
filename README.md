## Rack Time Formatter

### Description

Mini-application that returns the current time in a specified format.
Also, the application can return an error if the format is not supported.
Only the following formats are supported: year, month, day, hour, minute, second.
Only get requests are supported.

### Installation

Clone the repository and run `rackup` in the project directory.

### Usage

Send a GET request to the `/time` path with the `format` parameter. The parameter should contain a comma-separated list of time formats. The application will return the current time in the specified format.

Example:

```
GET /time?format=year%2Cmonth%2Cday
GET /time?format=year%2Cmonth%2Cday%2Chour%2Cminute%2Csecond
GET /date will return an error
GET /time?format=invalid_format will return an error
```
# Oura CLI

**Oura API CLI** is a simple bash script for working with the [Oura Ring API](https://cloud.ouraring.com/) directly from the command line.  
It supports API token management, interactive API endpoint selection, parameter input, response display, and data export to CSV.

![Bez názvu](https://github.com/user-attachments/assets/9cb62f4b-9d6d-4eb7-a6c2-29063756eb6d)

![Bez názvu](https://github.com/user-attachments/assets/6a62122b-17ad-4d79-b6bf-d610d6493c0f)


## Features ✨

- Automatic API token loading and management
- Downloading and handling the Oura API OpenAPI specification
- Interactive API endpoint and parameter selection
- Formatted and colorized data output in the terminal
- Export responses to a CSV file
- Minimal dependencies (`bash`, `curl`, `jq`, `column`)

## Example

```bash
$ ./oura

Oura API CLI - Working with Oura API v2

Available API endpoints:
  1) daily activity
  2) daily activity/{document id}
  3) daily cardiovascular age
  4) daily cardiovascular age/{document id}
  5) daily readiness
  6) daily readiness/{document id}
  7) daily resilience
  8) daily resilience/{document id}
  9) daily sleep
 10) daily sleep/{document id}
 11) daily spo2
 12) daily spo2/{document id}
 13) daily stress
 14) daily stress/{document id}
 15) enhanced tag
 16) enhanced tag/{document id}
 17) heartrate
 18) personal info
 19) rest mode period
 20) rest mode period/{document id}
 21) ring configuration
 22) ring configuration/{document id}
 23) session
 24) session/{document id}
 25) sleep
 26) sleep/{document id}
 27) sleep time
 28) sleep time/{document id}
 29) tag
 30) tag/{document id}
 31) vO2 max
 32) vO2 max/{document id}
 33) workout
 34) workout/{document id}
 35) subscription
 36) subscription/renew/{id}
 37) subscription/{id}
 q) Quit

Select endpoint number: 1
This API endpoint supports the following query parameters:
Enter a value for parameter 'start_date' [2025-04-28]:

Result:
************************** [1] **************************
  id: ad4587de-1234-4321-abcd-123456d35df04
  steps: 10300
  calories: 2300
...
```

## Installation

```bash
git clone https://github.com/arzzen/oura.git
cd oura
chmod +x oura
```

> **Note:** Ensure you have installed the following tools: `bash`, `jq`, `curl`, `column`.  
> (On Ubuntu/Debian you can install them with `sudo apt install jq curl bsdmainutils`.)

## Usage

Run the script:

```bash
./oura
```

### Optional parameters:

| Parameter                   | Description                                         |
| --------------------------- | --------------------------------------------------- |
| `--help`                    | Display help information                            |
| `--reset-token`             | Delete the saved API token                          |
| `--reload-spec`             | Re-download the OpenAPI specification               |
| `--export-csv=filename.csv` | Export the retrieved data into a specified CSV file |

### First Run

1. The script will prompt you to enter your **Oura API token**.
2. The token will be securely saved in a `.oura_token` file (accessible only by the user).

### Exporting to CSV

```bash
./oura --export-csv=mydata.csv
```

After selecting an API endpoint and inputting parameters, the data will automatically be saved to `mydata.csv`.

## Requirements

- **Bash** (pre-installed on most Linux/Unix/macOS systems)
- **jq** - for JSON data processing
- **curl** - for sending HTTP requests
- **column** - for neat terminal output (optional but recommended)

## Contributions

Contributions, ideas, and pull requests are welcome!  
Please read the [CONTRIBUTING.md](CONTRIBUTING.md) before submitting your PR (coming soon).

## License

This project is licensed under the [MIT License](LICENSE).

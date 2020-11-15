# AIS data

Data used is from [Marinecadastre](https://marinecadastre.gov/ais/).
Data can be downloaded with `wget` using the commands given [here](https://coast.noaa.gov/htdata/CMSP/AISDataHandler/2019/index.html)

Data can be transferred to an s3 bucket with `transfer.sh`. Data is sorted in folders according to year/month/day to reduce data to be scanned when importing to a table using [aws glue](https://aws.amazon.com/de/glue/?whats-new-cards.sort-by=item.additionalFields.postDateTime&whats-new-cards.sort-order=desc).
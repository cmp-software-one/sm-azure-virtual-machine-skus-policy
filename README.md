# About this Automation

Create an Azure Policy to restrict virtual machine creation to a specific set of SKUs.

This will reduce accidental, or fraudulent spnd in your Azure environment

## Fields and Best Practices

| Field         | Best practice and Options      | Limitations |
| ------------- | --------------------------------- |-|
| **Request title**       | A friendly short name to remind you why you created this account         | 256 characters|
| **Request description**        | Add more details on the need for the account          |256 characters |
| **Azure subscription ID** | Select your target Subscription ID | NA |
| **Name of the Assignment**      | Ref below for the list of available SKUs.    | Per the SKU list below   |
| **Name of the Assignment field 2**     | A friendly name for the restriction                | 256 characters |

Click Add after creating a SKU collection to allow.


## SKUs

The most frequently used SKUs are shown below.

Copy from the SKU column.


|	SKU	|	Type	|	vCPU	|	RAM	|	Data Disk	|	Max IOPS	|	Local Storage	|	Premium Disk	|	Cost / month	|
|	--------------	|	--------------	|	--------------	|	--------------	|	--------------	|	--------------	|	--------------	|	--------------	|	--------------	|
|	B1ls	|	General purpose	|	1	|	0.5	|	2	|	320	|	4 (SCSI)	|	Supported	|	US$3.80	|
|	B1s	|	General purpose	|	1	|	1	|	2	|	320	|	4 (SCSI)	|	Supported	|	US$7.59	|
|	B2ms	|	General purpose	|	2	|	8	|	4	|	1920	|	16 (SCSI)	|	Supported	|	US$60.74	|
|	B2s	|	General purpose	|	2	|	4	|	4	|	1280	|	8 (SCSI)	|	Supported	|	US$30.37	|
|	B4ms	|	General purpose	|	4	|	16	|	8	|	2880	|	32 (SCSI)	|	Supported	|	US$121.18	|
|	D2as_v4	|	General purpose	|	2	|	8	|	4	|	3200	|	16 (SCSI)	|	Supported	|	US$70.08	|
|	D2s_v3	|	General purpose	|	2	|	8	|	4	|	3200	|	16 (SCSI)	|	Supported	|	US$70.08	|
|	D4s_v3	|	General purpose	|	4	|	16	|	8	|	6400	|	32 (SCSI)	|	Supported	|	US$140.16	|
|	D8s_v3	|	General purpose	|	8	|	32	|	16	|	12800	|	64 (SCSI)	|	Supported	|	US$280.32	|
|	DS1_v2	|	General purpose	|	1	|	3.5	|	4	|	3200	|	7 (SCSI)	|	Supported	|	US$53.29	|
|	DS2_v2	|	General purpose	|	2	|	7	|	8	|	6400	|	14 (SCSI)	|	Supported	|	US$106.58	|
|	DS3_v2	|	General purpose	|	4	|	14	|	16	|	12800	|	28 (SCSI)	|	Supported	|	US$213.89	|




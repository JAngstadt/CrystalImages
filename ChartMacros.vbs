Sub RunMacros()
	WScript.Echo "Setting variables"
    Dim xlApp
    Dim wb
    Set xlApp = CreateObject("Excel.Application")
    Set wb = xlApp.Workbooks.Open("Z:\#Shared\Data\Tracking Spreadsheets\Philips Trackers\Up To Date Philips Shipping vs Potential - KPI Tracking.xlsm")

	WScript.Echo "Getting Nocturne chart data"
    xlApp.Run "SaveChart"

    WScript.Echo "Closing file"
    wb.Close False
	Set wb = Nothing

	Set wb = xlApp.Workbooks.Open("Z:\#Shared\Data\Tracking Spreadsheets\On Time Deliveries\CURRENT On Time Delivery.xlsm")

	WScript.Echo "Getting OTD data"
	xlApp.Run "ExportCharts"
	xlApp.Run "ExportOTDTables"

	WScript.Echo "Process complete"
	wb.Close False

	'Clean-up
	Set wb = Nothing
	xlApp.Quit
	Set xlApp = Nothing
End Sub

RunMacros
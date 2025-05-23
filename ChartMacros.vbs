Sub RunMacros()
	WScript.Echo "Setting variables"
    Dim xlApp
    Dim wb
    Set xlApp = CreateObject("Excel.Application")
    Set wb = xlApp.Workbooks.Open("C:\Users\jangstadt\Documents\Updated Philips Shipping vs Potential - KPI Tracking.xlsm")

	WScript.Echo "Getting Nocturne chart data"
    xlApp.Run "SaveChart"

    WScript.Echo "Closing file"
    wb.Close

	Set wb = xlApp.Workbooks.Open("C:\Users\jangstadt\Documents\On Time Delivery.xlsm")

	WScript.Echo "Getting OTD data"
	xlApp.Run "ExportCharts"
	xlApp.Run "ExportOTDTables"

	WScript.Echo "Process complete"
    xlApp.Quit

	'Clean-up
	Set wb = Nothing
	Set xlApp = Nothing
End Sub

RunMacros
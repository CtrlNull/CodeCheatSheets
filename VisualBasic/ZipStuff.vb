'Itterate over folder items and find files w/ .gz

Dim sFolderName as String = "D:\[test]\[Test]"
Dim dir As New DirectoryInfor(sFolderName)
Dim f As FileInfo

For Each f In dir.GetFiles()
	Console.WriteLine(f.Name)
	If f.Name.Contains(".gz") Then
		Dim fs As FileStream = new FileStream(f.Name, FileMode.Open)
		Dim fsOutput As FileStream(sFolderName, FileMode.Create, FileAccess.Write)
		Dim zip As GZipStream = New GZipStream(fs, CompressionMode.Decompress, True)
		
		Dim buffer(4096) As Byte
		Dim BytesRead As Integer

		While (continueLoop)
			bytesRead = zip.Read(buffer, 0, buffer.Length)
			If bytesRead = 0 Then
				Exit While
			End If
			fsOutput.Write(buffer, 0, bytesRead)
		End While
	End If
Next
		


<%@ page language="java" contentType="text/html; charset=US-ASCII"
	pageEncoding="US-ASCII"%>
<%@ page
	import="com.google.appengine.api.blobstore.BlobstoreServiceFactory"%>
<%@ page import="com.google.appengine.api.blobstore.BlobstoreService"%>

<%
	BlobstoreService blobstoreService = BlobstoreServiceFactory.getBlobstoreService();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Upload</title>
</head>
<style>
div#empty {
    height: 40px;
}
div#file {
    text-align: center;
    width: 100%;
    height: 100px;
    background-color: white;
}
</style>
<body>
	<form action="<%=blobstoreService.createUploadUrl("/upload")%>"
		method="post" enctype="multipart/form-data">
		<div>
		<div id="file">
		<div id="empty"></div>
			<input type="file" name="myFile">
					<input type="submit" value="Submit">
		</div>
		</div>
	</form>
</body>
</html>

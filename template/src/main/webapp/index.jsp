<%--
Licensed to the Apache Software Foundation (ASF) under one or more
contributor license agreements.  See the NOTICE file distributed with
this work for additional information regarding copyright ownership.
The ASF licenses this file to You under the Apache License, Version 2.0
(the "License"); you may not use this file except in compliance with
the License.  You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
--%>
<!DOCTYPE html>
<%@ page session="false" %>
<html lang="en">
    <head>
	<title>${pageContext.servletContext.serverInfo}</title>
	<link href="jetty.css" rel="stylesheet" type="text/css" />
    </head>
    <body>
    <h1><i>jetty://</i></h1>
    <h3>${pageContext.servletContext.serverInfo}</h3>
    <h3>Current time: <%= new java.util.Date()%></h3>
    <h4>If you're seeing this, you've successfully installed Jetty. Congratulations!</h4>
    </body>
</html>
<%@page import="java.io.*" contentType="text/plain"%>
<%!
private static final String LOG_FILE="/WEB-INF/refresh_log.txt";
/** Number of bytes to print on each refresh */
private static final int TAIL_SIZE=1000;
%>

<%
File f = new File(getServletConfig().getServletContext().getRealPath(LOG_FILE));
if (f.exists()) {
try {
  String logs = forrestbot.IOUtil.toString(new FileReader(f));
  int len = logs.length();
  out.println( ((len < TAIL_SIZE) ? logs : logs.substring(logs.length()-TAIL_SIZE)) );
  } catch (Throwable t) { out.println(t); }
} else { %>

Log file <%=LOG_FILE%> not found.

Please start the forrestbot backend script (overseer) and ensure it is logging
to the right place.

<% } %>

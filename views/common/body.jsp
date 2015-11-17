<% 
String controller=request.getParameter("controller");
String action=request.getParameter("action");

String modelFile="../../model/"+controller+".jsp";
String controllerFile="../../controller/"+controller+".jsp";
String viewFile="../../views/" + controller + "/" +action+".jsp";

%>

<%
    if(controller == null || action == null){ 
%>
<jsp:include page="dashboard.jsp" flush="true" />
<%  }else{
%>
<jsp:include page="<%= modelFile %>" flush="true" />
<jsp:include page="<%= controllerFile %>" flush="true" />
<jsp:include page="<%= viewFile %>" flush="true" />
<%
}
%>
 
<%-- } --%>
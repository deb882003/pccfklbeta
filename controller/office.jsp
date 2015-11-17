<%-- 
Controller
--%>
<%@ page contentType="text/html" pageEncoding="UTF-8" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="java.io.*" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.util.Properties" %>
<%
if(request.getParameter("save") != null && request.getParameter("save") != ""){
try{
    Connection c = null;
       Statement stmt = null;
      
         Class.forName("org.postgresql.Driver");
         c = DriverManager
            .getConnection("jdbc:postgresql://192.168.1.220:5432/pccfkl",
            "postgres", "postgres");
   String sql = "select uuid_generate_v1()";
         stmt = c.createStatement();
         ResultSet rs = stmt.executeQuery(sql); 
         String uuid=null;
                if ( rs.next() ) {
                    uuid = rs.getString("uuid_generate_v1");
                    }
        // out.println(uuid);  
		java.sql.Timestamp  created = new java.sql.Timestamp(new java.util.Date().getTime());
		java.sql.Timestamp  modified = created;
		String created_by="admin";
		String modified_by=created_by;
		String office_name=request.getParameter("office_name");
		String address_line_1=request.getParameter("address_line_1");
		String address_line_2=request.getParameter("address_line_2");
		String city=request.getParameter("city");
		String zip=request.getParameter("zip");
		String phone=request.getParameter("phone");
		String fax=request.getParameter("fax");
		String additional_detail=request.getParameter("additional_detail");
        boolean status=true;
		
		//String sql_save="insert into mst_offices values(null,'"+uuid+"',
		//'"+created+"','"+modified+"',
		//'"+created_by+"','"+modified_by+"',
		//'"+office_name+"','"+address_line_1+"',
		////'"+address_line_2+"','"+city+"',
		//'"+zip+"','"+phone+"',
		//'"+fax+"','"+additional_detail+"','"+status+"')";
		
		//stmt.executeQuery(sql_save); 
		// stmt.close();
         c.close();
}catch ( Exception e ) {
         out.println( e.getClass().getName()+": "+ e.getMessage() );
         //System.exit(0);
       }
    
}
%>

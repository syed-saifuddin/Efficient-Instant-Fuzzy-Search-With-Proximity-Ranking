
package Algorithm;
import databaseconnection.*; 
import java.util.Vector;
import java.sql.*;
public class  ComputeValidPhrases
{

	public static Vector m(String s) throws Exception
	{
		Vector v=new Vector();
		String[] arr=s.split(" ");
		String out="";
		int ii=0;
		String sql="select * from fuzzydata where ";						

		for(int i=0;i<arr.length;i++ )
		{
			if(ii==0)	
			{
			sql=sql+"keyw like '%"+arr[i]+"%'";
			ii++;
			}
			else{
			sql=sql+"or keyw like '%"+arr[i]+"%'";
			}

		}
		sql=sql+"order by rc desc LIMIT 6";
		System.out.println(sql);
Connection con=databasecon.getconnection();
Statement st1 = con.createStatement();
ResultSet rs=st1.executeQuery(sql);
while(rs.next())
{
	v.add(rs.getString(1));
}

		return v;
	}
	public static void main(String[] args) throws Exception
	{
		Vector vv=	m("sajid swamy ali");
	for(Object o:vv)
		{
		System.out.println(o);
	}
	}
}


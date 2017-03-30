package Algorithm;
import java.util.Vector;
public class  GenerateSegmentations
{

	public static Vector m(String s) 
	{
			Vector v=new Vector();
		String[] arr=s.split(" ");
		String out="";
		int ii=0;
		for(int i=0;i<arr.length;i++ )
		{
			if(ii==0)
			{
							out=arr[i];
							ii++;
			}else{
						out=out+" "+arr[i];
			}
			v.add(out);
								
		}
		System.out.println(out);
		return v;
	}
	public static void main(String[] args) 
	{
		Vector vv=	m("sajid swamy ali");
	for(Object o:vv)
		{
		System.out.println(o);
	}
	}
}

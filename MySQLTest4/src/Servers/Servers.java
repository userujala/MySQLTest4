package Servers;
public class Servers {
public Servers(String servername,String status)
	        {     
			 // this.setId(id);
			  this.setServername(servername);
	         // this.setHostname(hostname);
	          this.setStatus(status);
	        }
	 public Servers() {
	 }
	   // private Integer id;
	    private String servername;
	   // private String hostname;
	    private String status;
	    
	   /* public void setId(Integer id){
	    	this.id = id;
	    }
	    
	    public Integer getId() {
	    	return id;
	    } */
	    public void setServername(String servername) {
	    	this.servername = servername;
	 }
	    
	 public String getServername() {
	  return servername;
	 }
	 
	/* public void setHostname(String hostname) {
	    	this.hostname = hostname;
	 }
	    
	 public String getHostname() {
	  return hostname;
	 } */
	 
	 public void setStatus(String status){
	    	this.status = status;
	    }
	    
	    public String getStatus() {
	    	return status;
	    }
	}

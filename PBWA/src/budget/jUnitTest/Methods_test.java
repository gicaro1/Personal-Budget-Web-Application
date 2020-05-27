package budget.jUnitTest;
import static org.junit.jupiter.api.Assertions.*;
import java.io.UnsupportedEncodingException;
import org.junit.jupiter.api.Test;
import Personal_Budeget_Web_Application.Encrysecuryty;

/**
 * @author giocardenas
 * 
 */
class Methods_test {
	Encrysecuryty  testerSecurity= new Encrysecuryty(); 

	@Test
	public void testEncoder() throws UnsupportedEncodingException{
		assertEquals("MTIzNDU=",Encrysecuryty.encode("12345"));
	}
	
	@Test
	public void testDecoder() throws UnsupportedEncodingException{
		assertEquals("12345" ,Encrysecuryty.decode("MTIzNDU="));
	}

}

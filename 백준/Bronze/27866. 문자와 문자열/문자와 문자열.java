import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
	public static void main(String[] args) throws IOException {
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		
		String eng = br.readLine();
		int num = Integer.parseInt(br.readLine());
		
		System.out.println(eng.charAt(num-1));
	}
}
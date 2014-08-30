import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Timestamp;

public class InsertData {
	
	private static String url = "jdbc:postgresql://127.0.0.1:5432/frDemo";
	private static String user = "postgres";
	private static String password = "zhq";
	
	public static void main(String[] args) throws Exception {
		PreparedStatement prep = null;
		Connection conn = DriverManager.getConnection(url, user, password);
		
		// 关闭事务自动提交
		conn.setAutoCommit(false);
		String sql = "insert into dept_consume_rep(id,dept_id, dept_name,create_time,daily_sales)" +
				" values (?,?,?,?,?)";
		try {
			try {
				// 加载驱动
				Class.forName("org.postgresql.Driver");
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
			
			prep = conn.prepareStatement(sql);
			// 将连接的自动提交关闭，数据在传送到数据库的过程中相当耗时
			conn.setAutoCommit(false);
			// 一次性执行插入1万条数据
			for (int j = 1; j <= 10; j++) {
				prep.setInt(1, j);
				prep.setInt(2, j);
				prep.setString(3, "a");
				prep.setString(4, "2014-4-20 19:19:19");
				prep.setInt(5, 100);
				// 将预处理添加到批中
				prep.addBatch();
				// prep.execute();
			}
			// 预处理批量执行
			prep.executeBatch();
			prep.clearBatch();
			conn.commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			prep.close();
			conn.close();
		}
	}
	
}

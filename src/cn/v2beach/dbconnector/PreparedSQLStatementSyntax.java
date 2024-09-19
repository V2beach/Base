package cn.v2beach.dbconnector;

public class PreparedSQLStatementSyntax {

	/**
	 * Prepared SQL Statement Syntax ↓
	 * # 定义预处理语句
	 * PREPARE stmt_name FROM preparable_stmt;
	 * # 执行预处理语句
	 * EXECUTE stmt_name [USING @var_name [, @var_name] ...];
	 * # 删除(释放)定义
	 * {DEALLOCATE | DROP} PREPARE stmt_name;
	 * ............................. ↑
	 */
	
	//Syntax 'prepareStatement', has long been used in the program.
	
}

package com.remp.services.impl.ac;

import java.io.InputStream;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.apache.poi.EncryptedDocumentException;
import org.apache.poi.hssf.usermodel.HSSFDataFormat;
import org.apache.poi.hssf.usermodel.HSSFDateUtil;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.openxml4j.exceptions.InvalidFormatException;
import org.apache.poi.ss.usermodel.BorderStyle;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.CellType;
import org.apache.poi.ss.usermodel.DateUtil;
import org.apache.poi.ss.usermodel.FillPatternType;
import org.apache.poi.ss.usermodel.Font;
import org.apache.poi.ss.usermodel.HorizontalAlignment;
import org.apache.poi.ss.usermodel.IndexedColors;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.VerticalAlignment;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.ss.usermodel.WorkbookFactory;
import org.apache.poi.xssf.usermodel.XSSFCellStyle;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.apache.commons.collections4.ListValuedMap;

import com.remp.services.JdbcServicesSupport;
import com.remp.system.tools.Tools;

public class Ac01ServicesImpl extends JdbcServicesSupport 
{
	private boolean delete() throws Exception
	{
		String sql = "delete from ac01 where aac101 = ?";
		return this.batchUpdate(sql, this.getIdList("idlist"));
	}
	
	private boolean deleteById() throws Exception
	{
		String sql = "delete from ac01 where aac101 =?";
		return this.executeUpdate(sql, this.get("aac101"))>0;
	}
	
	@Override
	public Map<String, String> findById() throws Exception 
	{
		StringBuilder sql = new StringBuilder()
				.append("select x.aac102,x.aac103,x.aac104,x.aac105,x.aac106,")
				.append("		x.aac107,x.aac108,x.aac109,x.aac110,x.aaa201,")
				.append("       x.aaa402,x.aac111,x.aac101")
				.append("  from ac01 x")
				.append(" where x.aac101 = ?");
		
		Object[] args = 
			{
					this.get("aac101")
			};
		
		return this.queryForMap(sql.toString(), args);
	}
	
	private boolean modifyClue()throws Exception
	{
		StringBuilder sql = new StringBuilder()
				.append("update ac01 a")
    			.append("   set a.aac102=?,a.aac103=?,a.aac104=?,a.aac105=?,a.aac106=?,")
    			.append("       a.aac107=?,a.aac108=?,a.aac109=?,a.aac110=?,a.aaa201=?,aaa402=?")
    			.append(" where a.aac101=?");
		Object[] args=
			{
					this.get("aac102"),
					this.get("aac103"),
					this.get("aac104"),
					this.get("aac105"),
					this.get("aac106"),
					this.get("aac107"),
					this.get("aac108"),
					this.get("aac109"),
					this.get("aac110"),
					this.get("aaa201"),
					this.get("aac402"),
					this.get("aac101")
			};
		
		return this.executeUpdate(sql.toString(), args)>0;
	}
	
	private boolean addClue()throws Exception
	{
		Object aac101 = Tools.getSequence("aac101");
		this.put("aac101", aac101);
		StringBuilder sql = new StringBuilder()
				.append("insert into ac01(aac102,aac103,aac104,aac105,aac106,")
				.append("				  aac107,aac108,aac109,aac110,aaa201,")
				.append("                 aaa402,aac101,aac111)")
				.append("			values (?,?,?,?,?,")
				.append("					?,?,?,?,?,")
				.append("                   ?,?,'未转')");
		
		Object args[] = {
				this.get("aac102"),
				this.get("aac103"),
				this.get("aac104"),
				this.get("aac105"),
				this.get("aac106"),
				
				this.get("aac107"),
				this.get("aac108"),
				this.get("aac109"),
				this.get("aac110"),

				this.get("aaa201"),
				this.get("aaa402"),
				aac101
		};
		return this.executeUpdate(sql.toString(), args) >0;
	}
	
	@Override
	public List<Map<String,String>> query()throws Exception
	{
		List<Object> args = new ArrayList<>();
				
			Object aac109 = this.get("qaac109");
			Object aac103 = this.get("qaac103");
			Object aac105 = this.get("qaac105");
			Object aac104 = this.get("qaac104");
			Object aac111 = this.get("qaac111");
			Object baac102 = this.get("baac102");
			Object eaac102 = this.get("eaac102");
			
		StringBuilder sql = new StringBuilder()
				.append("select x.aac101,x.aac102,x.aac103,x.aac104,x.aac105,")
				.append("		x.aac106,x.aac107,x.aac108,x.aac109,x.aac111")
				.append("  from ac01 x")
				.append(" where true ");
				
		
		if(this.isNotNull(aac105))
		{
			sql.append(" and aac105 like ?");
			args.add("%" +aac105+"%");
		}
		if(this.isNotNull(aac103))
		{
			sql.append(" and aac103 = ?");
			args.add(aac103);
		}
		if(this.isNotNull(aac104))
		{
			sql.append(" and aac104 = ?");
			args.add(aac104);
		}
		if(this.isNotNull(aac109))
		{
			sql.append(" and aac109 = ?");
			args.add(aac109);
		}
		if(this.isNotNull(aac111))
		{
			sql.append(" and aac111 = ?");
			args.add(aac111);
		}
		if(this.isNotNull(baac102))
		{
			sql.append(" and aac102 >= ?");
			args.add(baac102);
		}
		if(this.isNotNull(eaac102))
		{
			sql.append(" and aac102 <= ?");
			args.add(eaac102);
		}
		List<Map<String, String>> rr =this.queryForList(sql.toString(),args.toArray());
		return rr;
	}
	/**
	 * 批量从Excel文件流导入数据库
	 * @param is
	 * @param suffix
	 * @return
	 * @throws Exception
	 */
	public boolean insertBatch(InputStream is,String suffix) throws Exception
	{
		StringBuilder sql = new StringBuilder()
				.append("insert into ac01(aac101,aaa201,aac102,aac103,aac104,")
				.append("				  aac105,aac106,aac107,aac108,aac109,")
				.append("				  aaa402,aac111,aac110)")
				.append("	 values (?,?,?,?,?,")
				.append("			?,?,?,?,?,")
				.append("			?,?,?)");

		
		try 
		{
			Workbook workbook = null;
			if("xls".equals(suffix))
			{
				workbook = new HSSFWorkbook(is);
			}else if("xlsx".equals(suffix))
			{
				workbook = new XSSFWorkbook(is);
			}
			if(workbook != null)
			{
				Sheet sheet = workbook.getSheetAt(0);
				int rows = sheet.getLastRowNum();
				String args[][] = new String[rows][];
				for(int i = 1;i<=rows;i++)
				{
					Row row = sheet.getRow(i);
					int columns = sheet.getRow(0).getLastCellNum();
					if(row != null)
					{
						args[i-1] = new String[columns+1];
						args[i-1][0] = String.valueOf(Tools.getSequence("aac101"));
						for(int j =1;j<columns+1;j++)
						{
							Cell cell = row.getCell(j-1);
							if(cell != null)
							{
								if(cell.getCellType() == CellType.STRING)
								{
									args[i-1][j] = cell.getStringCellValue();
								}else if(cell.getCellType() == CellType.NUMERIC)
								{
									String result = null;
									// 可能是普通数字，也可能是日期
						            if (HSSFDateUtil.isCellDateFormatted(cell)) {
						            	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
						            	Date date = cell.getDateCellValue();
						            	result = sdf.format(date);
						            } else {
						            	cell.setCellType(CellType.STRING);
						                result = cell.getStringCellValue();
						            }
									args[i-1][j] = result;
								}
								System.out.println((i-1)+"********"+j + "***************" + args[i-1][j]);
							}
							else
							{
								args[i-1][j] = "";
								System.out.println((i-1)+"********"+j + "***************" + args[i-1][j]);
							}
						}
					}
				}
				this.appendDoubleSql(sql.toString(), args);
			}
		} catch (Exception e) 
		{
			e.printStackTrace();
		}
		return this.executeTransaction();
	}
	
	
}

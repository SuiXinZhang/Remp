package com.remp.services.impl.ac;

import java.io.InputStream;
import java.text.SimpleDateFormat;
import java.util.Date;

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

public class Ac01ServicesImpl extends JdbcServicesSupport 
{
	public boolean insertBatch(InputStream is,String suffix) throws Exception
	{
		StringBuilder sql = new StringBuilder()
				.append("insert into ac01(aaa201,aac102,aac103,aac104,aac105,")
				.append("				  aac106,aac107,aac108,aac109,aac110,")
				.append("				  aaa402)")
				.append("	 values (?,?,?,?,?,")
				.append("			?,?,?,?,?,")
				.append("			?)");

		
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
						args[i-1] = new String[columns];
						for(int j =0;j<columns;j++)
						{
							Cell cell = row.getCell(j);
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

package com.entity;

import java.io.File;
import java.io.IOException;

import org.apache.poi.openxml4j.exceptions.InvalidFormatException;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.ss.usermodel.WorkbookFactory;

public class ReadExcel {
	public static void main(String[] args) throws IOException, InvalidFormatException {
		File xlsFile = new File("D:/poi.xls");
		// ��ù�����
		Workbook workbook = WorkbookFactory.create(xlsFile);
		// ��ù��������
		int sheetCount = workbook.getNumberOfSheets();
		// ����������
		for (int i = 0; i < sheetCount; i++) {
			Sheet sheet = workbook.getSheetAt(i);
			// �������
			int rows = sheet.getLastRowNum() + 1;
			// ����������Ȼ��һ�У��ڵõ���������
			Row tmp = sheet.getRow(0);
			if (tmp == null) {
				continue;
			}
			int cols = tmp.getPhysicalNumberOfCells();
			// ��ȡ����
			for (int row = 0; row < rows; row++) {
				Row r = sheet.getRow(row);
				for (int col = 0; col < cols; col++) {
					System.out.printf("%10s", r.getCell(col).getStringCellValue());
				}
				System.out.println();
			}
		}
	}
}

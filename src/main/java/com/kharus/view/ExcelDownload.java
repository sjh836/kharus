package com.kharus.view;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.view.document.AbstractXlsView;

import com.kharus.biz.record.RecordVO;

@Component("recordExcel")
public class ExcelDownload extends AbstractXlsView
{
	protected void buildExcelDocument(Map<String, Object> model, Workbook workbook, HttpServletRequest request, HttpServletResponse response) throws Exception
	{
        // change the file name
        response.setHeader("Content-Disposition", "attachment; filename=\"record.xls\"");

        @SuppressWarnings("unchecked")
        List<RecordVO> recordList = (List<RecordVO>) model.get("recordList");

        // create excel xls sheet
        Sheet sheet = workbook.createSheet("전적조사");

        // create header row
        Row header = sheet.createRow(0);
        header.createCell(0).setCellValue("유저명");
        header.createCell(1).setCellValue("전적수");

        // Create data cells
        int rowCount = 1;
        for (RecordVO record : recordList)
        {
            Row recordRow = sheet.createRow(rowCount++);
            recordRow.createCell(0).setCellValue(record.getNickName());
            recordRow.createCell(1).setCellValue(record.getRecord());
        }
	}
}

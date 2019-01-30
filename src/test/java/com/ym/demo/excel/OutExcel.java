package com.ym.demo.excel;


import org.apache.poi.hssf.usermodel.*;
import org.apache.poi.ss.util.CellRangeAddress;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.ResourceUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import java.io.FileOutputStream;


@RestController
@RequestMapping(value = "/Test")
public class OutExcel {

    //    @Autowired
//    private HttpServletResponse response;
    @Autowired
    private HttpServletRequest request;

    @Test
    public void test() throws Exception {

        //创建HSSFWorkbook对象
        HSSFWorkbook wb = new HSSFWorkbook();
        HSSFCellStyle cellStyle = wb.createCellStyle();
        cellStyle.setVerticalAlignment(HSSFCellStyle.VERTICAL_CENTER);
        cellStyle.setAlignment(HSSFCellStyle.ALIGN_CENTER);
        cellStyle.setWrapText(true);
        //创建HSSFSheet对象
        HSSFSheet sheet = wb.createSheet("sheet0");

        sheet.setDefaultColumnWidth(25);
//        sheet.setDefaultRowHeight((short) 40);
//        sheet.setDefaultRowHeightInPoints(40);
        //创建HSSFRow对象
        HSSFRow row = sheet.createRow(0);
//        row.setHeightInPoints(40);
        //创建HSSFCell对象
        HSSFCell cell = row.createCell(0);
        //设置单元格内容
        cell.setCellValue("台风暴雨防御工作落实情况报表");
        cell.setCellStyle(cellStyle);
        //合并单元格CellRangeAddress构造参数依次表示起始行，截至行，起始列， 截至列
        sheet.addMergedRegion(new CellRangeAddress(0, 0, 0, 2));
        //在sheet里创建第二行
        HSSFRow row1 = sheet.createRow(1);
        HSSFRow row2 = sheet.createRow(2);
        HSSFRow row3 = sheet.createRow(3);
        HSSFRow row4 = sheet.createRow(4);
        HSSFRow row5 = sheet.createRow(5);
        HSSFRow row6 = sheet.createRow(6);
        HSSFCell cell1 = row1.createCell(0);
        HSSFCell cell1_1 = row1.createCell(1);
        HSSFCell cell2 = row2.createCell(1);
        HSSFCell cell3 = row3.createCell(1);
        HSSFCell cell4 = row4.createCell(1);
        HSSFCell cell5 = row5.createCell(1);
        HSSFCell cell6 = row6.createCell(1);
        cell1_1.setCellValue("下发通知");
        cell1_1.setCellStyle(cellStyle);
        cell2.setCellValue("领导批示（注明姓名、职务）");
        cell2.setCellStyle(cellStyle);
        cell3.setCellValue("领导坐镇（注明姓名，职务）");
        cell3.setCellStyle(cellStyle);
        cell4.setCellValue("领导现场督促（注明姓名，职务，督促事项)");
        cell4.setCellStyle(cellStyle);
        cell5.setCellValue("会议部署（注明主持领导姓名、职务）");
        cell5.setCellStyle(cellStyle);
        cell6.setCellValue("值班值守人数");
        cell6.setCellStyle(cellStyle);
        cell1.setCellValue("传达部署情况");
        CellRangeAddress cellRangeAddress = new CellRangeAddress(1, 6, 0, 0);
        CellRangeAddress cellRangeAddressTest = new CellRangeAddress(7, 11, 0, 0);//单元格测试
        CellRangeAddress cellRangeAddressTest1 = new CellRangeAddress(12, 18, 0, 0);//单元格测试
        CellRangeAddress cellRangeAddress1 = new CellRangeAddress(1, 1, 1, 2);
        CellRangeAddress cellRangeAddress3 = new CellRangeAddress(2, 2, 1, 2);
        CellRangeAddress cellRangeAddress2 = new CellRangeAddress(12, 12, 1, 3);
        sheet.addMergedRegion(cellRangeAddress);
        sheet.addMergedRegion(cellRangeAddress1);
        sheet.addMergedRegion(cellRangeAddressTest);
        sheet.addMergedRegion(cellRangeAddressTest1);
        sheet.addMergedRegion(cellRangeAddress2);
        sheet.addMergedRegion(cellRangeAddress3);

        //在sheet里创建第一行，参数为行索引(excel的行)，可以是0～65535之间的任何一个
//        row1.setRowStyle(cellStyle);
        cell1.setCellStyle(cellStyle);

        //创建单元格并设置单元格内容
//        row2.createCell(0).setCellValue("姓名");
//        row2.createCell(1).setCellValue("班级");
//        row2.createCell(2).setCellValue("笔试成绩");
//        row2.createCell(3).setCellValue("机试成绩");
//        //在sheet里创建第三行
//        HSSFRow row3 = sheet.createRow(2);
//        row3.createCell(0).setCellValue("李明");
//        row3.createCell(1).setCellValue("As178");
//        row3.createCell(2).setCellValue(87);
//        row3.createCell(3).setCellValue(78);
        //输出Excel文件
        FileOutputStream output = new FileOutputStream("d:\\workbook.xls");
        wb.write(output);
        output.flush();
    }

    @Test
    public void test2() throws Exception {
        System.out.println(ResourceUtils.getURL("demo").getPath());
        System.out.println(System.getProperty("user.dir"));
        int[] b = {1, 2, 3, 4};
    }

//    public void test1() throws Exception {
//        //创建HSSFWorkbook对象(excel的文档对象)
//        HSSFWorkbook wb = new HSSFWorkbook();
//        //建立新的sheet对象（excel的表单）
//        HSSFSheet sheet = wb.createSheet("成绩表");
//        //在sheet里创建第一行，参数为行索引(excel的行)，可以是0～65535之间的任何一个
//        HSSFRow row1 = sheet.createRow(0);
//        //创建单元格（excel的单元格，参数为列索引，可以是0～255之间的任何一个
//        HSSFCell cell = row1.createCell(0);
//        //设置单元格内容
//        cell.setCellValue("学员考试成绩一览表");
//        //合并单元格CellRangeAddress构造参数依次表示起始行，截至行，起始列， 截至列
//        sheet.addMergedRegion(new CellRangeAddress(0, 0, 0, 3));
//        //在sheet里创建第二行
//        HSSFRow row2 = sheet.createRow(1);
//        //创建单元格并设置单元格内容
//        row2.createCell(0).setCellValue("姓名");
//        row2.createCell(1).setCellValue("班级");
//        row2.createCell(2).setCellValue("笔试成绩");
//        row2.createCell(3).setCellValue("机试成绩");
//        //在sheet里创建第三行
//        HSSFRow row3 = sheet.createRow(2);
//        row3.createCell(0).setCellValue("李明");
//        row3.createCell(1).setCellValue("As178");
//        row3.createCell(2).setCellValue(87);
//        row3.createCell(3).setCellValue(78);
//        //.....省略部分代码
//        //输出Excel文件
//        OutputStream output = response.getOutputStream();
//        response.reset();
//        response.setHeader("Content-disposition", "attachment; filename=details.xls");
//        response.setContentType("application/msexcel");
//        wb.write(output);
//        output.close();
//    }

}

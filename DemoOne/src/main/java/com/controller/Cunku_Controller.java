package com.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.entity.TbFencangList;
import com.entity.TbInto;
import com.entity.TbOut;
import com.entity.TbStoreinfo;
import com.entity.WriteExcel;
import com.service.TbFencangListService;
import com.service.TbIntoService;
import com.service.TbOutService;
import com.service.TbStoreinfoService;

import jxl.Workbook;
import jxl.format.UnderlineStyle;
import jxl.write.Label;
import jxl.write.WritableCellFormat;
import jxl.write.WritableFont;
import jxl.write.WritableSheet;
import jxl.write.WritableWorkbook;
import jxl.write.WriteException;
import jxl.write.biff.RowsExceededException;

@Controller
@RequestMapping("/cunkuinfo")
public class Cunku_Controller {
	//访问存库服务器是由仓库及入库成存库
	@Autowired
	public TbFencangListService tbfencangDao;//分仓的服务器
	@Autowired
	public TbIntoService tbintoDao;//入库服务器
	@Autowired
	public TbStoreinfoService tbstoreDao;//存库的修改
	@Autowired
	public TbOutService TbOutDao;//出库表
	@RequestMapping("/tbfengcang_find_info")//仓库信息显示
	public String tbfengcang_find_info(TbFencangList gs,Model model) throws ServletException, IOException {
		List<TbFencangList> list= tbfencangDao.find_info(gs);
		model.addAttribute("list", list.get(0));
		return "pages/ sovereign/Test";/* cunku_goods */
	}
	
	@RequestMapping("/tbinto_insert")//入库信息
	@ResponseBody
	public void tbinto_insert(TbInto gs) {
		tbintoDao.insertuser(gs);
	}
	@RequestMapping("/kucun_update")//入库信息
	@ResponseBody
	public void kucun_update(TbStoreinfo gs) {
		tbstoreDao.kucun_update(gs);
	}
	@RequestMapping("/cunku_infomation")//存库--信息
	@ResponseBody
	public List<TbStoreinfo> panku_caoz(TbStoreinfo gs) {
		List<TbStoreinfo> list = tbstoreDao.findAll(gs);
		return list;
	}
	
	/**
	 * 出库的查询全部
	 * @return
	 */
	@RequestMapping("/TbOut_findall")
	@ResponseBody
	public List<TbOut> TbOut_findall() {
		List<TbOut> list = TbOutDao.findAll();
		return list;
	}
	
	
	//盘库操作
	@RequestMapping("/panku_caozuo")//盘库操作  panku_caozuo
	@ResponseBody
	public String panku(TbStoreinfo cangku,HttpServletRequest req) {
		// excel存放路径
		String realPath = req.getSession().getServletContext().getRealPath("/");
		String exclePath = "static\\panku\\";
		String pathName ="盘库表.xls";
		String fileName = realPath + exclePath + pathName;
		File xlsFile = new File(fileName);
		System.out.println("-------------------------------------------" + fileName);
		WritableWorkbook workbook = null;
		try {
			workbook = Workbook.createWorkbook(xlsFile);
			WritableSheet sheet = workbook.createSheet("sheet", 0);
			Date date = new Date();
			//日期格式装换
			SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			String zhDate=sdf.format(date);
			try {
				WritableFont wf = new WritableFont(WritableFont.ARIAL, 15,WritableFont.BOLD, false, UnderlineStyle.NO_UNDERLINE,jxl.format.Colour.BLACK); // 定义格式 字体 下划线 斜体 粗体 颜色
				WritableCellFormat wcf = new WritableCellFormat(wf); // 单元格定义
				wcf.setAlignment(jxl.format.Alignment.CENTRE); // 设置对齐方式
				//标题样式
				WritableFont wftit = new WritableFont(WritableFont.ARIAL, 15,WritableFont.BOLD, false, UnderlineStyle.NO_UNDERLINE,jxl.format.Colour.BLACK); // 定义格式 字体 下划线 斜体 粗体 颜色
				WritableCellFormat wcftit = new WritableCellFormat(wftit); // 单元格定义
/*				wcftit.setBackground(jxl.format.Colour.WHITE); // 设置单元格的背景颜色*/
				wcftit.setAlignment(jxl.format.Alignment.CENTRE); // 设置对齐方式
				//内容样式
				WritableFont wfcont = new WritableFont(WritableFont.ARIAL, 14,WritableFont.NO_BOLD, false, UnderlineStyle.NO_UNDERLINE,jxl.format.Colour.BLACK); // 定义格式 字体 下划线 斜体 粗体 颜色
				WritableCellFormat wccont = new WritableCellFormat(wfcont); // 单元格定义
				wccont.setAlignment(jxl.format.Alignment.CENTRE); // 设置对齐方式
				// 因为仓库名为唯一约束（所以这里采用根据仓库名查询）
				List<TbStoreinfo> cangkus = tbstoreDao.findAllList();
				System.out.println("cangkus"+cangkus);
				if (cangkus != null && cangkus.size() > 0) {
					for (int i = 0; i < cangkus.size(); i++) {
						sheet.addCell(new Label(0, 0,zhDate+":"+cangkus.get(i).getNumber() + "数量",wcf));
			            sheet.mergeCells(0, 0, 5, 0);//合并垮了5列。
						sheet.addCell(new Label(0, 1, "入库时间"+":" + cangkus.get(i).getDatetime(),wcf));
						sheet.addCell(new Label(1, 1, "保质期"+":" + cangkus.get(i).getLasttime(),wcf));
						sheet.addCell(new Label(2, 1, "上限"+":" + cangkus.get(i).getMore().toString(),wcf));
						sheet.addCell(new Label(3, 1, "下限"+":" + cangkus.get(i).getLittle().toString(),wcf));
						sheet.addCell(new Label(3, 1, "入库数量"+":" + cangkus.get(i).getNumber().toString(),wcf));
						sheet.addCell(new Label(3, 1, "生产日期"+":" + cangkus.get(i).getLasttime().toString(),wcf));
						sheet.addCell(new Label(3, 1, "入库物品"+":" + cangkus.get(i).getCunkuinfo().toString(),wcf));
						sheet.addCell(new Label(3, 1, "到期时间"+":" + cangkus.get(i).getTixindate().toString(),wcf));
					}
				}
				// 设置列表名
				sheet.addCell(new Label(0, 2, "商品名",wcftit));
				sheet.addCell(new Label(1, 2, "供应商",wcftit));
				sheet.addCell(new Label(2, 2, "入库仓库",wcftit));
				sheet.addCell(new Label(3, 2, "当前数量",wcftit));
				sheet.addCell(new Label(4, 2, "实际数量",wcftit));
				sheet.addCell(new Label(5, 2, "备注",wcftit));
				//设置行宽
				sheet.setColumnView(0,30); 
				sheet.setColumnView(1,30); 
				sheet.setColumnView(2,30); 
				sheet.setColumnView(3,30); 
				sheet.setColumnView(4,30); 
				sheet.setColumnView(5,30); 
				sheet.setColumnView(6,30); 
				//设置行高
				sheet.setRowView(0, 500);
				sheet.setRowView(2, 500);
				workbook.write();
				workbook.close();
			} catch (RowsExceededException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (WriteException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "";
	}
	
}

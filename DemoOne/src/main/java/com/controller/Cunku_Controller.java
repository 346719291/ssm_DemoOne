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
	//���ʴ����������ɲֿ⼰���ɴ��
	@Autowired
	public TbFencangListService tbfencangDao;//�ֲֵķ�����
	@Autowired
	public TbIntoService tbintoDao;//��������
	@Autowired
	public TbStoreinfoService tbstoreDao;//�����޸�
	@Autowired
	public TbOutService TbOutDao;//�����
	@RequestMapping("/tbfengcang_find_info")//�ֿ���Ϣ��ʾ
	public String tbfengcang_find_info(TbFencangList gs,Model model) throws ServletException, IOException {
		List<TbFencangList> list= tbfencangDao.find_info(gs);
		model.addAttribute("list", list.get(0));
		return "pages/ sovereign/Test";/* cunku_goods */
	}
	
	@RequestMapping("/tbinto_insert")//�����Ϣ
	@ResponseBody
	public void tbinto_insert(TbInto gs) {
		tbintoDao.insertuser(gs);
	}
	@RequestMapping("/kucun_update")//�����Ϣ
	@ResponseBody
	public void kucun_update(TbStoreinfo gs) {
		tbstoreDao.kucun_update(gs);
	}
	@RequestMapping("/cunku_infomation")//���--��Ϣ
	@ResponseBody
	public List<TbStoreinfo> panku_caoz(TbStoreinfo gs) {
		List<TbStoreinfo> list = tbstoreDao.findAll(gs);
		return list;
	}
	
	/**
	 * ����Ĳ�ѯȫ��
	 * @return
	 */
	@RequestMapping("/TbOut_findall")
	@ResponseBody
	public List<TbOut> TbOut_findall() {
		List<TbOut> list = TbOutDao.findAll();
		return list;
	}
	
	
	//�̿����
	@RequestMapping("/panku_caozuo")//�̿����  panku_caozuo
	@ResponseBody
	public String panku(TbStoreinfo cangku,HttpServletRequest req) {
		// excel���·��
		String realPath = req.getSession().getServletContext().getRealPath("/");
		String exclePath = "static\\panku\\";
		String pathName ="�̿��.xls";
		String fileName = realPath + exclePath + pathName;
		File xlsFile = new File(fileName);
		System.out.println("-------------------------------------------" + fileName);
		WritableWorkbook workbook = null;
		try {
			workbook = Workbook.createWorkbook(xlsFile);
			WritableSheet sheet = workbook.createSheet("sheet", 0);
			Date date = new Date();
			//���ڸ�ʽװ��
			SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			String zhDate=sdf.format(date);
			try {
				WritableFont wf = new WritableFont(WritableFont.ARIAL, 15,WritableFont.BOLD, false, UnderlineStyle.NO_UNDERLINE,jxl.format.Colour.BLACK); // �����ʽ ���� �»��� б�� ���� ��ɫ
				WritableCellFormat wcf = new WritableCellFormat(wf); // ��Ԫ����
				wcf.setAlignment(jxl.format.Alignment.CENTRE); // ���ö��뷽ʽ
				//������ʽ
				WritableFont wftit = new WritableFont(WritableFont.ARIAL, 15,WritableFont.BOLD, false, UnderlineStyle.NO_UNDERLINE,jxl.format.Colour.BLACK); // �����ʽ ���� �»��� б�� ���� ��ɫ
				WritableCellFormat wcftit = new WritableCellFormat(wftit); // ��Ԫ����
/*				wcftit.setBackground(jxl.format.Colour.WHITE); // ���õ�Ԫ��ı�����ɫ*/
				wcftit.setAlignment(jxl.format.Alignment.CENTRE); // ���ö��뷽ʽ
				//������ʽ
				WritableFont wfcont = new WritableFont(WritableFont.ARIAL, 14,WritableFont.NO_BOLD, false, UnderlineStyle.NO_UNDERLINE,jxl.format.Colour.BLACK); // �����ʽ ���� �»��� б�� ���� ��ɫ
				WritableCellFormat wccont = new WritableCellFormat(wfcont); // ��Ԫ����
				wccont.setAlignment(jxl.format.Alignment.CENTRE); // ���ö��뷽ʽ
				// ��Ϊ�ֿ���ΪΨһԼ��������������ø��ݲֿ�����ѯ��
				List<TbStoreinfo> cangkus = tbstoreDao.findAllList();
				System.out.println("cangkus"+cangkus);
				if (cangkus != null && cangkus.size() > 0) {
					for (int i = 0; i < cangkus.size(); i++) {
						sheet.addCell(new Label(0, 0,zhDate+":"+cangkus.get(i).getNumber() + "����",wcf));
			            sheet.mergeCells(0, 0, 5, 0);//�ϲ�����5�С�
						sheet.addCell(new Label(0, 1, "���ʱ��"+":" + cangkus.get(i).getDatetime(),wcf));
						sheet.addCell(new Label(1, 1, "������"+":" + cangkus.get(i).getLasttime(),wcf));
						sheet.addCell(new Label(2, 1, "����"+":" + cangkus.get(i).getMore().toString(),wcf));
						sheet.addCell(new Label(3, 1, "����"+":" + cangkus.get(i).getLittle().toString(),wcf));
						sheet.addCell(new Label(3, 1, "�������"+":" + cangkus.get(i).getNumber().toString(),wcf));
						sheet.addCell(new Label(3, 1, "��������"+":" + cangkus.get(i).getLasttime().toString(),wcf));
						sheet.addCell(new Label(3, 1, "�����Ʒ"+":" + cangkus.get(i).getCunkuinfo().toString(),wcf));
						sheet.addCell(new Label(3, 1, "����ʱ��"+":" + cangkus.get(i).getTixindate().toString(),wcf));
					}
				}
				// �����б���
				sheet.addCell(new Label(0, 2, "��Ʒ��",wcftit));
				sheet.addCell(new Label(1, 2, "��Ӧ��",wcftit));
				sheet.addCell(new Label(2, 2, "���ֿ�",wcftit));
				sheet.addCell(new Label(3, 2, "��ǰ����",wcftit));
				sheet.addCell(new Label(4, 2, "ʵ������",wcftit));
				sheet.addCell(new Label(5, 2, "��ע",wcftit));
				//�����п�
				sheet.setColumnView(0,30); 
				sheet.setColumnView(1,30); 
				sheet.setColumnView(2,30); 
				sheet.setColumnView(3,30); 
				sheet.setColumnView(4,30); 
				sheet.setColumnView(5,30); 
				sheet.setColumnView(6,30); 
				//�����и�
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

package shopMgr;

import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;

import javax.naming.NamingException;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.justep.baas.action.ActionContext;
import com.justep.baas.data.Row;
import com.justep.baas.data.Table;
import com.justep.baas.data.Transform;
import com.justep.baas.data.sql.SQLException;

public class ShopMgr {
	private static final String DATASOURCE_SHOPMGR = "shopMgr";

	public static JSONObject inCome(JSONObject params, ActionContext context) throws SQLException, NamingException, java.sql.SQLException {
		Connection conn = null;
		java.sql.Statement statement = null;
		JSONArray JSONTime = params.getJSONArray("data");// JSONtime =
															// [{startTime:,endTime:},{startTime:,endTime:},{startTime:,endTime:}]
		JSONArray oStore = params.getJSONArray("oStore");// oStore =
															// [{"storeCode":"B001"}]
		String storeCode = oStore.getJSONObject(0).getString("storeCode");
		// System.out.println(oStore);
		// System.out.println(storeCode);
		JSONObject ret = new JSONObject();
		conn = context.getConnection(DATASOURCE_SHOPMGR);
		String sql_01 = null;
		String sql_02 = null;
		ArrayList<Number> al = new ArrayList<Number>();
		for (int i = 0; i < JSONTime.size(); i++) {
			String startTime = JSONTime.getJSONObject(i).getString("startTime");
			String endTime = JSONTime.getJSONObject(i).getString("endTime");

			// 计算今日、本周、本月营收
			sql_01 = "select isnull(sum(t.je_xf_xj),0) + isnull(sum(t.je_xf_bank),0) + isnull(sum(t.je_xf_vipshye),0) + isnull(sum(t.je_xf_djj),0) + isnull(sum(t.je_xf_tg),0) + isnull(sum(t.je_xf_qk),0) + isnull(sum(t.je_xf_md),0) + isnull(sum(t.je_xf_my),0) as sum_total from v_ys_statis t where t.rq between '"
					+ startTime + "' and '" + endTime + "' and bm_gsjg = '" + storeCode + "'";
			System.out.println(sql_01);
			statement = conn.createStatement();
			ResultSet rs_01 = statement.executeQuery(sql_01);
			Table table_01 = Transform.resultSetToTable(rs_01, "", null);
			for (Row row : table_01.getRows()) {
				Number value = row.getDecimal("sum_total");
				al.add(value);
			}
		}

		// 计算满足久未到店条件的人数，并返回前端
		sql_02 = " select count(longNO) AS count,viplastdate_ts from (select   t.bm_gsjg,DATEDIFF(day,isnull(CONVERT(varchar(8), t.lastxf_date, 112),CONVERT(varchar(8), getdate(), 112)),CONVERT(varchar(8), getdate() , 112))  - p.viplastdate_ts as longNO,viplastdate_ts from t_bm_vip t,t_sys_config p) m where m.longNO > 0 and m.bm_gsjg = '"
				+ storeCode + "' group by viplastdate_ts";
		System.out.println(sql_02);
		ResultSet rs_02 = statement.executeQuery(sql_02);
		Table table_02 = Transform.resultSetToTable(rs_02, "", null);
		boolean flag = true;
		Number counts;
		Number values;
		for (Row row : table_02.getRows()) {
			counts = row.getInteger("count");
			values = row.getDecimal("viplastdate_ts").toBigInteger();
			System.out.println(counts);
			System.out.println(values);
			al.add(counts);
			al.add(values);
			flag = false;
		}
		if (flag) {
			al.add(0);
			al.add(0);
		}

		// al.add(table_02.getRows().get(0).getInteger("count"));
		// al.add(table_02.getRows().get(0).getDecimal("viplastdate_ts").toBigInteger());
		ret.put("params", al);
		System.out.println(ret);
		return ret;
	}

	public static JSONObject czStatis(JSONObject params, ActionContext context) throws SQLException, NamingException, java.sql.SQLException {
		Connection conn = null;
		java.sql.Statement statement = null;
		String startTime = params.getString("startTime");// JSONtime =
															// [{startTime:,endTime:},{startTime:,endTime:},{startTime:,endTime:}]
		String endTime = params.getString("endTime");// oStore =
														// [{"storeCode":"B001"}]
		String storeCode = params.getString("store");// oStore =
														// [{"storeCode":"B001"}]
		System.out.println(startTime);
		System.out.println(endTime);
		System.out.println(storeCode);
		conn = context.getConnection(DATASOURCE_SHOPMGR);
		String sql = null;
		// 计算满足久未到店条件的人数，并返回前端
		sql = "select t.bm_gsjg,sum(t.count) as count,sum(t.cz) as cz,sum(t.zs) as zs,sum(t.jfdh) as jfdh,sum(pre) as pre,t.mc,t.bm_vipfl from v_cz_statis t where t.rq between '" + startTime
				+ "' and '" + endTime + "' and bm_gsjg = '" + storeCode + "' group by t.mc,t.bm_vipfl,t.bm_gsjg";
		System.out.println(sql);
		statement = conn.createStatement();
		ResultSet rs = statement.executeQuery(sql);
		Table table = Transform.resultSetToTable(rs, "", null);
		return Transform.tableToJson(table);
	}

	public static JSONObject longNo(JSONObject params, ActionContext context) throws SQLException, NamingException, java.sql.SQLException {
		Connection conn = null;
		java.sql.Statement statement = null;
		String storeCode = params.getString("store");// oStore =
		JSONObject jsonObject = new	JSONObject();											// [{"storeCode":"B001"}]
		conn = context.getConnection(DATASOURCE_SHOPMGR);
		String sql = null;
		// 计算满足久未到店条件的人数，并返回前端
		sql = "select count(1) as count,t.mc_bm_vipfl,t.bm_vipfl from v_longNo t where t.bm_gsjg = '" + storeCode + "' group by t.mc_bm_vipfl,t.bm_vipfl";
		System.out.println(sql);
		statement = conn.createStatement();
		ResultSet rs = statement.executeQuery(sql);
		Table table = Transform.resultSetToTable(rs, "", null);
		ArrayList<HashMap<String, Object>> al = new ArrayList<HashMap<String, Object>>();
		for (Row row : table.getRows()) {
			HashMap<String, Object> hm = new HashMap<String, Object>();
			Number count = row.getInteger("count");
			String typeName = row.getString("mc_bm_vipfl");
			System.out.println(count);
			System.out.println(typeName);
			hm.put("name", typeName);
			hm.put("value", count);
			al.add(hm);
		}
		jsonObject.put("value", al);
		System.out.println(jsonObject);
		return jsonObject;
	}
}

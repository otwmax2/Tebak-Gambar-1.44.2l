package com.vungle.warren.model;

import android.content.ContentValues;
import com.google.gson.f;
import com.google.gson.g;
import com.vungle.warren.model.Report;
import com.vungle.warren.persistence.ContentValuesUtil;
import com.vungle.warren.persistence.DBAdapter;
import com.vungle.warren.persistence.IdColumns;
import g7.a;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class ReportDBAdapter implements DBAdapter<Report> {
    public static final String CREATE_REPORT_TABLE_QUERY = "CREATE TABLE IF NOT EXISTS report(_id INTEGER PRIMARY KEY AUTOINCREMENT, item_id TEXT UNIQUE,appId TEXT, placementId TEXT, adToken TEXT, incentivized SHORT, header_bidding SHORT, adStartTime NUMERIC, url TEXT, ad_duration NUMERIC, tt_download NUMERIC, campaign TEXT, videoViewed NUMERIC, ad_type TEXT, template_id TEXT, was_CTAC_licked SHORT, clicked_through TEXT, errors TEXT, user_actions TEXT, user_id TEXT, ordinal INT, videoLength NUMERIC, status INT, ad_size TEXT, init_timestamp NUMERIC, asset_download_duration NUMERIC,play_remote_url SHORT )";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private f f28201a = new g().b();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    Type f28202b = new a<ArrayList<String>>() { // from class: com.vungle.warren.model.ReportDBAdapter.1
    }.getType();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    Type f28203c = new a<ArrayList<Report.UserAction>>() { // from class: com.vungle.warren.model.ReportDBAdapter.2
    }.getType();

    public interface ReportColumns extends IdColumns {
        public static final String COLUMN_AD_DURATION = "ad_duration";
        public static final String COLUMN_AD_SIZE = "ad_size";
        public static final String COLUMN_AD_START_TIME = "adStartTime";
        public static final String COLUMN_AD_TOKEN = "adToken";
        public static final String COLUMN_AD_TYPE = "ad_type";
        public static final String COLUMN_APP_ID = "appId";
        public static final String COLUMN_ASSET_DOWNLOAD_DURATION = "asset_download_duration";
        public static final String COLUMN_CAMPAIGN = "campaign";
        public static final String COLUMN_CLICKED_THROUGH = "clicked_through";
        public static final String COLUMN_ERRORS = "errors";
        public static final String COLUMN_HEADERBIDDING = "header_bidding";
        public static final String COLUMN_INCENTIVIZED = "incentivized";
        public static final String COLUMN_INIT_TIMESTAMP = "init_timestamp";
        public static final String COLUMN_ORDINAL = "ordinal";
        public static final String COLUMN_PLACEMENT_ID = "placementId";
        public static final String COLUMN_PLAY_REMOTE_URL = "play_remote_url";
        public static final String COLUMN_REPORT_STATUS = "status";
        public static final String COLUMN_TEMPATE_ID = "template_id";
        public static final String COLUMN_TT_DOWNLOAD = "tt_download";
        public static final String COLUMN_URL = "url";
        public static final String COLUMN_USER_ACTIONS = "user_actions";
        public static final String COLUMN_USER_ID = "user_id";
        public static final String COLUMN_VIDEO_LENGTH = "videoLength";
        public static final String COLUMN_VIDEO_VIEWED = "videoViewed";
        public static final String COLUMN_WAS_CTA_CLICKED = "was_CTAC_licked";
        public static final String TABLE_NAME = "report";
    }

    @Override // com.vungle.warren.persistence.DBAdapter
    public String tableName() {
        return ReportColumns.TABLE_NAME;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.vungle.warren.persistence.DBAdapter
    public Report fromContentValues(ContentValues contentValues) {
        Report report = new Report();
        report.f28184k = contentValues.getAsLong(ReportColumns.COLUMN_AD_DURATION).longValue();
        report.f28181h = contentValues.getAsLong(ReportColumns.COLUMN_AD_START_TIME).longValue();
        report.f28176c = contentValues.getAsString(ReportColumns.COLUMN_AD_TOKEN);
        report.f28192s = contentValues.getAsString("ad_type");
        report.f28177d = contentValues.getAsString("appId");
        report.f28186m = contentValues.getAsString("campaign");
        report.f28195v = contentValues.getAsInteger(ReportColumns.COLUMN_ORDINAL).intValue();
        report.f28175b = contentValues.getAsString(ReportColumns.COLUMN_PLACEMENT_ID);
        report.f28193t = contentValues.getAsString(ReportColumns.COLUMN_TEMPATE_ID);
        report.f28185l = contentValues.getAsLong("tt_download").longValue();
        report.f28182i = contentValues.getAsString("url");
        report.f28194u = contentValues.getAsString("user_id");
        report.f28183j = contentValues.getAsLong("videoLength").longValue();
        report.f28188o = contentValues.getAsInteger(ReportColumns.COLUMN_VIDEO_VIEWED).intValue();
        report.f28197x = ContentValuesUtil.getBoolean(contentValues, ReportColumns.COLUMN_WAS_CTA_CLICKED);
        report.f28178e = ContentValuesUtil.getBoolean(contentValues, "incentivized");
        report.f28179f = ContentValuesUtil.getBoolean(contentValues, "header_bidding");
        report.f28174a = contentValues.getAsInteger("status").intValue();
        report.f28196w = contentValues.getAsString("ad_size");
        report.initTimeStamp = contentValues.getAsLong(ReportColumns.COLUMN_INIT_TIMESTAMP).longValue();
        report.assetDownloadDuration = contentValues.getAsLong("asset_download_duration").longValue();
        report.f28180g = ContentValuesUtil.getBoolean(contentValues, ReportColumns.COLUMN_PLAY_REMOTE_URL);
        List list = (List) this.f28201a.l(contentValues.getAsString(ReportColumns.COLUMN_CLICKED_THROUGH), this.f28202b);
        List list2 = (List) this.f28201a.l(contentValues.getAsString(ReportColumns.COLUMN_ERRORS), this.f28202b);
        List list3 = (List) this.f28201a.l(contentValues.getAsString(ReportColumns.COLUMN_USER_ACTIONS), this.f28203c);
        if (list != null) {
            report.f28190q.addAll(list);
        }
        if (list2 != null) {
            report.f28191r.addAll(list2);
        }
        if (list3 != null) {
            report.f28189p.addAll(list3);
        }
        return report;
    }

    @Override // com.vungle.warren.persistence.DBAdapter
    public ContentValues toContentValues(Report report) {
        ContentValues contentValues = new ContentValues();
        contentValues.put(IdColumns.COLUMN_IDENTIFIER, report.getId());
        contentValues.put(ReportColumns.COLUMN_AD_DURATION, Long.valueOf(report.f28184k));
        contentValues.put(ReportColumns.COLUMN_AD_START_TIME, Long.valueOf(report.f28181h));
        contentValues.put(ReportColumns.COLUMN_AD_TOKEN, report.f28176c);
        contentValues.put("ad_type", report.f28192s);
        contentValues.put("appId", report.f28177d);
        contentValues.put("campaign", report.f28186m);
        contentValues.put("incentivized", Boolean.valueOf(report.f28178e));
        contentValues.put("header_bidding", Boolean.valueOf(report.f28179f));
        contentValues.put(ReportColumns.COLUMN_ORDINAL, Integer.valueOf(report.f28195v));
        contentValues.put(ReportColumns.COLUMN_PLACEMENT_ID, report.f28175b);
        contentValues.put(ReportColumns.COLUMN_TEMPATE_ID, report.f28193t);
        contentValues.put("tt_download", Long.valueOf(report.f28185l));
        contentValues.put("url", report.f28182i);
        contentValues.put("user_id", report.f28194u);
        contentValues.put("videoLength", Long.valueOf(report.f28183j));
        contentValues.put(ReportColumns.COLUMN_VIDEO_VIEWED, Integer.valueOf(report.f28188o));
        contentValues.put(ReportColumns.COLUMN_WAS_CTA_CLICKED, Boolean.valueOf(report.f28197x));
        contentValues.put(ReportColumns.COLUMN_USER_ACTIONS, this.f28201a.u(new ArrayList(report.f28189p), this.f28203c));
        contentValues.put(ReportColumns.COLUMN_CLICKED_THROUGH, this.f28201a.u(new ArrayList(report.f28190q), this.f28202b));
        contentValues.put(ReportColumns.COLUMN_ERRORS, this.f28201a.u(new ArrayList(report.f28191r), this.f28202b));
        contentValues.put("status", Integer.valueOf(report.f28174a));
        contentValues.put("ad_size", report.f28196w);
        contentValues.put(ReportColumns.COLUMN_INIT_TIMESTAMP, Long.valueOf(report.initTimeStamp));
        contentValues.put("asset_download_duration", Long.valueOf(report.assetDownloadDuration));
        contentValues.put(ReportColumns.COLUMN_PLAY_REMOTE_URL, Boolean.valueOf(report.f28180g));
        return contentValues;
    }
}

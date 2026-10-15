package com.vungle.warren.model;

import android.content.ContentValues;
import android.util.Pair;
import com.google.gson.f;
import com.google.gson.g;
import com.vungle.warren.AdConfig;
import com.vungle.warren.model.Advertisement;
import com.vungle.warren.persistence.ContentValuesUtil;
import com.vungle.warren.persistence.DBAdapter;
import com.vungle.warren.persistence.IdColumns;
import g7.a;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class AdvertisementDBAdapter implements DBAdapter<Advertisement> {
    public static final String CREATE_ADVERTISEMENT_TABLE_QUERY = "CREATE TABLE IF NOT EXISTS advertisement(_id INTEGER PRIMARY KEY AUTOINCREMENT,  item_id TEXT UNIQUE, ad_config TEXT,ad_type INT, expire_time NUMERIC, delay NUMERIC, show_close_delay INT, show_close_incentivized INT, countdown INT, video_height INT, video_width INT, cta_overlay_enabled SHORT, cta_click_area NUMERIC, retry_count INT, requires_non_market_install SHORT, app_id TEXT, campaign TEXT, video_url TEXT, md5 TEXT, postroll_bundle_url TEXT, cta_destination_url TEXT, cta_url TEXT, ad_token TEXT, video_identifier TEXT, template_url TEXT, TEMPLATE_ID TEXT, TEMPLATE_TYPE TEXT, ad_market_id TEXT,bid_token TEXT,  checkpoints TEXT, template_settings TEXT, mraid_files TEXT, cacheable_assets TEXT, state INT, placement_id TEXT, tt_download NUMERIC,asset_download_timestamp NUMERIC,asset_download_duration NUMERIC,ad_request_start_time NUMERIC,column_enable_om_sdk SHORT,column_om_sdk_extra_vast TEXT,column_request_timestamp NUMERIC, dynamic_events_and_urls TEXT, column_assets_fully_downloaded SHORT)";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    static final Type f28134e = new a<List<Advertisement.Checkpoint>>() { // from class: com.vungle.warren.model.AdvertisementDBAdapter.3
    }.getType();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    static final Type f28135f = new a<Map<String, ArrayList<String>>>() { // from class: com.vungle.warren.model.AdvertisementDBAdapter.4
    }.getType();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private f f28136a = new g().b();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Type f28137b = new a<String[]>() { // from class: com.vungle.warren.model.AdvertisementDBAdapter.1
    }.getType();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Type f28138c = new a<Map<String, String>>() { // from class: com.vungle.warren.model.AdvertisementDBAdapter.2
    }.getType();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Type f28139d = new a<Map<String, Pair<String, String>>>() { // from class: com.vungle.warren.model.AdvertisementDBAdapter.5
    }.getType();

    public interface AdvertisementColumns extends IdColumns {
        public static final String COLUMN_AD_CONFIG = "ad_config";
        public static final String COLUMN_AD_MARKET_ID = "ad_market_id";
        public static final String COLUMN_AD_REQUEST_START_TIMESTAMP = "ad_request_start_time";
        public static final String COLUMN_AD_TOKEN = "ad_token";
        public static final String COLUMN_AD_TYPE = "ad_type";
        public static final String COLUMN_APP_ID = "app_id";
        public static final String COLUMN_ASSETS_FULLY_DOWNLOADED = "column_assets_fully_downloaded";
        public static final String COLUMN_ASSET_DOWNLOAD_DURATION = "asset_download_duration";
        public static final String COLUMN_ASSET_DOWNLOAD_TIMESTAMP = "asset_download_timestamp";
        public static final String COLUMN_BID_TOKEN = "bid_token";
        public static final String COLUMN_CACHEABLE_ASSETS = "cacheable_assets";
        public static final String COLUMN_CAMPAIGN = "campaign";
        public static final String COLUMN_CHECKPOINTS = "checkpoints";
        public static final String COLUMN_COUNTDOWN = "countdown";
        public static final String COLUMN_CTA_CLICK_AREA = "cta_click_area";
        public static final String COLUMN_CTA_DESTINATION_URL = "cta_destination_url";
        public static final String COLUMN_CTA_OVERLAY_ENABLED = "cta_overlay_enabled";
        public static final String COLUMN_CTA_URL = "cta_url";
        public static final String COLUMN_DELAY = "delay";
        public static final String COLUMN_DYNAMIC_EVENTS_AND_URLS = "dynamic_events_and_urls";
        public static final String COLUMN_ENABLE_OM_SDK = "column_enable_om_sdk";
        public static final String COLUMN_EXPIRE_TIME = "expire_time";
        public static final String COLUMN_MD5 = "md5";
        public static final String COLUMN_MRAID_FILES = "mraid_files";
        public static final String COLUMN_OM_SDK_EXTRA_VAST = "column_om_sdk_extra_vast";
        public static final String COLUMN_PLACEMENT_ID = "placement_id";
        public static final String COLUMN_POSTROLL_BUNDLE_URL = "postroll_bundle_url";
        public static final String COLUMN_REQUIRES_NON_MARKET_INSTALL = "requires_non_market_install";
        public static final String COLUMN_RETRY_COUNT = "retry_count";
        public static final String COLUMN_SERVER_REQUEST_TIMESTAMP = "column_request_timestamp";
        public static final String COLUMN_SHOW_CLOSE_DELAY = "show_close_delay";
        public static final String COLUMN_SHOW_CLOSE_INCENTIVISED = "show_close_incentivized";
        public static final String COLUMN_STATE = "state";
        public static final String COLUMN_TEMPLATE_ID = "TEMPLATE_ID";
        public static final String COLUMN_TEMPLATE_SETTINGS = "template_settings";
        public static final String COLUMN_TEMPLATE_TYPE = "TEMPLATE_TYPE";
        public static final String COLUMN_TEMPLATE_URL = "template_url";
        public static final String COLUMN_TT_DOWNLOAD = "tt_download";
        public static final String COLUMN_VIDEO_HEIGHT = "video_height";
        public static final String COLUMN_VIDEO_IDENTIFIER = "video_identifier";
        public static final String COLUMN_VIDEO_URL = "video_url";
        public static final String COLUMN_VIDEO_WIDTH = "video_width";
        public static final String TABLE_NAME = "advertisement";
    }

    @Override // com.vungle.warren.persistence.DBAdapter
    public String tableName() {
        return AdvertisementColumns.TABLE_NAME;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.vungle.warren.persistence.DBAdapter
    public Advertisement fromContentValues(ContentValues contentValues) {
        Advertisement advertisement = new Advertisement();
        advertisement.f28122q = contentValues.getAsString(IdColumns.COLUMN_IDENTIFIER);
        advertisement.f28121p = contentValues.getAsInteger("ad_type").intValue();
        advertisement.f28124s = contentValues.getAsLong(AdvertisementColumns.COLUMN_EXPIRE_TIME).longValue();
        advertisement.f28127v = contentValues.getAsInteger(AdvertisementColumns.COLUMN_DELAY).intValue();
        advertisement.f28129x = contentValues.getAsInteger(AdvertisementColumns.COLUMN_SHOW_CLOSE_DELAY).intValue();
        advertisement.f28130y = contentValues.getAsInteger(AdvertisementColumns.COLUMN_SHOW_CLOSE_INCENTIVISED).intValue();
        advertisement.f28131z = contentValues.getAsInteger(AdvertisementColumns.COLUMN_COUNTDOWN).intValue();
        advertisement.B = contentValues.getAsInteger(AdvertisementColumns.COLUMN_VIDEO_WIDTH).intValue();
        advertisement.C = contentValues.getAsInteger(AdvertisementColumns.COLUMN_VIDEO_HEIGHT).intValue();
        advertisement.K = contentValues.getAsInteger("retry_count").intValue();
        advertisement.W = ContentValuesUtil.getBoolean(contentValues, AdvertisementColumns.COLUMN_REQUIRES_NON_MARKET_INSTALL);
        advertisement.f28123r = contentValues.getAsString("app_id");
        advertisement.f28128w = contentValues.getAsString("campaign");
        advertisement.A = contentValues.getAsString(AdvertisementColumns.COLUMN_VIDEO_URL);
        advertisement.D = contentValues.getAsString(AdvertisementColumns.COLUMN_MD5);
        advertisement.E = contentValues.getAsString(AdvertisementColumns.COLUMN_POSTROLL_BUNDLE_URL);
        advertisement.H = contentValues.getAsString(AdvertisementColumns.COLUMN_CTA_DESTINATION_URL);
        advertisement.I = contentValues.getAsString(AdvertisementColumns.COLUMN_CTA_URL);
        advertisement.L = contentValues.getAsString(AdvertisementColumns.COLUMN_AD_TOKEN);
        advertisement.M = contentValues.getAsString(AdvertisementColumns.COLUMN_VIDEO_IDENTIFIER);
        advertisement.N = contentValues.getAsString(AdvertisementColumns.COLUMN_TEMPLATE_URL);
        advertisement.S = contentValues.getAsString(AdvertisementColumns.COLUMN_TEMPLATE_ID);
        advertisement.T = contentValues.getAsString(AdvertisementColumns.COLUMN_TEMPLATE_TYPE);
        advertisement.X = contentValues.getAsString(AdvertisementColumns.COLUMN_AD_MARKET_ID);
        advertisement.Y = contentValues.getAsString(AdvertisementColumns.COLUMN_BID_TOKEN);
        advertisement.Z = contentValues.getAsInteger("state").intValue();
        advertisement.f28117a0 = contentValues.getAsString(AdvertisementColumns.COLUMN_PLACEMENT_ID);
        advertisement.F = ContentValuesUtil.getBoolean(contentValues, AdvertisementColumns.COLUMN_CTA_OVERLAY_ENABLED);
        advertisement.G = ContentValuesUtil.getBoolean(contentValues, AdvertisementColumns.COLUMN_CTA_CLICK_AREA);
        advertisement.J = (AdConfig) this.f28136a.k(contentValues.getAsString(AdvertisementColumns.COLUMN_AD_CONFIG), AdConfig.class);
        advertisement.f28125t = (List) this.f28136a.l(contentValues.getAsString(AdvertisementColumns.COLUMN_CHECKPOINTS), f28134e);
        advertisement.f28126u = (Map) this.f28136a.l(contentValues.getAsString(AdvertisementColumns.COLUMN_DYNAMIC_EVENTS_AND_URLS), f28135f);
        advertisement.O = (Map) this.f28136a.l(contentValues.getAsString(AdvertisementColumns.COLUMN_TEMPLATE_SETTINGS), this.f28138c);
        advertisement.P = (Map) this.f28136a.l(contentValues.getAsString(AdvertisementColumns.COLUMN_MRAID_FILES), this.f28138c);
        advertisement.Q = (Map) this.f28136a.l(contentValues.getAsString(AdvertisementColumns.COLUMN_CACHEABLE_ASSETS), this.f28139d);
        advertisement.f28118b0 = contentValues.getAsLong("tt_download").longValue();
        advertisement.assetDownloadStartTime = contentValues.getAsLong(AdvertisementColumns.COLUMN_ASSET_DOWNLOAD_TIMESTAMP).longValue();
        advertisement.assetDownloadDuration = contentValues.getAsLong("asset_download_duration").longValue();
        advertisement.adRequestStartTime = contentValues.getAsLong(AdvertisementColumns.COLUMN_AD_REQUEST_START_TIMESTAMP).longValue();
        advertisement.U = ContentValuesUtil.getBoolean(contentValues, AdvertisementColumns.COLUMN_ENABLE_OM_SDK);
        advertisement.V = contentValues.getAsString(AdvertisementColumns.COLUMN_OM_SDK_EXTRA_VAST);
        advertisement.f28119c0 = contentValues.getAsLong(AdvertisementColumns.COLUMN_SERVER_REQUEST_TIMESTAMP).longValue();
        advertisement.assetsFullyDownloaded = ContentValuesUtil.getBoolean(contentValues, AdvertisementColumns.COLUMN_ASSETS_FULLY_DOWNLOADED);
        return advertisement;
    }

    @Override // com.vungle.warren.persistence.DBAdapter
    public ContentValues toContentValues(Advertisement advertisement) {
        ContentValues contentValues = new ContentValues();
        contentValues.put(IdColumns.COLUMN_IDENTIFIER, advertisement.f28122q);
        contentValues.put("ad_type", Integer.valueOf(advertisement.getAdType()));
        contentValues.put(AdvertisementColumns.COLUMN_EXPIRE_TIME, Long.valueOf(advertisement.f28124s));
        contentValues.put(AdvertisementColumns.COLUMN_DELAY, Integer.valueOf(advertisement.f28127v));
        contentValues.put(AdvertisementColumns.COLUMN_SHOW_CLOSE_DELAY, Integer.valueOf(advertisement.f28129x));
        contentValues.put(AdvertisementColumns.COLUMN_SHOW_CLOSE_INCENTIVISED, Integer.valueOf(advertisement.f28130y));
        contentValues.put(AdvertisementColumns.COLUMN_COUNTDOWN, Integer.valueOf(advertisement.f28131z));
        contentValues.put(AdvertisementColumns.COLUMN_VIDEO_WIDTH, Integer.valueOf(advertisement.B));
        contentValues.put(AdvertisementColumns.COLUMN_VIDEO_HEIGHT, Integer.valueOf(advertisement.C));
        contentValues.put(AdvertisementColumns.COLUMN_CTA_OVERLAY_ENABLED, Boolean.valueOf(advertisement.F));
        contentValues.put(AdvertisementColumns.COLUMN_CTA_CLICK_AREA, Boolean.valueOf(advertisement.G));
        contentValues.put("retry_count", Integer.valueOf(advertisement.K));
        contentValues.put(AdvertisementColumns.COLUMN_REQUIRES_NON_MARKET_INSTALL, Boolean.valueOf(advertisement.W));
        contentValues.put("app_id", advertisement.f28123r);
        contentValues.put("campaign", advertisement.f28128w);
        contentValues.put(AdvertisementColumns.COLUMN_VIDEO_URL, advertisement.A);
        contentValues.put(AdvertisementColumns.COLUMN_MD5, advertisement.D);
        contentValues.put(AdvertisementColumns.COLUMN_POSTROLL_BUNDLE_URL, advertisement.E);
        contentValues.put(AdvertisementColumns.COLUMN_CTA_DESTINATION_URL, advertisement.H);
        contentValues.put(AdvertisementColumns.COLUMN_CTA_URL, advertisement.I);
        contentValues.put(AdvertisementColumns.COLUMN_AD_TOKEN, advertisement.L);
        contentValues.put(AdvertisementColumns.COLUMN_VIDEO_IDENTIFIER, advertisement.M);
        contentValues.put(AdvertisementColumns.COLUMN_TEMPLATE_URL, advertisement.N);
        contentValues.put(AdvertisementColumns.COLUMN_TEMPLATE_ID, advertisement.S);
        contentValues.put(AdvertisementColumns.COLUMN_TEMPLATE_TYPE, advertisement.T);
        contentValues.put(AdvertisementColumns.COLUMN_AD_MARKET_ID, advertisement.X);
        contentValues.put(AdvertisementColumns.COLUMN_BID_TOKEN, advertisement.Y);
        contentValues.put("state", Integer.valueOf(advertisement.Z));
        contentValues.put(AdvertisementColumns.COLUMN_PLACEMENT_ID, advertisement.f28117a0);
        contentValues.put(AdvertisementColumns.COLUMN_AD_CONFIG, this.f28136a.t(advertisement.J));
        contentValues.put(AdvertisementColumns.COLUMN_CHECKPOINTS, this.f28136a.u(advertisement.f28125t, f28134e));
        contentValues.put(AdvertisementColumns.COLUMN_DYNAMIC_EVENTS_AND_URLS, this.f28136a.u(advertisement.f28126u, f28135f));
        contentValues.put(AdvertisementColumns.COLUMN_TEMPLATE_SETTINGS, this.f28136a.u(advertisement.O, this.f28138c));
        contentValues.put(AdvertisementColumns.COLUMN_MRAID_FILES, this.f28136a.u(advertisement.P, this.f28138c));
        contentValues.put(AdvertisementColumns.COLUMN_CACHEABLE_ASSETS, this.f28136a.u(advertisement.Q, this.f28139d));
        contentValues.put("tt_download", Long.valueOf(advertisement.f28118b0));
        contentValues.put(AdvertisementColumns.COLUMN_ASSET_DOWNLOAD_TIMESTAMP, Long.valueOf(advertisement.assetDownloadStartTime));
        contentValues.put("asset_download_duration", Long.valueOf(advertisement.assetDownloadDuration));
        contentValues.put(AdvertisementColumns.COLUMN_AD_REQUEST_START_TIMESTAMP, Long.valueOf(advertisement.adRequestStartTime));
        contentValues.put(AdvertisementColumns.COLUMN_ENABLE_OM_SDK, Boolean.valueOf(advertisement.U));
        contentValues.put(AdvertisementColumns.COLUMN_OM_SDK_EXTRA_VAST, advertisement.V);
        contentValues.put(AdvertisementColumns.COLUMN_SERVER_REQUEST_TIMESTAMP, Long.valueOf(advertisement.f28119c0));
        contentValues.put(AdvertisementColumns.COLUMN_ASSETS_FULLY_DOWNLOADED, Boolean.valueOf(advertisement.assetsFullyDownloaded));
        return contentValues;
    }
}

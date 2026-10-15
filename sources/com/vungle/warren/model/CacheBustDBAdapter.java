package com.vungle.warren.model;

import android.content.ContentValues;
import com.vungle.mediation.BuildConfig;
import com.vungle.warren.persistence.DBAdapter;
import com.vungle.warren.persistence.IdColumns;

/* JADX INFO: loaded from: classes2.dex */
public class CacheBustDBAdapter implements DBAdapter<CacheBust> {
    public static final String CREATE_CACHE_BUST_TABLE_QUERY = "CREATE TABLE IF NOT EXISTS cache_bust(_id INTEGER PRIMARY KEY AUTOINCREMENT, item_id TEXT UNIQUE, id TEXT, time_window_end INTEGER, id_type INTEGER, event_ids TEXT, timestamp_processed INTEGER )";

    public interface CacheBustColumns extends IdColumns {
        public static final String COLUMN_EVENT_ID = "id";
        public static final String COLUMN_EVENT_IDS = "event_ids";
        public static final String COLUMN_EVENT_ID_TYPE = "id_type";
        public static final String COLUMN_TIMESTAMP_PROCESSED = "timestamp_processed";
        public static final String COLUMN_TIME_WINDOW_END = "time_window_end";
        public static final String TABLE_NAME = "cache_bust";
    }

    static String a(String[] strArr) {
        if (strArr == null || strArr.length == 0) {
            return BuildConfig.FLAVOR;
        }
        if (strArr.length == 1) {
            return strArr[0];
        }
        StringBuilder sb = new StringBuilder(strArr[0]);
        for (int i10 = 1; i10 < strArr.length; i10++) {
            sb.append(";");
            sb.append(strArr[i10]);
        }
        return sb.toString();
    }

    static String[] b(String str) {
        return str.isEmpty() ? new String[0] : str.split(";");
    }

    @Override // com.vungle.warren.persistence.DBAdapter
    public String tableName() {
        return CacheBustColumns.TABLE_NAME;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.vungle.warren.persistence.DBAdapter
    public CacheBust fromContentValues(ContentValues contentValues) {
        CacheBust cacheBust = new CacheBust();
        cacheBust.f28143a = contentValues.getAsString("id");
        cacheBust.f28144b = contentValues.getAsLong(CacheBustColumns.COLUMN_TIME_WINDOW_END).longValue();
        cacheBust.f28145c = contentValues.getAsInteger(CacheBustColumns.COLUMN_EVENT_ID_TYPE).intValue();
        cacheBust.f28146d = b(contentValues.getAsString(CacheBustColumns.COLUMN_EVENT_IDS));
        cacheBust.f28147e = contentValues.getAsLong(CacheBustColumns.COLUMN_TIMESTAMP_PROCESSED).longValue();
        return cacheBust;
    }

    @Override // com.vungle.warren.persistence.DBAdapter
    public ContentValues toContentValues(CacheBust cacheBust) {
        ContentValues contentValues = new ContentValues();
        contentValues.put(IdColumns.COLUMN_IDENTIFIER, cacheBust.calculateId());
        contentValues.put("id", cacheBust.f28143a);
        contentValues.put(CacheBustColumns.COLUMN_TIME_WINDOW_END, Long.valueOf(cacheBust.f28144b));
        contentValues.put(CacheBustColumns.COLUMN_EVENT_ID_TYPE, Integer.valueOf(cacheBust.f28145c));
        contentValues.put(CacheBustColumns.COLUMN_EVENT_IDS, a(cacheBust.f28146d));
        contentValues.put(CacheBustColumns.COLUMN_TIMESTAMP_PROCESSED, Long.valueOf(cacheBust.f28147e));
        return contentValues;
    }
}

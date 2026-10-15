package com.vungle.warren.model;

import android.content.ContentValues;
import com.google.gson.f;
import com.google.gson.g;
import com.vungle.warren.persistence.DBAdapter;
import com.vungle.warren.persistence.IdColumns;
import g7.a;
import java.lang.reflect.Type;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class CookieDBAdapter implements DBAdapter<Cookie> {
    public static final String CREATE_COOKIE_TABLE_QUERY = "CREATE TABLE IF NOT EXISTS cookie(_id INTEGER PRIMARY KEY AUTOINCREMENT, item_id TEXT UNIQUE, bools TEXT, ints TEXT, longs TEXT, strings TEXT )";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private f f28153a = new g().b();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    Type f28154b = new a<Map<String, Boolean>>() { // from class: com.vungle.warren.model.CookieDBAdapter.1
    }.getType();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    Type f28155c = new a<Map<String, Integer>>() { // from class: com.vungle.warren.model.CookieDBAdapter.2
    }.getType();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    Type f28156d = new a<Map<String, Long>>() { // from class: com.vungle.warren.model.CookieDBAdapter.3
    }.getType();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    Type f28157e = new a<Map<String, String>>() { // from class: com.vungle.warren.model.CookieDBAdapter.4
    }.getType();

    public interface CookieColumns extends IdColumns {
        public static final String COLUMN_BOOLS = "bools";
        public static final String COLUMN_INTS = "ints";
        public static final String COLUMN_LONGS = "longs";
        public static final String COLUMN_STRINGS = "strings";
        public static final String TABLE_NAME = "cookie";
    }

    @Override // com.vungle.warren.persistence.DBAdapter
    public String tableName() {
        return CookieColumns.TABLE_NAME;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.vungle.warren.persistence.DBAdapter
    public Cookie fromContentValues(ContentValues contentValues) {
        Cookie cookie = new Cookie(contentValues.getAsString(IdColumns.COLUMN_IDENTIFIER));
        cookie.f28149b = (Map) this.f28153a.l(contentValues.getAsString(CookieColumns.COLUMN_BOOLS), this.f28154b);
        cookie.f28151d = (Map) this.f28153a.l(contentValues.getAsString(CookieColumns.COLUMN_LONGS), this.f28156d);
        cookie.f28150c = (Map) this.f28153a.l(contentValues.getAsString(CookieColumns.COLUMN_INTS), this.f28155c);
        cookie.f28148a = (Map) this.f28153a.l(contentValues.getAsString(CookieColumns.COLUMN_STRINGS), this.f28157e);
        return cookie;
    }

    @Override // com.vungle.warren.persistence.DBAdapter
    public ContentValues toContentValues(Cookie cookie) {
        ContentValues contentValues = new ContentValues();
        contentValues.put(IdColumns.COLUMN_IDENTIFIER, cookie.f28152e);
        contentValues.put(CookieColumns.COLUMN_BOOLS, this.f28153a.u(cookie.f28149b, this.f28154b));
        contentValues.put(CookieColumns.COLUMN_INTS, this.f28153a.u(cookie.f28150c, this.f28155c));
        contentValues.put(CookieColumns.COLUMN_LONGS, this.f28153a.u(cookie.f28151d, this.f28156d));
        contentValues.put(CookieColumns.COLUMN_STRINGS, this.f28153a.u(cookie.f28148a, this.f28157e));
        return contentValues;
    }
}

package com.vungle.warren.persistence;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.DatabaseUtils;
import android.database.sqlite.SQLiteDatabase;
import android.os.Environment;
import android.text.TextUtils;
import android.util.Log;
import com.facebook.appevents.AppEventsConstants;
import com.vungle.warren.model.AdAsset;
import com.vungle.warren.model.AdAssetDBAdapter;
import com.vungle.warren.model.Advertisement;
import com.vungle.warren.model.AdvertisementDBAdapter;
import com.vungle.warren.model.AnalyticUrl;
import com.vungle.warren.model.AnalyticUrlDBAdapter;
import com.vungle.warren.model.CacheBust;
import com.vungle.warren.model.CacheBustDBAdapter;
import com.vungle.warren.model.Cookie;
import com.vungle.warren.model.CookieDBAdapter;
import com.vungle.warren.model.Placement;
import com.vungle.warren.model.PlacementDBAdapter;
import com.vungle.warren.model.Report;
import com.vungle.warren.model.ReportDBAdapter;
import com.vungle.warren.model.VisionData;
import com.vungle.warren.model.VisionDataDBAdapter;
import com.vungle.warren.persistence.DatabaseHelper;
import com.vungle.warren.utility.FileUtility;
import com.vungle.warren.vision.VisionAggregationData;
import com.vungle.warren.vision.VisionAggregationInfo;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;

/* JADX INFO: loaded from: classes2.dex */
public class Repository {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final String f28266g = "Repository";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected DatabaseHelper f28267a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ExecutorService f28268b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ExecutorService f28269c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Designer f28270d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Context f28271e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Map<Class, DBAdapter> f28272f;

    public interface LoadCallback<T> {
        void onLoaded(T t10);
    }

    public interface SaveCallback {
        void onError(Exception exc);

        void onSaved();
    }

    private static class VungleDatabaseCreator implements DatabaseHelper.DatabaseFactory {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Context f28338a;

        public VungleDatabaseCreator(Context context) {
            this.f28338a = context;
        }

        private void a(String str) {
            this.f28338a.deleteDatabase(str);
        }

        private void b() {
            a("vungle");
            File externalFilesDir = this.f28338a.getExternalFilesDir(null);
            if ((Environment.getExternalStorageState().equals("mounted") && externalFilesDir != null) && externalFilesDir.exists()) {
                try {
                    FileUtility.delete(new File(externalFilesDir, ".vungle"));
                } catch (IOException e10) {
                    Log.e(Repository.f28266g, "IOException ", e10);
                }
            }
            File filesDir = this.f28338a.getFilesDir();
            if (filesDir.exists()) {
                try {
                    FileUtility.delete(new File(filesDir, "vungle"));
                } catch (IOException e11) {
                    Log.e(Repository.f28266g, "IOException ", e11);
                }
            }
            try {
                FileUtility.delete(new File(this.f28338a.getCacheDir() + File.separator + "downloads_vungle"));
            } catch (IOException e12) {
                Log.e(Repository.f28266g, "IOException ", e12);
            }
        }

        @Override // com.vungle.warren.persistence.DatabaseHelper.DatabaseFactory
        public void create(SQLiteDatabase sQLiteDatabase) {
            b();
            sQLiteDatabase.execSQL(AdvertisementDBAdapter.CREATE_ADVERTISEMENT_TABLE_QUERY);
            sQLiteDatabase.execSQL(PlacementDBAdapter.CREATE_PLACEMENT_TABLE_QUERY);
            sQLiteDatabase.execSQL(CookieDBAdapter.CREATE_COOKIE_TABLE_QUERY);
            sQLiteDatabase.execSQL(ReportDBAdapter.CREATE_REPORT_TABLE_QUERY);
            sQLiteDatabase.execSQL(AdAssetDBAdapter.CREATE_ASSET_TABLE_QUERY);
            sQLiteDatabase.execSQL(VisionDataDBAdapter.CREATE_VISION_TABLE_QUERY);
            sQLiteDatabase.execSQL(AnalyticUrlDBAdapter.CREATE_ANALYTICS_URL_TABLE_QUERY);
            sQLiteDatabase.execSQL(CacheBustDBAdapter.CREATE_CACHE_BUST_TABLE_QUERY);
        }

        @Override // com.vungle.warren.persistence.DatabaseHelper.DatabaseFactory
        public void deleteData(SQLiteDatabase sQLiteDatabase) {
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS advertisement");
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS cookie");
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS placement");
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS report");
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS adAsset");
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS vision_data");
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS analytic_url");
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS cache_bust");
        }

        @Override // com.vungle.warren.persistence.DatabaseHelper.DatabaseFactory
        public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i10, int i11) {
            ArrayList arrayList = new ArrayList();
            Cursor cursorRawQuery = sQLiteDatabase.rawQuery("SELECT * FROM sqlite_master WHERE type='table'", null);
            while (cursorRawQuery != null && cursorRawQuery.moveToNext()) {
                String string = cursorRawQuery.getString(1);
                if (!string.equals("android_metadata") && !string.startsWith("sqlite_")) {
                    arrayList.add(string);
                }
            }
            if (cursorRawQuery != null) {
                cursorRawQuery.close();
            }
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                sQLiteDatabase.execSQL("DROP TABLE IF EXISTS " + ((String) it.next()));
            }
            create(sQLiteDatabase);
        }

        @Override // com.vungle.warren.persistence.DatabaseHelper.DatabaseFactory
        public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i10, int i11) {
            if (i10 < 2) {
                sQLiteDatabase.execSQL("ALTER TABLE report ADD COLUMN status INTEGER DEFAULT 1");
            }
            if (i10 < 3) {
                sQLiteDatabase.execSQL(VisionDataDBAdapter.CREATE_VISION_TABLE_QUERY);
                sQLiteDatabase.execSQL("ALTER TABLE report ADD COLUMN ad_size TEXT ");
                sQLiteDatabase.execSQL("ALTER TABLE advertisement ADD COLUMN tt_download NUMERIC DEFAULT -1");
                sQLiteDatabase.execSQL("ALTER TABLE placement ADD COLUMN ad_size TEXT ");
                sQLiteDatabase.execSQL("ALTER TABLE placement ADD COLUMN refresh_duration NUMERIC DEFAULT 0");
                sQLiteDatabase.execSQL("ALTER TABLE placement ADD COLUMN supported_template_types NUMERIC DEFAULT 0");
            }
            if (i10 < 4) {
                sQLiteDatabase.execSQL("ALTER TABLE placement ADD COLUMN header_bidding SHORT ");
                sQLiteDatabase.execSQL("ALTER TABLE report ADD COLUMN header_bidding SHORT ");
            }
            if (i10 < 5) {
                sQLiteDatabase.execSQL("ALTER TABLE placement ADD COLUMN autocache_priority NUMERIC DEFAULT 2147483647");
                sQLiteDatabase.execSQL("ALTER TABLE advertisement ADD COLUMN asset_download_timestamp NUMERIC DEFAULT 0");
                sQLiteDatabase.execSQL("ALTER TABLE advertisement ADD COLUMN asset_download_duration NUMERIC DEFAULT 0");
                sQLiteDatabase.execSQL("ALTER TABLE advertisement ADD COLUMN ad_request_start_time NUMERIC DEFAULT 0");
                sQLiteDatabase.execSQL("ALTER TABLE report ADD COLUMN init_timestamp NUMERIC DEFAULT 0");
                sQLiteDatabase.execSQL("ALTER TABLE report ADD COLUMN asset_download_duration NUMERIC DEFAULT 0");
            }
            if (i10 < 6) {
                sQLiteDatabase.execSQL("ALTER TABLE advertisement ADD COLUMN column_enable_om_sdk NUMERIC DEFAULT 0");
                sQLiteDatabase.execSQL("ALTER TABLE advertisement ADD COLUMN column_om_sdk_extra_vast TEXT ");
            }
            if (i10 < 7) {
                sQLiteDatabase.execSQL(AnalyticUrlDBAdapter.CREATE_ANALYTICS_URL_TABLE_QUERY);
            }
            if (i10 < 8) {
                sQLiteDatabase.execSQL(CacheBustDBAdapter.CREATE_CACHE_BUST_TABLE_QUERY);
                sQLiteDatabase.execSQL("ALTER TABLE advertisement ADD COLUMN column_request_timestamp NUMERIC DEFAULT 0");
                sQLiteDatabase.execSQL("ALTER TABLE placement ADD COLUMN max_hb_cache NUMERIC DEFAULT 0");
                sQLiteDatabase.execSQL("ALTER TABLE placement ADD COLUMN recommended_ad_size TEXT ");
            }
            if (i10 < 9) {
                sQLiteDatabase.execSQL("ALTER TABLE report ADD COLUMN play_remote_url SHORT DEFAULT 0");
                sQLiteDatabase.execSQL("ALTER TABLE advertisement ADD COLUMN column_assets_fully_downloaded SHORT DEFAULT 0");
            }
        }
    }

    public Repository(Context context, Designer designer, ExecutorService executorService, ExecutorService executorService2) {
        this(context, designer, executorService, executorService2, 9);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public <T> T A(String str, Class<T> cls) {
        DBAdapter dBAdapter = this.f28272f.get(cls);
        Query query = new Query(dBAdapter.tableName());
        query.f28260c = "item_id = ? ";
        query.f28261d = new String[]{str};
        Cursor cursorQuery = this.f28267a.query(query);
        if (cursorQuery == null) {
            return null;
        }
        try {
            if (!cursorQuery.moveToNext()) {
                return null;
            }
            ContentValues contentValues = new ContentValues();
            DatabaseUtils.cursorRowToContentValues(cursorQuery, contentValues);
            return (T) dBAdapter.fromContentValues(contentValues);
        } finally {
            cursorQuery.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List<String> B() {
        Query query = new Query("placement");
        query.f28260c = "is_valid = ?";
        query.f28261d = new String[]{AppEventsConstants.EVENT_PARAM_VALUE_YES};
        query.f28259b = new String[]{IdColumns.COLUMN_IDENTIFIER};
        Cursor cursorQuery = this.f28267a.query(query);
        ArrayList arrayList = new ArrayList();
        if (cursorQuery != null) {
            while (cursorQuery.moveToNext()) {
                try {
                    arrayList.add(cursorQuery.getString(cursorQuery.getColumnIndex(IdColumns.COLUMN_IDENTIFIER)));
                } finally {
                    cursorQuery.close();
                }
            }
        }
        return arrayList;
    }

    private void C(Callable<Void> callable) throws DatabaseHelper.DBException {
        try {
            this.f28268b.submit(callable).get();
        } catch (InterruptedException e10) {
            Log.e(f28266g, "InterruptedException ", e10);
            Thread.currentThread().interrupt();
        } catch (ExecutionException e11) {
            if (e11.getCause() instanceof DatabaseHelper.DBException) {
                throw ((DatabaseHelper.DBException) e11.getCause());
            }
            Log.e(f28266g, "Exception during runAndWait", e11);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public <T> void D(T t10) throws DatabaseHelper.DBException {
        DBAdapter dBAdapter = this.f28272f.get(t10.getClass());
        this.f28267a.insertWithConflict(dBAdapter.tableName(), dBAdapter.toContentValues(t10), 5);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q(String str) throws DatabaseHelper.DBException {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        r(str);
        s(Advertisement.class, str);
        try {
            this.f28270d.deleteAssets(str);
        } catch (IOException e10) {
            Log.e(f28266g, "IOException ", e10);
        }
    }

    private void r(String str) throws DatabaseHelper.DBException {
        Query query = new Query(this.f28272f.get(AdAsset.class).tableName());
        query.f28260c = "ad_identifier=?";
        query.f28261d = new String[]{str};
        this.f28267a.delete(query);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public <T> void s(Class<T> cls, String str) throws DatabaseHelper.DBException {
        Query query = new Query(this.f28272f.get(cls).tableName());
        query.f28260c = "item_id=?";
        query.f28261d = new String[]{str};
        this.f28267a.delete(query);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public <T> void t(T t10) throws DatabaseHelper.DBException {
        s(t10.getClass(), this.f28272f.get(t10.getClass()).toContentValues(t10).getAsString(IdColumns.COLUMN_IDENTIFIER));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public <T> List<T> u(Class<T> cls, Cursor cursor) {
        if (cursor == null || cursor.isClosed()) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        try {
            DBAdapter dBAdapter = this.f28272f.get(cls);
            while (cursor.moveToNext()) {
                ContentValues contentValues = new ContentValues();
                DatabaseUtils.cursorRowToContentValues(cursor, contentValues);
                arrayList.add(dBAdapter.fromContentValues(contentValues));
            }
            return arrayList;
        } finally {
            cursor.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Advertisement v(String str, String str2) {
        String[] strArr;
        Log.i(f28266g, " Searching for valid advertisement for placement with " + str + "event ID " + str2);
        Query query = new Query(AdvertisementDBAdapter.AdvertisementColumns.TABLE_NAME);
        StringBuilder sb = new StringBuilder();
        sb.append("placement_id = ? AND ");
        sb.append("(state = ? OR ");
        sb.append("state = ?) AND ");
        sb.append("expire_time > ?");
        if (str2 != null) {
            sb.append(" AND item_id = ?");
            strArr = new String[]{str, String.valueOf(1), String.valueOf(0), String.valueOf(System.currentTimeMillis() / 1000), str2};
        } else {
            strArr = new String[]{str, String.valueOf(1), String.valueOf(0), String.valueOf(System.currentTimeMillis() / 1000)};
        }
        query.f28260c = sb.toString();
        query.f28261d = strArr;
        query.f28265h = AppEventsConstants.EVENT_PARAM_VALUE_YES;
        Cursor cursorQuery = this.f28267a.query(query);
        Advertisement advertisementFromContentValues = null;
        AdvertisementDBAdapter advertisementDBAdapter = (AdvertisementDBAdapter) this.f28272f.get(Advertisement.class);
        if (cursorQuery != null && advertisementDBAdapter != null && cursorQuery.moveToNext()) {
            ContentValues contentValues = new ContentValues();
            DatabaseUtils.cursorRowToContentValues(cursorQuery, contentValues);
            advertisementFromContentValues = advertisementDBAdapter.fromContentValues(contentValues);
        }
        if (cursorQuery != null) {
            cursorQuery.close();
        }
        return advertisementFromContentValues;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List<Advertisement> w(String str, String str2) {
        String[] strArr;
        Log.i(f28266g, " Searching for valid advertisement for placement with " + str + "event ID " + str2);
        Query query = new Query(AdvertisementDBAdapter.AdvertisementColumns.TABLE_NAME);
        StringBuilder sb = new StringBuilder();
        sb.append("placement_id = ? AND ");
        sb.append("(state = ? OR ");
        sb.append("state = ?) AND ");
        sb.append("expire_time > ?");
        if (str2 != null) {
            sb.append(" AND item_id = ?");
            strArr = new String[]{str, String.valueOf(1), String.valueOf(0), String.valueOf(System.currentTimeMillis() / 1000), str2};
        } else {
            strArr = new String[]{str, String.valueOf(1), String.valueOf(0), String.valueOf(System.currentTimeMillis() / 1000)};
        }
        query.f28260c = sb.toString();
        query.f28261d = strArr;
        query.f28264g = "state DESC";
        Cursor cursorQuery = this.f28267a.query(query);
        AdvertisementDBAdapter advertisementDBAdapter = (AdvertisementDBAdapter) this.f28272f.get(Advertisement.class);
        ArrayList arrayList = new ArrayList();
        while (cursorQuery != null && advertisementDBAdapter != null && cursorQuery.moveToNext()) {
            ContentValues contentValues = new ContentValues();
            DatabaseUtils.cursorRowToContentValues(cursorQuery, contentValues);
            arrayList.add(advertisementDBAdapter.fromContentValues(contentValues));
        }
        if (cursorQuery != null) {
            cursorQuery.close();
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List<String> x(String str) {
        Query query = new Query(AdvertisementDBAdapter.AdvertisementColumns.TABLE_NAME);
        query.f28259b = new String[]{IdColumns.COLUMN_IDENTIFIER};
        query.f28260c = "placement_id=?";
        query.f28261d = new String[]{str};
        Cursor cursorQuery = this.f28267a.query(query);
        ArrayList arrayList = new ArrayList();
        while (cursorQuery != null && cursorQuery.moveToNext()) {
            arrayList.add(cursorQuery.getString(cursorQuery.getColumnIndex(IdColumns.COLUMN_IDENTIFIER)));
        }
        if (cursorQuery != null) {
            cursorQuery.close();
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List<AdAsset> y(String str) {
        Query query = new Query(AdAssetDBAdapter.AdAssetColumns.TABLE_NAME);
        query.f28260c = "ad_identifier = ? ";
        query.f28261d = new String[]{str};
        return u(AdAsset.class, this.f28267a.query(query));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public <T> List<T> z(Class<T> cls) {
        DBAdapter dBAdapter = this.f28272f.get(cls);
        return dBAdapter == null ? Collections.EMPTY_LIST : u(cls, this.f28267a.query(new Query(dBAdapter.tableName())));
    }

    public void clearAllData() {
        this.f28267a.dropDb();
        this.f28270d.clearCache();
    }

    public void close() {
        this.f28267a.close();
    }

    public <T> void delete(final T t10) throws DatabaseHelper.DBException {
        C(new Callable<Void>() { // from class: com.vungle.warren.persistence.Repository.14
            @Override // java.util.concurrent.Callable
            public Void call() throws Exception {
                Repository.this.t(t10);
                return null;
            }
        });
    }

    public void deleteAdvertisement(final String str) throws DatabaseHelper.DBException {
        C(new Callable<Void>() { // from class: com.vungle.warren.persistence.Repository.15
            @Override // java.util.concurrent.Callable
            public Void call() throws Exception {
                Repository.this.q(str);
                return null;
            }
        });
    }

    public FutureResult<List<String>> findAdsForPlacement(final String str) {
        return new FutureResult<>(this.f28268b.submit(new Callable<List<String>>() { // from class: com.vungle.warren.persistence.Repository.21
            @Override // java.util.concurrent.Callable
            public List<String> call() {
                return Repository.this.x(str);
            }
        }));
    }

    public FutureResult<Advertisement> findPotentiallyExpiredAd(final String str, final String str2) {
        Log.i(f28266g, " Searching for valid advertisement for placement with " + str + "event ID " + str2);
        return new FutureResult<>(this.f28268b.submit(new Callable<Advertisement>() { // from class: com.vungle.warren.persistence.Repository.7
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public Advertisement call() {
                String[] strArr;
                Query query = new Query(AdvertisementDBAdapter.AdvertisementColumns.TABLE_NAME);
                StringBuilder sb = new StringBuilder();
                sb.append("placement_id = ? AND ");
                sb.append("(state = ? OR ");
                sb.append("state = ?)");
                if (str2 != null) {
                    sb.append(" AND item_id = ?");
                    strArr = new String[]{str, String.valueOf(1), String.valueOf(0), str2};
                } else {
                    strArr = new String[]{str, String.valueOf(1), String.valueOf(0)};
                }
                query.f28260c = sb.toString();
                query.f28261d = strArr;
                Cursor cursorQuery = Repository.this.f28267a.query(query);
                AdvertisementDBAdapter advertisementDBAdapter = (AdvertisementDBAdapter) Repository.this.f28272f.get(Advertisement.class);
                Advertisement advertisementFromContentValues = null;
                if (cursorQuery != null && advertisementDBAdapter != null && cursorQuery.moveToNext()) {
                    ContentValues contentValues = new ContentValues();
                    DatabaseUtils.cursorRowToContentValues(cursorQuery, contentValues);
                    advertisementFromContentValues = advertisementDBAdapter.fromContentValues(contentValues);
                }
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                return advertisementFromContentValues;
            }
        }));
    }

    public FutureResult<Advertisement> findValidAdvertisementForPlacement(final String str, final String str2) {
        return new FutureResult<>(this.f28268b.submit(new Callable<Advertisement>() { // from class: com.vungle.warren.persistence.Repository.6
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public Advertisement call() {
                return Repository.this.v(str, str2);
            }
        }));
    }

    public FutureResult<List<Advertisement>> findValidAdvertisementsForPlacement(final String str, final String str2) {
        return new FutureResult<>(this.f28268b.submit(new Callable<List<Advertisement>>() { // from class: com.vungle.warren.persistence.Repository.8
            @Override // java.util.concurrent.Callable
            public List<Advertisement> call() {
                return Repository.this.w(str, str2);
            }
        }));
    }

    public List<Advertisement> getAdsByCampaign(Collection<String> collection) {
        HashSet hashSet = new HashSet(collection);
        HashSet hashSet2 = new HashSet();
        for (Advertisement advertisement : z(Advertisement.class)) {
            if (hashSet.contains(advertisement.getCampaignId())) {
                hashSet2.add(advertisement);
            }
        }
        return new ArrayList(hashSet2);
    }

    public List<Advertisement> getAdsByCreative(Collection<String> collection) {
        HashSet hashSet = new HashSet(collection);
        HashSet hashSet2 = new HashSet();
        for (Advertisement advertisement : z(Advertisement.class)) {
            if (hashSet.contains(advertisement.getCreativeId())) {
                hashSet2.add(advertisement);
            }
        }
        return new ArrayList(hashSet2);
    }

    public FutureResult<File> getAdvertisementAssetDirectory(final String str) {
        return new FutureResult<>(this.f28268b.submit(new Callable<File>() { // from class: com.vungle.warren.persistence.Repository.17
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public File call() throws Exception {
                return Repository.this.f28270d.getAssetDirectory(str);
            }
        }));
    }

    public FutureResult<List<String>> getAvailableBidTokens(final int i10, final int i11) {
        return new FutureResult<>(this.f28268b.submit(new Callable<List<String>>() { // from class: com.vungle.warren.persistence.Repository.19
            @Override // java.util.concurrent.Callable
            public List<String> call() throws Exception {
                ArrayList arrayList;
                synchronized (Repository.this) {
                    Query query = new Query(AdvertisementDBAdapter.AdvertisementColumns.TABLE_NAME);
                    query.f28260c = "bid_token != '' AND ( state = ? OR state = ? ) AND expire_time > ?";
                    query.f28259b = new String[]{AdvertisementDBAdapter.AdvertisementColumns.COLUMN_BID_TOKEN};
                    int length = 0;
                    query.f28261d = new String[]{String.valueOf(0), String.valueOf(1), String.valueOf(System.currentTimeMillis() / 1000)};
                    Cursor cursorQuery = Repository.this.f28267a.query(query);
                    arrayList = new ArrayList();
                    if (cursorQuery != null) {
                        while (cursorQuery.moveToNext() && length < i10) {
                            try {
                                String string = cursorQuery.getString(cursorQuery.getColumnIndex(AdvertisementDBAdapter.AdvertisementColumns.COLUMN_BID_TOKEN));
                                if (string.getBytes().length + length <= i10) {
                                    length += string.getBytes().length + i11;
                                    arrayList.add(string);
                                }
                            } catch (Throwable th) {
                                cursorQuery.close();
                                throw th;
                            }
                        }
                        cursorQuery.close();
                    }
                }
                return arrayList;
            }
        }));
    }

    public String getPlacementIdByAd(Advertisement advertisement) {
        return advertisement.getPlacementId();
    }

    public List<CacheBust> getUnProcessedBusts() {
        List<CacheBust> listZ = z(CacheBust.class);
        ArrayList arrayList = new ArrayList();
        for (CacheBust cacheBust : listZ) {
            if (cacheBust.getTimestampProcessed() == 0) {
                arrayList.add(cacheBust);
            }
        }
        return arrayList;
    }

    public FutureResult<Collection<String>> getValidPlacementIds() {
        return new FutureResult<>(this.f28268b.submit(new Callable<Collection<String>>() { // from class: com.vungle.warren.persistence.Repository.18
            @Override // java.util.concurrent.Callable
            public Collection<String> call() throws Exception {
                List listB;
                synchronized (Repository.this) {
                    listB = Repository.this.B();
                }
                return listB;
            }
        }));
    }

    public FutureResult<List<VisionAggregationData>> getVisionAggregationData(final long j10, final int i10, final String str) {
        return new FutureResult<>(this.f28268b.submit(new Callable<List<VisionAggregationData>>() { // from class: com.vungle.warren.persistence.Repository.25
            @Override // java.util.concurrent.Callable
            public List<VisionAggregationData> call() {
                ArrayList arrayList = new ArrayList();
                if (!VisionDataDBAdapter.VisionDataColumns.COLUMN_ADVERTISER.equals(str) && !"campaign".equals(str) && !VisionDataDBAdapter.VisionDataColumns.COLUMN_CREATIVE.equals(str)) {
                    return arrayList;
                }
                Query query = new Query(VisionDataDBAdapter.VisionDataColumns.TABLE_NAME);
                String str2 = str;
                query.f28259b = new String[]{"COUNT ( * ) as viewCount", "MAX ( timestamp ) as lastTimeStamp", str2};
                query.f28260c = "timestamp >= ?";
                query.f28262e = str2;
                query.f28264g = "_id DESC";
                query.f28265h = Integer.toString(i10);
                query.f28261d = new String[]{Long.toString(j10)};
                Cursor cursorQuery = Repository.this.f28267a.query(query);
                if (cursorQuery != null) {
                    while (cursorQuery.moveToNext()) {
                        try {
                            ContentValues contentValues = new ContentValues();
                            DatabaseUtils.cursorRowToContentValues(cursorQuery, contentValues);
                            arrayList.add(new VisionAggregationData(contentValues.getAsString(str), contentValues.getAsInteger("viewCount").intValue(), contentValues.getAsLong("lastTimeStamp").longValue()));
                        } finally {
                            cursorQuery.close();
                        }
                    }
                }
                return arrayList;
            }
        }));
    }

    public FutureResult<VisionAggregationInfo> getVisionAggregationInfo(final long j10) {
        return new FutureResult<>(this.f28268b.submit(new Callable<VisionAggregationInfo>() { // from class: com.vungle.warren.persistence.Repository.24
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public VisionAggregationInfo call() {
                Query query = new Query(VisionDataDBAdapter.VisionDataColumns.TABLE_NAME);
                query.f28260c = "timestamp >= ?";
                query.f28264g = "_id DESC";
                query.f28261d = new String[]{Long.toString(j10)};
                Cursor cursorQuery = Repository.this.f28267a.query(query);
                VisionDataDBAdapter visionDataDBAdapter = (VisionDataDBAdapter) Repository.this.f28272f.get(VisionData.class);
                if (cursorQuery == null || visionDataDBAdapter == null) {
                    return null;
                }
                try {
                    if (!cursorQuery.moveToFirst()) {
                        return null;
                    }
                    ContentValues contentValues = new ContentValues();
                    DatabaseUtils.cursorRowToContentValues(cursorQuery, contentValues);
                    return new VisionAggregationInfo(cursorQuery.getCount(), visionDataDBAdapter.fromContentValues(contentValues).creative);
                } finally {
                    cursorQuery.close();
                }
            }
        }));
    }

    public void init() throws DatabaseHelper.DBException {
        C(new Callable<Void>() { // from class: com.vungle.warren.persistence.Repository.1
            @Override // java.util.concurrent.Callable
            public Void call() throws Exception {
                Repository.this.f28267a.init();
                ContentValues contentValues = new ContentValues();
                contentValues.put("state", (Integer) 3);
                Query query = new Query(AdvertisementDBAdapter.AdvertisementColumns.TABLE_NAME);
                query.f28260c = "state=?";
                query.f28261d = new String[]{String.valueOf(2)};
                Repository.this.f28267a.update(query, contentValues);
                return null;
            }
        });
    }

    public <T> FutureResult<T> load(final String str, final Class<T> cls) {
        return new FutureResult<>(this.f28268b.submit(new Callable<T>() { // from class: com.vungle.warren.persistence.Repository.2
            @Override // java.util.concurrent.Callable
            public T call() {
                return (T) Repository.this.A(str, cls);
            }
        }));
    }

    public <T> FutureResult<List<T>> loadAll(final Class<T> cls) {
        return new FutureResult<>(this.f28268b.submit(new Callable<List<T>>() { // from class: com.vungle.warren.persistence.Repository.9
            @Override // java.util.concurrent.Callable
            public List<T> call() {
                return Repository.this.z(cls);
            }
        }));
    }

    public FutureResult<List<AdAsset>> loadAllAdAssets(final String str) {
        return new FutureResult<>(this.f28268b.submit(new Callable<List<AdAsset>>() { // from class: com.vungle.warren.persistence.Repository.13
            @Override // java.util.concurrent.Callable
            public List<AdAsset> call() {
                return Repository.this.y(str);
            }
        }));
    }

    public FutureResult<List<Report>> loadAllReportToSend() {
        return new FutureResult<>(this.f28268b.submit(new Callable<List<Report>>() { // from class: com.vungle.warren.persistence.Repository.10
            @Override // java.util.concurrent.Callable
            public List<Report> call() {
                List<Report> listZ = Repository.this.z(Report.class);
                for (Report report : listZ) {
                    report.setStatus(2);
                    try {
                        Repository.this.D(report);
                    } catch (DatabaseHelper.DBException unused) {
                        return null;
                    }
                }
                return listZ;
            }
        }));
    }

    public FutureResult<List<Report>> loadReadyOrFailedReportToSend() {
        return new FutureResult<>(this.f28268b.submit(new Callable<List<Report>>() { // from class: com.vungle.warren.persistence.Repository.11
            @Override // java.util.concurrent.Callable
            public List<Report> call() {
                Query query = new Query(ReportDBAdapter.ReportColumns.TABLE_NAME);
                query.f28260c = "status = ?  OR status = ? ";
                query.f28261d = new String[]{String.valueOf(1), String.valueOf(3)};
                List<Report> listU = Repository.this.u(Report.class, Repository.this.f28267a.query(query));
                for (Report report : listU) {
                    report.setStatus(2);
                    try {
                        Repository.this.D(report);
                    } catch (DatabaseHelper.DBException unused) {
                        return null;
                    }
                }
                return listU;
            }
        }));
    }

    public FutureResult<Collection<Placement>> loadValidPlacements() {
        return new FutureResult<>(this.f28268b.submit(new Callable<Collection<Placement>>() { // from class: com.vungle.warren.persistence.Repository.16
            @Override // java.util.concurrent.Callable
            public Collection<Placement> call() {
                List listU;
                synchronized (Repository.this) {
                    Query query = new Query("placement");
                    query.f28260c = "is_valid = ?";
                    query.f28261d = new String[]{AppEventsConstants.EVENT_PARAM_VALUE_YES};
                    listU = Repository.this.u(Placement.class, Repository.this.f28267a.query(query));
                }
                return listU;
            }
        }));
    }

    public <T> void save(final T t10) throws DatabaseHelper.DBException {
        C(new Callable<Void>() { // from class: com.vungle.warren.persistence.Repository.4
            @Override // java.util.concurrent.Callable
            public Void call() throws Exception {
                Repository.this.D(t10);
                return null;
            }
        });
    }

    public void saveAndApplyState(final Advertisement advertisement, final String str, @Advertisement.State final int i10) throws DatabaseHelper.DBException {
        C(new Callable<Void>() { // from class: com.vungle.warren.persistence.Repository.22
            /* JADX WARN: Removed duplicated region for block: B:17:0x0067  */
            @Override // java.util.concurrent.Callable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public java.lang.Void call() throws java.lang.Exception {
                /*
                    r3 = this;
                    java.lang.String r0 = com.vungle.warren.persistence.Repository.f()
                    java.lang.StringBuilder r1 = new java.lang.StringBuilder
                    r1.<init>()
                    java.lang.String r2 = "Setting "
                    r1.append(r2)
                    int r2 = r2
                    r1.append(r2)
                    java.lang.String r2 = " for adv "
                    r1.append(r2)
                    com.vungle.warren.model.Advertisement r2 = r3
                    java.lang.String r2 = r2.getId()
                    r1.append(r2)
                    java.lang.String r2 = " and pl "
                    r1.append(r2)
                    java.lang.String r2 = r4
                    r1.append(r2)
                    java.lang.String r1 = r1.toString()
                    android.util.Log.i(r0, r1)
                    com.vungle.warren.model.Advertisement r0 = r3
                    int r1 = r2
                    r0.setState(r1)
                    int r0 = r2
                    r1 = 0
                    if (r0 == 0) goto L67
                    r2 = 1
                    if (r0 == r2) goto L67
                    r2 = 2
                    if (r0 == r2) goto L5a
                    r2 = 3
                    if (r0 == r2) goto L4e
                    r2 = 4
                    if (r0 == r2) goto L4e
                    r2 = 5
                    if (r0 == r2) goto L67
                    goto L75
                L4e:
                    com.vungle.warren.persistence.Repository r0 = com.vungle.warren.persistence.Repository.this
                    com.vungle.warren.model.Advertisement r2 = r3
                    java.lang.String r2 = r2.getId()
                    com.vungle.warren.persistence.Repository.c(r0, r2)
                    goto L75
                L5a:
                    com.vungle.warren.model.Advertisement r0 = r3
                    r0.setPlacementId(r1)
                    com.vungle.warren.persistence.Repository r0 = com.vungle.warren.persistence.Repository.this
                    com.vungle.warren.model.Advertisement r2 = r3
                    com.vungle.warren.persistence.Repository.i(r0, r2)
                    goto L75
                L67:
                    com.vungle.warren.model.Advertisement r0 = r3
                    java.lang.String r2 = r4
                    r0.setPlacementId(r2)
                    com.vungle.warren.persistence.Repository r0 = com.vungle.warren.persistence.Repository.this
                    com.vungle.warren.model.Advertisement r2 = r3
                    com.vungle.warren.persistence.Repository.i(r0, r2)
                L75:
                    return r1
                */
                throw new UnsupportedOperationException("Method not decompiled: com.vungle.warren.persistence.Repository.AnonymousClass22.call():java.lang.Void");
            }
        });
    }

    public void setMockDBHelper(DatabaseHelper databaseHelper) {
        this.f28267a = databaseHelper;
    }

    public void setValidPlacements(final List<Placement> list) throws DatabaseHelper.DBException {
        C(new Callable<Void>() { // from class: com.vungle.warren.persistence.Repository.20
            @Override // java.util.concurrent.Callable
            public Void call() throws Exception {
                synchronized (Repository.class) {
                    ContentValues contentValues = new ContentValues();
                    contentValues.put(PlacementDBAdapter.PlacementColumns.COLUMN_IS_VALID, Boolean.FALSE);
                    Repository.this.f28267a.update(new Query("placement"), contentValues);
                    for (Placement placement : list) {
                        Placement placement2 = (Placement) Repository.this.A(placement.getId(), Placement.class);
                        if (placement2 != null && (placement2.isIncentivized() != placement.isIncentivized() || placement2.isHeaderBidding() != placement.isHeaderBidding())) {
                            Log.w(Repository.f28266g, "Placements data for " + placement.getId() + " is different from disc, deleting old");
                            Iterator it = Repository.this.x(placement.getId()).iterator();
                            while (it.hasNext()) {
                                Repository.this.q((String) it.next());
                            }
                            Repository.this.s(Placement.class, placement2.getId());
                        }
                        if (placement2 != null) {
                            placement.setWakeupTime(placement2.getWakeupTime());
                            placement.setAdSize(placement2.getAdSize());
                        }
                        placement.setValid(placement.getPlacementAdType() != 2);
                        if (placement.getMaxHbCache() == Integer.MIN_VALUE) {
                            placement.setValid(false);
                        }
                        Repository.this.D(placement);
                    }
                }
                return null;
            }
        });
    }

    public void trimVisionData(final int i10) throws DatabaseHelper.DBException {
        C(new Callable<Void>() { // from class: com.vungle.warren.persistence.Repository.23
            @Override // java.util.concurrent.Callable
            public Void call() throws Exception {
                Query query = new Query(VisionDataDBAdapter.VisionDataColumns.TABLE_NAME);
                query.f28260c = "_id <= ( SELECT MAX( _id ) FROM vision_data ) - ?";
                query.f28261d = new String[]{Integer.toString(i10)};
                Repository.this.f28267a.delete(query);
                return null;
            }
        });
    }

    public void updateAndSaveReportState(final String str, final String str2, final int i10, final int i11) throws DatabaseHelper.DBException {
        C(new Callable<Void>() { // from class: com.vungle.warren.persistence.Repository.12
            @Override // java.util.concurrent.Callable
            public Void call() throws Exception {
                ContentValues contentValues = new ContentValues();
                contentValues.put("status", Integer.valueOf(i11));
                Query query = new Query(ReportDBAdapter.ReportColumns.TABLE_NAME);
                query.f28260c = "placementId = ?  AND status = ?  AND appId = ? ";
                query.f28261d = new String[]{str, String.valueOf(i10), str2};
                Repository.this.f28267a.update(query, contentValues);
                return null;
            }
        });
    }

    public Repository(Context context, Designer designer, ExecutorService executorService, ExecutorService executorService2, int i10) {
        this.f28272f = new HashMap();
        Context applicationContext = context.getApplicationContext();
        this.f28271e = applicationContext;
        this.f28268b = executorService;
        this.f28269c = executorService2;
        this.f28267a = new DatabaseHelper(context, i10, new VungleDatabaseCreator(applicationContext));
        this.f28270d = designer;
        this.f28272f.put(Placement.class, new PlacementDBAdapter());
        this.f28272f.put(Cookie.class, new CookieDBAdapter());
        this.f28272f.put(Report.class, new ReportDBAdapter());
        this.f28272f.put(Advertisement.class, new AdvertisementDBAdapter());
        this.f28272f.put(AdAsset.class, new AdAssetDBAdapter());
        this.f28272f.put(VisionData.class, new VisionDataDBAdapter());
        this.f28272f.put(AnalyticUrl.class, new AnalyticUrlDBAdapter());
        this.f28272f.put(CacheBust.class, new CacheBustDBAdapter());
    }

    public <T> void load(final String str, final Class<T> cls, final LoadCallback<T> loadCallback) {
        this.f28268b.execute(new Runnable() { // from class: com.vungle.warren.persistence.Repository.3
            @Override // java.lang.Runnable
            public void run() {
                final Object objA = Repository.this.A(str, cls);
                Repository.this.f28269c.execute(new Runnable() { // from class: com.vungle.warren.persistence.Repository.3.1
                    @Override // java.lang.Runnable
                    public void run() {
                        loadCallback.onLoaded(objA);
                    }
                });
            }
        });
    }

    public <T> void save(final T t10, final SaveCallback saveCallback, boolean z10) {
        Future<?> futureSubmit = this.f28268b.submit(new Runnable() { // from class: com.vungle.warren.persistence.Repository.5
            @Override // java.lang.Runnable
            public void run() {
                try {
                    Repository.this.D(t10);
                    if (saveCallback != null) {
                        Repository.this.f28269c.execute(new Runnable() { // from class: com.vungle.warren.persistence.Repository.5.2
                            @Override // java.lang.Runnable
                            public void run() {
                                saveCallback.onSaved();
                            }
                        });
                    }
                } catch (DatabaseHelper.DBException e10) {
                    if (saveCallback != null) {
                        Repository.this.f28269c.execute(new Runnable() { // from class: com.vungle.warren.persistence.Repository.5.1
                            @Override // java.lang.Runnable
                            public void run() {
                                saveCallback.onError(e10);
                            }
                        });
                    }
                }
            }
        });
        if (z10) {
            try {
                futureSubmit.get();
            } catch (InterruptedException e10) {
                Log.e(f28266g, "InterruptedException ", e10);
                Thread.currentThread().interrupt();
            } catch (ExecutionException e11) {
                Log.e(f28266g, "Error on execution during saving", e11);
            }
        }
    }

    public <T> void save(T t10, SaveCallback saveCallback) {
        save(t10, saveCallback, true);
    }

    public List<Advertisement> getAdsByCampaign(String str) {
        return getAdsByCampaign(Collections.singletonList(str));
    }

    public List<Advertisement> getAdsByCreative(String str) {
        return getAdsByCreative(Collections.singletonList(str));
    }
}

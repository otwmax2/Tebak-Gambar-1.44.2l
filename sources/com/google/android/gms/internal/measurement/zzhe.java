package com.google.android.gms.internal.measurement;

import android.content.ContentResolver;
import android.database.ContentObserver;
import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.os.StrictMode;
import android.util.Log;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import o.a;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzhe implements zzhj {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final Map f23523g = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final String[] f23524h = {SDKConstants.PARAM_KEY, SDKConstants.PARAM_VALUE};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ContentResolver f23525a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Uri f23526b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ContentObserver f23527c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Object f23528d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private volatile Map f23529e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final List f23530f;

    private zzhe(ContentResolver contentResolver, Uri uri) {
        zzhd zzhdVar = new zzhd(this, null);
        this.f23527c = zzhdVar;
        this.f23528d = new Object();
        this.f23530f = new ArrayList();
        Objects.requireNonNull(contentResolver);
        Objects.requireNonNull(uri);
        this.f23525a = contentResolver;
        this.f23526b = uri;
        contentResolver.registerContentObserver(uri, false, zzhdVar);
    }

    public static zzhe a(ContentResolver contentResolver, Uri uri) {
        zzhe zzheVar;
        synchronized (zzhe.class) {
            Map map = f23523g;
            zzheVar = (zzhe) map.get(uri);
            if (zzheVar == null) {
                try {
                    zzhe zzheVar2 = new zzhe(contentResolver, uri);
                    try {
                        map.put(uri, zzheVar2);
                    } catch (SecurityException unused) {
                    }
                    zzheVar = zzheVar2;
                } catch (SecurityException unused2) {
                }
            }
        }
        return zzheVar;
    }

    static synchronized void d() {
        for (zzhe zzheVar : f23523g.values()) {
            zzheVar.f23525a.unregisterContentObserver(zzheVar.f23527c);
        }
        f23523g.clear();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [java.util.Map] */
    /* JADX WARN: Type inference failed for: r0v10 */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v12 */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6, types: [android.os.StrictMode$ThreadPolicy] */
    /* JADX WARN: Type inference failed for: r0v7, types: [android.os.StrictMode$ThreadPolicy] */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r0v9 */
    public final Map b() {
        ?? r02;
        Map map;
        Map map2 = this.f23529e;
        ?? r03 = map2;
        if (map2 == null) {
            synchronized (this.f23528d) {
                Map map3 = this.f23529e;
                r02 = map3;
                if (map3 == null) {
                    ?? AllowThreadDiskReads = StrictMode.allowThreadDiskReads();
                    try {
                        try {
                            map = (Map) zzhh.a(new zzhi() { // from class: com.google.android.gms.internal.measurement.zzhc
                                @Override // com.google.android.gms.internal.measurement.zzhi
                                public final Object zza() {
                                    return this.f23521a.c();
                                }
                            });
                        } finally {
                            StrictMode.setThreadPolicy(AllowThreadDiskReads);
                        }
                    } catch (SQLiteException | IllegalStateException | SecurityException unused) {
                        Log.e("ConfigurationContentLoader", "PhenotypeFlag unable to load ContentProvider, using default values");
                        StrictMode.setThreadPolicy(AllowThreadDiskReads);
                        map = null;
                    }
                    this.f23529e = map;
                    AllowThreadDiskReads = map;
                    r02 = AllowThreadDiskReads;
                }
            }
            r03 = r02;
        }
        return r03 != 0 ? r03 : Collections.emptyMap();
    }

    final /* synthetic */ Map c() {
        Cursor cursorQuery = this.f23525a.query(this.f23526b, f23524h, null, null, null);
        if (cursorQuery == null) {
            return Collections.emptyMap();
        }
        try {
            int count = cursorQuery.getCount();
            if (count == 0) {
                return Collections.emptyMap();
            }
            Map aVar = count <= 256 ? new a(count) : new HashMap(count, 1.0f);
            while (cursorQuery.moveToNext()) {
                aVar.put(cursorQuery.getString(0), cursorQuery.getString(1));
            }
            return aVar;
        } finally {
            cursorQuery.close();
        }
    }

    public final void e() {
        synchronized (this.f23528d) {
            this.f23529e = null;
            zzhy.d();
        }
        synchronized (this) {
            Iterator it = this.f23530f.iterator();
            while (it.hasNext()) {
                ((zzhf) it.next()).zza();
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzhj
    public final /* bridge */ /* synthetic */ Object u(String str) {
        return (String) b().get(str);
    }
}

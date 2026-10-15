package com.google.android.gms.internal.ads;

import com.vungle.mediation.BuildConfig;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzalh {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    long f9486a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final String f9487b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final String f9488c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final long f9489d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final long f9490e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final long f9491f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    final long f9492g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    final List f9493h;

    /* JADX WARN: Illegal instructions before constructor call */
    zzalh(String str, zzajx zzajxVar) {
        String str2 = zzajxVar.f9398b;
        long j10 = zzajxVar.f9399c;
        long j11 = zzajxVar.f9400d;
        long j12 = zzajxVar.f9401e;
        long j13 = zzajxVar.f9402f;
        List arrayList = zzajxVar.f9404h;
        if (arrayList == null) {
            Map map = zzajxVar.f9403g;
            arrayList = new ArrayList(map.size());
            for (Map.Entry entry : map.entrySet()) {
                arrayList.add(new zzakg((String) entry.getKey(), (String) entry.getValue()));
            }
        }
        this(str, str2, j10, j11, j12, j13, arrayList);
    }

    static zzalh a(zzali zzaliVar) throws IOException {
        if (zzalk.a(zzaliVar) != 538247942) {
            throw new IOException();
        }
        String strD = zzalk.d(zzaliVar);
        String strD2 = zzalk.d(zzaliVar);
        long jB = zzalk.b(zzaliVar);
        long jB2 = zzalk.b(zzaliVar);
        long jB3 = zzalk.b(zzaliVar);
        long jB4 = zzalk.b(zzaliVar);
        int iA = zzalk.a(zzaliVar);
        if (iA < 0) {
            throw new IOException("readHeaderList size=" + iA);
        }
        List listEmptyList = iA == 0 ? Collections.emptyList() : new ArrayList();
        for (int i10 = 0; i10 < iA; i10++) {
            listEmptyList.add(new zzakg(zzalk.d(zzaliVar).intern(), zzalk.d(zzaliVar).intern()));
        }
        return new zzalh(strD, strD2, jB, jB2, jB3, jB4, listEmptyList);
    }

    private zzalh(String str, String str2, long j10, long j11, long j12, long j13, List list) {
        this.f9487b = str;
        this.f9488c = true == BuildConfig.FLAVOR.equals(str2) ? null : str2;
        this.f9489d = j10;
        this.f9490e = j11;
        this.f9491f = j12;
        this.f9492g = j13;
        this.f9493h = list;
    }
}

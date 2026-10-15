package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;
import java.net.URL;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class u implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final URL f24301o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final byte[] f24302p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final s f24303q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final String f24304r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final Map f24305s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    final /* synthetic */ zzfe f24306t;

    public u(zzfe zzfeVar, String str, URL url, byte[] bArr, Map map, s sVar) {
        this.f24306t = zzfeVar;
        Preconditions.g(str);
        Preconditions.k(url);
        Preconditions.k(sVar);
        this.f24301o = url;
        this.f24302p = bArr;
        this.f24303q = sVar;
        this.f24304r = str;
        this.f24305s = map;
    }

    /* JADX WARN: Not initialized variable reg: 11, insn: 0x00fa: MOVE (r12 I:??[OBJECT, ARRAY]) = (r11 I:??[OBJECT, ARRAY]), block:B:42:0x00f8 */
    /* JADX WARN: Not initialized variable reg: 11, insn: 0x0100: MOVE (r12 I:??[OBJECT, ARRAY]) = (r11 I:??[OBJECT, ARRAY]), block:B:44:0x00fd */
    /* JADX WARN: Removed duplicated region for block: B:64:0x013f  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x017f  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0163 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0123 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void run() throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 408
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.u.run():void");
    }
}

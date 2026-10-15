package com.google.android.gms.measurement.internal;

import android.content.ContentValues;
import android.content.Context;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import com.facebook.appevents.AppEventsConstants;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.android.gms.internal.measurement.zzfw;
import com.google.android.gms.internal.measurement.zzgb;
import com.google.android.gms.internal.measurement.zzgk;
import com.google.android.gms.internal.measurement.zzgl;
import com.google.android.gms.internal.measurement.zzne;
import com.google.android.gms.internal.measurement.zznz;
import com.google.android.gms.internal.measurement.zzpg;
import com.google.android.gms.internal.measurement.zzpm;
import com.google.android.gms.internal.measurement.zzpp;
import com.tebakgambar.model.response.ApiResponse;
import com.vungle.mediation.BuildConfig;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.math.BigInteger;
import java.net.MalformedURLException;
import java.net.URL;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;
import java.nio.channels.OverlappingFileLockException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzli implements a1 {
    private static volatile zzli F;
    private final Map A;
    private final Map B;
    private zziu C;
    private String D;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzfz f24838a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzfe f24839b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private e f24840c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private w f24841d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private zzku f24842e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private l4 f24843f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final zzlk f24844g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private z1 f24845h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private zzkd f24846i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final zzkx f24847j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private zzfq f24848k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final zzgi f24849l;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f24851n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @VisibleForTesting
    long f24852o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private List f24853p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f24854q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f24855r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private boolean f24856s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private boolean f24857t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private boolean f24858u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private FileLock f24859v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private FileChannel f24860w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private List f24861x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private List f24862y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private long f24863z;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f24850m = false;
    private final c4 E = new y3(this);

    zzli(zzlj zzljVar, zzgi zzgiVar) {
        Preconditions.k(zzljVar);
        this.f24849l = zzgi.F(zzljVar.f24864a, null, null);
        this.f24863z = -1L;
        this.f24847j = new zzkx(this);
        zzlk zzlkVar = new zzlk(this);
        zzlkVar.e();
        this.f24844g = zzlkVar;
        zzfe zzfeVar = new zzfe(this);
        zzfeVar.e();
        this.f24839b = zzfeVar;
        zzfz zzfzVar = new zzfz(this);
        zzfzVar.e();
        this.f24838a = zzfzVar;
        this.A = new HashMap();
        this.B = new HashMap();
        B().v(new s3(this, zzljVar));
    }

    @VisibleForTesting
    static final void C(com.google.android.gms.internal.measurement.zzfr zzfrVar, int i10, String str) {
        List listG = zzfrVar.G();
        for (int i11 = 0; i11 < listG.size(); i11++) {
            if ("_err".equals(((zzfw) listG.get(i11)).A())) {
                return;
            }
        }
        com.google.android.gms.internal.measurement.zzfv zzfvVarY = zzfw.y();
        zzfvVarY.A("_err");
        zzfvVarY.z(Long.valueOf(i10).longValue());
        zzfw zzfwVar = (zzfw) zzfvVarY.o();
        com.google.android.gms.internal.measurement.zzfv zzfvVarY2 = zzfw.y();
        zzfvVarY2.A("_ev");
        zzfvVarY2.B(str);
        zzfw zzfwVar2 = (zzfw) zzfvVarY2.o();
        zzfrVar.w(zzfwVar);
        zzfrVar.w(zzfwVar2);
    }

    @VisibleForTesting
    static final void E(com.google.android.gms.internal.measurement.zzfr zzfrVar, String str) {
        List listG = zzfrVar.G();
        for (int i10 = 0; i10 < listG.size(); i10++) {
            if (str.equals(((zzfw) listG.get(i10)).A())) {
                zzfrVar.y(i10);
                return;
            }
        }
    }

    private final zzp F(String str) {
        e eVar = this.f24840c;
        O(eVar);
        c0 c0VarP = eVar.P(str);
        if (c0VarP == null || TextUtils.isEmpty(c0VarP.h0())) {
            U().l().b("No app data available; dropping", str);
            return null;
        }
        Boolean boolG = G(c0VarP);
        if (boolG == null || boolG.booleanValue()) {
            return new zzp(str, c0VarP.j0(), c0VarP.h0(), c0VarP.M(), c0VarP.g0(), c0VarP.X(), c0VarP.U(), (String) null, c0VarP.K(), false, c0VarP.i0(), c0VarP.A(), 0L, 0, c0VarP.J(), false, c0VarP.c0(), c0VarP.b0(), c0VarP.V(), c0VarP.c(), (String) null, S(str).h(), BuildConfig.FLAVOR, (String) null);
        }
        U().m().b("App version does not match; dropping. appId", zzey.v(str));
        return null;
    }

    private final Boolean G(c0 c0Var) {
        try {
            if (c0Var.M() != -2147483648L) {
                if (c0Var.M() == Wrappers.a(this.f24849l.N0()).f(c0Var.e0(), 0).versionCode) {
                    return Boolean.TRUE;
                }
            } else {
                String str = Wrappers.a(this.f24849l.N0()).f(c0Var.e0(), 0).versionName;
                String strH0 = c0Var.h0();
                if (strH0 != null && strH0.equals(str)) {
                    return Boolean.TRUE;
                }
            }
            return Boolean.FALSE;
        } catch (PackageManager.NameNotFoundException unused) {
            return null;
        }
    }

    private final void H() {
        B().c();
        if (this.f24856s || this.f24857t || this.f24858u) {
            U().q().d("Not stopping services. fetch, network, upload", Boolean.valueOf(this.f24856s), Boolean.valueOf(this.f24857t), Boolean.valueOf(this.f24858u));
            return;
        }
        U().q().a("Stopping uploading service(s)");
        List list = this.f24853p;
        if (list == null) {
            return;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ((Runnable) it.next()).run();
        }
        ((List) Preconditions.k(this.f24853p)).clear();
    }

    @VisibleForTesting
    private final void I(zzgb zzgbVar, long j10, boolean z10) {
        String str = true != z10 ? "_lte" : "_se";
        e eVar = this.f24840c;
        O(eVar);
        b4 b4VarW = eVar.W(zzgbVar.n0(), str);
        b4 b4Var = (b4VarW == null || b4VarW.f24000e == null) ? new b4(zzgbVar.n0(), "auto", str, x().a(), Long.valueOf(j10)) : new b4(zzgbVar.n0(), "auto", str, x().a(), Long.valueOf(((Long) b4VarW.f24000e).longValue() + j10));
        zzgk zzgkVarX = zzgl.x();
        zzgkVarX.w(str);
        zzgkVarX.x(x().a());
        zzgkVarX.v(((Long) b4Var.f24000e).longValue());
        zzgl zzglVar = (zzgl) zzgkVarX.o();
        int iR = zzlk.r(zzgbVar, str);
        if (iR >= 0) {
            zzgbVar.j0(iR, zzglVar);
        } else {
            zzgbVar.D0(zzglVar);
        }
        if (j10 > 0) {
            e eVar2 = this.f24840c;
            O(eVar2);
            eVar2.s(b4Var);
            U().q().c("Updated engagement user property. scope, value", true != z10 ? "lifetime" : "session-scoped", b4Var.f24000e);
        }
    }

    private final void J() {
        long jMax;
        long jMax2;
        B().c();
        b();
        if (this.f24852o > 0) {
            long jAbs = 3600000 - Math.abs(x().b() - this.f24852o);
            if (jAbs > 0) {
                U().q().b("Upload has been suspended. Will update scheduling later in approximately ms", Long.valueOf(jAbs));
                X().c();
                zzku zzkuVar = this.f24842e;
                O(zzkuVar);
                zzkuVar.h();
                return;
            }
            this.f24852o = 0L;
        }
        if (!this.f24849l.m() || !L()) {
            U().q().a("Nothing to upload or uploading impossible");
            X().c();
            zzku zzkuVar2 = this.f24842e;
            O(zzkuVar2);
            zzkuVar2.h();
            return;
        }
        long jA = x().a();
        R();
        long jMax3 = Math.max(0L, ((Long) zzel.B.a(null)).longValue());
        e eVar = this.f24840c;
        O(eVar);
        boolean z10 = true;
        if (!eVar.o()) {
            e eVar2 = this.f24840c;
            O(eVar2);
            if (!eVar2.n()) {
                z10 = false;
            }
        }
        if (z10) {
            String strP = R().p();
            if (TextUtils.isEmpty(strP) || ".none.".equals(strP)) {
                R();
                jMax = Math.max(0L, ((Long) zzel.f24599v.a(null)).longValue());
            } else {
                R();
                jMax = Math.max(0L, ((Long) zzel.f24601w.a(null)).longValue());
            }
        } else {
            R();
            jMax = Math.max(0L, ((Long) zzel.f24597u.a(null)).longValue());
        }
        long jA2 = this.f24846i.f24819j.a();
        long jA3 = this.f24846i.f24820k.a();
        e eVar3 = this.f24840c;
        O(eVar3);
        boolean z11 = z10;
        long jK = eVar3.K();
        e eVar4 = this.f24840c;
        O(eVar4);
        long jMax4 = Math.max(jK, eVar4.L());
        if (jMax4 == 0) {
            jMax2 = 0;
        } else {
            long jAbs2 = jA - Math.abs(jMax4 - jA);
            long jAbs3 = Math.abs(jA2 - jA);
            long jAbs4 = jA - Math.abs(jA3 - jA);
            long jMax5 = Math.max(jA - jAbs3, jAbs4);
            jMax2 = jAbs2 + jMax3;
            if (z11 && jMax5 > 0) {
                jMax2 = Math.min(jAbs2, jMax5) + jMax;
            }
            zzlk zzlkVar = this.f24844g;
            O(zzlkVar);
            if (!zzlkVar.K(jMax5, jMax)) {
                jMax2 = jMax5 + jMax;
            }
            if (jAbs4 != 0 && jAbs4 >= jAbs2) {
                int i10 = 0;
                while (true) {
                    R();
                    if (i10 >= Math.min(20, Math.max(0, ((Integer) zzel.D.a(null)).intValue()))) {
                        break;
                    }
                    R();
                    jMax2 += Math.max(0L, ((Long) zzel.C.a(null)).longValue()) * (1 << i10);
                    if (jMax2 > jAbs4) {
                        break;
                    } else {
                        i10++;
                    }
                }
            }
        }
        if (jMax2 == 0) {
            U().q().a("Next upload time is 0");
            X().c();
            zzku zzkuVar3 = this.f24842e;
            O(zzkuVar3);
            zzkuVar3.h();
            return;
        }
        zzfe zzfeVar = this.f24839b;
        O(zzfeVar);
        if (!zzfeVar.h()) {
            U().q().a("No network");
            X().b();
            zzku zzkuVar4 = this.f24842e;
            O(zzkuVar4);
            zzkuVar4.h();
            return;
        }
        long jA4 = this.f24846i.f24818i.a();
        R();
        long jMax6 = Math.max(0L, ((Long) zzel.f24593s.a(null)).longValue());
        zzlk zzlkVar2 = this.f24844g;
        O(zzlkVar2);
        if (!zzlkVar2.K(jA4, jMax6)) {
            jMax2 = Math.max(jMax2, jA4 + jMax6);
        }
        X().c();
        long jA5 = jMax2 - x().a();
        if (jA5 <= 0) {
            R();
            jA5 = Math.max(0L, ((Long) zzel.f24603x.a(null)).longValue());
            this.f24846i.f24819j.b(x().a());
        }
        U().q().b("Upload scheduled in approximately ms", Long.valueOf(jA5));
        zzku zzkuVar5 = this.f24842e;
        O(zzkuVar5);
        zzkuVar5.i(jA5);
    }

    /* JADX WARN: Removed duplicated region for block: B:108:0x0376 A[Catch: all -> 0x0d17, TryCatch #3 {all -> 0x0d17, blocks: (B:3:0x000e, B:5:0x0026, B:8:0x002e, B:9:0x0040, B:12:0x0054, B:15:0x007b, B:17:0x00b1, B:20:0x00c3, B:22:0x00cd, B:173:0x0538, B:24:0x00f3, B:26:0x0101, B:29:0x0125, B:31:0x012b, B:33:0x013d, B:35:0x014b, B:37:0x015b, B:38:0x0168, B:39:0x016d, B:42:0x0186, B:111:0x03a7, B:112:0x03b3, B:115:0x03bd, B:121:0x03e0, B:118:0x03cf, B:143:0x045f, B:145:0x046b, B:148:0x047e, B:150:0x048f, B:152:0x049b, B:172:0x0524, B:157:0x04c5, B:159:0x04d5, B:162:0x04ea, B:164:0x04fb, B:166:0x0507, B:125:0x03e8, B:127:0x03f4, B:129:0x0400, B:141:0x0445, B:133:0x041d, B:136:0x042f, B:138:0x0435, B:140:0x043f, B:68:0x01e4, B:71:0x01ee, B:73:0x01fc, B:77:0x0243, B:74:0x0219, B:76:0x022a, B:81:0x0252, B:83:0x027e, B:84:0x02a8, B:86:0x02de, B:88:0x02e4, B:91:0x02f0, B:93:0x0326, B:94:0x0341, B:96:0x0347, B:98:0x0355, B:102:0x0368, B:99:0x035d, B:105:0x036f, B:108:0x0376, B:109:0x038e, B:176:0x054d, B:178:0x055b, B:180:0x0566, B:191:0x0598, B:181:0x056e, B:183:0x0579, B:185:0x057f, B:188:0x058b, B:190:0x0593, B:192:0x059b, B:193:0x05a7, B:196:0x05af, B:198:0x05c1, B:199:0x05cd, B:201:0x05d5, B:205:0x05fa, B:207:0x061f, B:209:0x0630, B:211:0x0636, B:213:0x0642, B:214:0x0673, B:216:0x0679, B:218:0x0687, B:219:0x068b, B:220:0x068e, B:221:0x0691, B:222:0x069f, B:224:0x06a5, B:226:0x06b5, B:227:0x06bc, B:229:0x06c8, B:230:0x06cf, B:231:0x06d2, B:233:0x0712, B:234:0x0725, B:236:0x072b, B:239:0x0745, B:241:0x0760, B:243:0x0779, B:245:0x077e, B:247:0x0782, B:249:0x0786, B:251:0x0790, B:252:0x079a, B:254:0x079e, B:256:0x07a4, B:257:0x07b2, B:258:0x07bb, B:326:0x0a0b, B:260:0x07c8, B:262:0x07df, B:268:0x07fb, B:270:0x081f, B:271:0x0827, B:273:0x082d, B:275:0x083f, B:282:0x0868, B:283:0x088b, B:285:0x0897, B:287:0x08ac, B:289:0x08ed, B:293:0x0905, B:295:0x090c, B:297:0x091b, B:299:0x091f, B:301:0x0923, B:303:0x0927, B:304:0x0933, B:305:0x0938, B:307:0x093e, B:309:0x095a, B:310:0x095f, B:325:0x0a08, B:311:0x097a, B:313:0x0982, B:317:0x09a9, B:319:0x09d5, B:320:0x09dc, B:321:0x09ee, B:323:0x09f8, B:314:0x098f, B:280:0x0853, B:266:0x07e6, B:327:0x0a17, B:329:0x0a25, B:330:0x0a2b, B:331:0x0a33, B:333:0x0a39, B:336:0x0a53, B:338:0x0a64, B:358:0x0ad8, B:360:0x0ade, B:362:0x0af6, B:365:0x0afd, B:370:0x0b2c, B:372:0x0b6e, B:375:0x0ba3, B:376:0x0ba7, B:377:0x0bb2, B:379:0x0bf5, B:380:0x0c02, B:382:0x0c11, B:386:0x0c2b, B:388:0x0c44, B:374:0x0b80, B:366:0x0b05, B:368:0x0b11, B:369:0x0b15, B:389:0x0c5c, B:390:0x0c74, B:393:0x0c7c, B:394:0x0c81, B:395:0x0c91, B:397:0x0cab, B:398:0x0cc6, B:400:0x0cd0, B:405:0x0cf3, B:404:0x0ce0, B:339:0x0a7c, B:341:0x0a82, B:343:0x0a8c, B:345:0x0a93, B:351:0x0aa3, B:353:0x0aaa, B:355:0x0ac9, B:357:0x0ad0, B:356:0x0acd, B:352:0x0aa7, B:344:0x0a90, B:202:0x05da, B:204:0x05e0, B:408:0x0d05), top: B:421:0x000e, inners: #0, #1, #2, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:109:0x038e A[Catch: all -> 0x0d17, TryCatch #3 {all -> 0x0d17, blocks: (B:3:0x000e, B:5:0x0026, B:8:0x002e, B:9:0x0040, B:12:0x0054, B:15:0x007b, B:17:0x00b1, B:20:0x00c3, B:22:0x00cd, B:173:0x0538, B:24:0x00f3, B:26:0x0101, B:29:0x0125, B:31:0x012b, B:33:0x013d, B:35:0x014b, B:37:0x015b, B:38:0x0168, B:39:0x016d, B:42:0x0186, B:111:0x03a7, B:112:0x03b3, B:115:0x03bd, B:121:0x03e0, B:118:0x03cf, B:143:0x045f, B:145:0x046b, B:148:0x047e, B:150:0x048f, B:152:0x049b, B:172:0x0524, B:157:0x04c5, B:159:0x04d5, B:162:0x04ea, B:164:0x04fb, B:166:0x0507, B:125:0x03e8, B:127:0x03f4, B:129:0x0400, B:141:0x0445, B:133:0x041d, B:136:0x042f, B:138:0x0435, B:140:0x043f, B:68:0x01e4, B:71:0x01ee, B:73:0x01fc, B:77:0x0243, B:74:0x0219, B:76:0x022a, B:81:0x0252, B:83:0x027e, B:84:0x02a8, B:86:0x02de, B:88:0x02e4, B:91:0x02f0, B:93:0x0326, B:94:0x0341, B:96:0x0347, B:98:0x0355, B:102:0x0368, B:99:0x035d, B:105:0x036f, B:108:0x0376, B:109:0x038e, B:176:0x054d, B:178:0x055b, B:180:0x0566, B:191:0x0598, B:181:0x056e, B:183:0x0579, B:185:0x057f, B:188:0x058b, B:190:0x0593, B:192:0x059b, B:193:0x05a7, B:196:0x05af, B:198:0x05c1, B:199:0x05cd, B:201:0x05d5, B:205:0x05fa, B:207:0x061f, B:209:0x0630, B:211:0x0636, B:213:0x0642, B:214:0x0673, B:216:0x0679, B:218:0x0687, B:219:0x068b, B:220:0x068e, B:221:0x0691, B:222:0x069f, B:224:0x06a5, B:226:0x06b5, B:227:0x06bc, B:229:0x06c8, B:230:0x06cf, B:231:0x06d2, B:233:0x0712, B:234:0x0725, B:236:0x072b, B:239:0x0745, B:241:0x0760, B:243:0x0779, B:245:0x077e, B:247:0x0782, B:249:0x0786, B:251:0x0790, B:252:0x079a, B:254:0x079e, B:256:0x07a4, B:257:0x07b2, B:258:0x07bb, B:326:0x0a0b, B:260:0x07c8, B:262:0x07df, B:268:0x07fb, B:270:0x081f, B:271:0x0827, B:273:0x082d, B:275:0x083f, B:282:0x0868, B:283:0x088b, B:285:0x0897, B:287:0x08ac, B:289:0x08ed, B:293:0x0905, B:295:0x090c, B:297:0x091b, B:299:0x091f, B:301:0x0923, B:303:0x0927, B:304:0x0933, B:305:0x0938, B:307:0x093e, B:309:0x095a, B:310:0x095f, B:325:0x0a08, B:311:0x097a, B:313:0x0982, B:317:0x09a9, B:319:0x09d5, B:320:0x09dc, B:321:0x09ee, B:323:0x09f8, B:314:0x098f, B:280:0x0853, B:266:0x07e6, B:327:0x0a17, B:329:0x0a25, B:330:0x0a2b, B:331:0x0a33, B:333:0x0a39, B:336:0x0a53, B:338:0x0a64, B:358:0x0ad8, B:360:0x0ade, B:362:0x0af6, B:365:0x0afd, B:370:0x0b2c, B:372:0x0b6e, B:375:0x0ba3, B:376:0x0ba7, B:377:0x0bb2, B:379:0x0bf5, B:380:0x0c02, B:382:0x0c11, B:386:0x0c2b, B:388:0x0c44, B:374:0x0b80, B:366:0x0b05, B:368:0x0b11, B:369:0x0b15, B:389:0x0c5c, B:390:0x0c74, B:393:0x0c7c, B:394:0x0c81, B:395:0x0c91, B:397:0x0cab, B:398:0x0cc6, B:400:0x0cd0, B:405:0x0cf3, B:404:0x0ce0, B:339:0x0a7c, B:341:0x0a82, B:343:0x0a8c, B:345:0x0a93, B:351:0x0aa3, B:353:0x0aaa, B:355:0x0ac9, B:357:0x0ad0, B:356:0x0acd, B:352:0x0aa7, B:344:0x0a90, B:202:0x05da, B:204:0x05e0, B:408:0x0d05), top: B:421:0x000e, inners: #0, #1, #2, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:111:0x03a7 A[Catch: all -> 0x0d17, TryCatch #3 {all -> 0x0d17, blocks: (B:3:0x000e, B:5:0x0026, B:8:0x002e, B:9:0x0040, B:12:0x0054, B:15:0x007b, B:17:0x00b1, B:20:0x00c3, B:22:0x00cd, B:173:0x0538, B:24:0x00f3, B:26:0x0101, B:29:0x0125, B:31:0x012b, B:33:0x013d, B:35:0x014b, B:37:0x015b, B:38:0x0168, B:39:0x016d, B:42:0x0186, B:111:0x03a7, B:112:0x03b3, B:115:0x03bd, B:121:0x03e0, B:118:0x03cf, B:143:0x045f, B:145:0x046b, B:148:0x047e, B:150:0x048f, B:152:0x049b, B:172:0x0524, B:157:0x04c5, B:159:0x04d5, B:162:0x04ea, B:164:0x04fb, B:166:0x0507, B:125:0x03e8, B:127:0x03f4, B:129:0x0400, B:141:0x0445, B:133:0x041d, B:136:0x042f, B:138:0x0435, B:140:0x043f, B:68:0x01e4, B:71:0x01ee, B:73:0x01fc, B:77:0x0243, B:74:0x0219, B:76:0x022a, B:81:0x0252, B:83:0x027e, B:84:0x02a8, B:86:0x02de, B:88:0x02e4, B:91:0x02f0, B:93:0x0326, B:94:0x0341, B:96:0x0347, B:98:0x0355, B:102:0x0368, B:99:0x035d, B:105:0x036f, B:108:0x0376, B:109:0x038e, B:176:0x054d, B:178:0x055b, B:180:0x0566, B:191:0x0598, B:181:0x056e, B:183:0x0579, B:185:0x057f, B:188:0x058b, B:190:0x0593, B:192:0x059b, B:193:0x05a7, B:196:0x05af, B:198:0x05c1, B:199:0x05cd, B:201:0x05d5, B:205:0x05fa, B:207:0x061f, B:209:0x0630, B:211:0x0636, B:213:0x0642, B:214:0x0673, B:216:0x0679, B:218:0x0687, B:219:0x068b, B:220:0x068e, B:221:0x0691, B:222:0x069f, B:224:0x06a5, B:226:0x06b5, B:227:0x06bc, B:229:0x06c8, B:230:0x06cf, B:231:0x06d2, B:233:0x0712, B:234:0x0725, B:236:0x072b, B:239:0x0745, B:241:0x0760, B:243:0x0779, B:245:0x077e, B:247:0x0782, B:249:0x0786, B:251:0x0790, B:252:0x079a, B:254:0x079e, B:256:0x07a4, B:257:0x07b2, B:258:0x07bb, B:326:0x0a0b, B:260:0x07c8, B:262:0x07df, B:268:0x07fb, B:270:0x081f, B:271:0x0827, B:273:0x082d, B:275:0x083f, B:282:0x0868, B:283:0x088b, B:285:0x0897, B:287:0x08ac, B:289:0x08ed, B:293:0x0905, B:295:0x090c, B:297:0x091b, B:299:0x091f, B:301:0x0923, B:303:0x0927, B:304:0x0933, B:305:0x0938, B:307:0x093e, B:309:0x095a, B:310:0x095f, B:325:0x0a08, B:311:0x097a, B:313:0x0982, B:317:0x09a9, B:319:0x09d5, B:320:0x09dc, B:321:0x09ee, B:323:0x09f8, B:314:0x098f, B:280:0x0853, B:266:0x07e6, B:327:0x0a17, B:329:0x0a25, B:330:0x0a2b, B:331:0x0a33, B:333:0x0a39, B:336:0x0a53, B:338:0x0a64, B:358:0x0ad8, B:360:0x0ade, B:362:0x0af6, B:365:0x0afd, B:370:0x0b2c, B:372:0x0b6e, B:375:0x0ba3, B:376:0x0ba7, B:377:0x0bb2, B:379:0x0bf5, B:380:0x0c02, B:382:0x0c11, B:386:0x0c2b, B:388:0x0c44, B:374:0x0b80, B:366:0x0b05, B:368:0x0b11, B:369:0x0b15, B:389:0x0c5c, B:390:0x0c74, B:393:0x0c7c, B:394:0x0c81, B:395:0x0c91, B:397:0x0cab, B:398:0x0cc6, B:400:0x0cd0, B:405:0x0cf3, B:404:0x0ce0, B:339:0x0a7c, B:341:0x0a82, B:343:0x0a8c, B:345:0x0a93, B:351:0x0aa3, B:353:0x0aaa, B:355:0x0ac9, B:357:0x0ad0, B:356:0x0acd, B:352:0x0aa7, B:344:0x0a90, B:202:0x05da, B:204:0x05e0, B:408:0x0d05), top: B:421:0x000e, inners: #0, #1, #2, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:142:0x045e  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x046b A[Catch: all -> 0x0d17, TryCatch #3 {all -> 0x0d17, blocks: (B:3:0x000e, B:5:0x0026, B:8:0x002e, B:9:0x0040, B:12:0x0054, B:15:0x007b, B:17:0x00b1, B:20:0x00c3, B:22:0x00cd, B:173:0x0538, B:24:0x00f3, B:26:0x0101, B:29:0x0125, B:31:0x012b, B:33:0x013d, B:35:0x014b, B:37:0x015b, B:38:0x0168, B:39:0x016d, B:42:0x0186, B:111:0x03a7, B:112:0x03b3, B:115:0x03bd, B:121:0x03e0, B:118:0x03cf, B:143:0x045f, B:145:0x046b, B:148:0x047e, B:150:0x048f, B:152:0x049b, B:172:0x0524, B:157:0x04c5, B:159:0x04d5, B:162:0x04ea, B:164:0x04fb, B:166:0x0507, B:125:0x03e8, B:127:0x03f4, B:129:0x0400, B:141:0x0445, B:133:0x041d, B:136:0x042f, B:138:0x0435, B:140:0x043f, B:68:0x01e4, B:71:0x01ee, B:73:0x01fc, B:77:0x0243, B:74:0x0219, B:76:0x022a, B:81:0x0252, B:83:0x027e, B:84:0x02a8, B:86:0x02de, B:88:0x02e4, B:91:0x02f0, B:93:0x0326, B:94:0x0341, B:96:0x0347, B:98:0x0355, B:102:0x0368, B:99:0x035d, B:105:0x036f, B:108:0x0376, B:109:0x038e, B:176:0x054d, B:178:0x055b, B:180:0x0566, B:191:0x0598, B:181:0x056e, B:183:0x0579, B:185:0x057f, B:188:0x058b, B:190:0x0593, B:192:0x059b, B:193:0x05a7, B:196:0x05af, B:198:0x05c1, B:199:0x05cd, B:201:0x05d5, B:205:0x05fa, B:207:0x061f, B:209:0x0630, B:211:0x0636, B:213:0x0642, B:214:0x0673, B:216:0x0679, B:218:0x0687, B:219:0x068b, B:220:0x068e, B:221:0x0691, B:222:0x069f, B:224:0x06a5, B:226:0x06b5, B:227:0x06bc, B:229:0x06c8, B:230:0x06cf, B:231:0x06d2, B:233:0x0712, B:234:0x0725, B:236:0x072b, B:239:0x0745, B:241:0x0760, B:243:0x0779, B:245:0x077e, B:247:0x0782, B:249:0x0786, B:251:0x0790, B:252:0x079a, B:254:0x079e, B:256:0x07a4, B:257:0x07b2, B:258:0x07bb, B:326:0x0a0b, B:260:0x07c8, B:262:0x07df, B:268:0x07fb, B:270:0x081f, B:271:0x0827, B:273:0x082d, B:275:0x083f, B:282:0x0868, B:283:0x088b, B:285:0x0897, B:287:0x08ac, B:289:0x08ed, B:293:0x0905, B:295:0x090c, B:297:0x091b, B:299:0x091f, B:301:0x0923, B:303:0x0927, B:304:0x0933, B:305:0x0938, B:307:0x093e, B:309:0x095a, B:310:0x095f, B:325:0x0a08, B:311:0x097a, B:313:0x0982, B:317:0x09a9, B:319:0x09d5, B:320:0x09dc, B:321:0x09ee, B:323:0x09f8, B:314:0x098f, B:280:0x0853, B:266:0x07e6, B:327:0x0a17, B:329:0x0a25, B:330:0x0a2b, B:331:0x0a33, B:333:0x0a39, B:336:0x0a53, B:338:0x0a64, B:358:0x0ad8, B:360:0x0ade, B:362:0x0af6, B:365:0x0afd, B:370:0x0b2c, B:372:0x0b6e, B:375:0x0ba3, B:376:0x0ba7, B:377:0x0bb2, B:379:0x0bf5, B:380:0x0c02, B:382:0x0c11, B:386:0x0c2b, B:388:0x0c44, B:374:0x0b80, B:366:0x0b05, B:368:0x0b11, B:369:0x0b15, B:389:0x0c5c, B:390:0x0c74, B:393:0x0c7c, B:394:0x0c81, B:395:0x0c91, B:397:0x0cab, B:398:0x0cc6, B:400:0x0cd0, B:405:0x0cf3, B:404:0x0ce0, B:339:0x0a7c, B:341:0x0a82, B:343:0x0a8c, B:345:0x0a93, B:351:0x0aa3, B:353:0x0aaa, B:355:0x0ac9, B:357:0x0ad0, B:356:0x0acd, B:352:0x0aa7, B:344:0x0a90, B:202:0x05da, B:204:0x05e0, B:408:0x0d05), top: B:421:0x000e, inners: #0, #1, #2, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:157:0x04c5 A[Catch: all -> 0x0d17, TryCatch #3 {all -> 0x0d17, blocks: (B:3:0x000e, B:5:0x0026, B:8:0x002e, B:9:0x0040, B:12:0x0054, B:15:0x007b, B:17:0x00b1, B:20:0x00c3, B:22:0x00cd, B:173:0x0538, B:24:0x00f3, B:26:0x0101, B:29:0x0125, B:31:0x012b, B:33:0x013d, B:35:0x014b, B:37:0x015b, B:38:0x0168, B:39:0x016d, B:42:0x0186, B:111:0x03a7, B:112:0x03b3, B:115:0x03bd, B:121:0x03e0, B:118:0x03cf, B:143:0x045f, B:145:0x046b, B:148:0x047e, B:150:0x048f, B:152:0x049b, B:172:0x0524, B:157:0x04c5, B:159:0x04d5, B:162:0x04ea, B:164:0x04fb, B:166:0x0507, B:125:0x03e8, B:127:0x03f4, B:129:0x0400, B:141:0x0445, B:133:0x041d, B:136:0x042f, B:138:0x0435, B:140:0x043f, B:68:0x01e4, B:71:0x01ee, B:73:0x01fc, B:77:0x0243, B:74:0x0219, B:76:0x022a, B:81:0x0252, B:83:0x027e, B:84:0x02a8, B:86:0x02de, B:88:0x02e4, B:91:0x02f0, B:93:0x0326, B:94:0x0341, B:96:0x0347, B:98:0x0355, B:102:0x0368, B:99:0x035d, B:105:0x036f, B:108:0x0376, B:109:0x038e, B:176:0x054d, B:178:0x055b, B:180:0x0566, B:191:0x0598, B:181:0x056e, B:183:0x0579, B:185:0x057f, B:188:0x058b, B:190:0x0593, B:192:0x059b, B:193:0x05a7, B:196:0x05af, B:198:0x05c1, B:199:0x05cd, B:201:0x05d5, B:205:0x05fa, B:207:0x061f, B:209:0x0630, B:211:0x0636, B:213:0x0642, B:214:0x0673, B:216:0x0679, B:218:0x0687, B:219:0x068b, B:220:0x068e, B:221:0x0691, B:222:0x069f, B:224:0x06a5, B:226:0x06b5, B:227:0x06bc, B:229:0x06c8, B:230:0x06cf, B:231:0x06d2, B:233:0x0712, B:234:0x0725, B:236:0x072b, B:239:0x0745, B:241:0x0760, B:243:0x0779, B:245:0x077e, B:247:0x0782, B:249:0x0786, B:251:0x0790, B:252:0x079a, B:254:0x079e, B:256:0x07a4, B:257:0x07b2, B:258:0x07bb, B:326:0x0a0b, B:260:0x07c8, B:262:0x07df, B:268:0x07fb, B:270:0x081f, B:271:0x0827, B:273:0x082d, B:275:0x083f, B:282:0x0868, B:283:0x088b, B:285:0x0897, B:287:0x08ac, B:289:0x08ed, B:293:0x0905, B:295:0x090c, B:297:0x091b, B:299:0x091f, B:301:0x0923, B:303:0x0927, B:304:0x0933, B:305:0x0938, B:307:0x093e, B:309:0x095a, B:310:0x095f, B:325:0x0a08, B:311:0x097a, B:313:0x0982, B:317:0x09a9, B:319:0x09d5, B:320:0x09dc, B:321:0x09ee, B:323:0x09f8, B:314:0x098f, B:280:0x0853, B:266:0x07e6, B:327:0x0a17, B:329:0x0a25, B:330:0x0a2b, B:331:0x0a33, B:333:0x0a39, B:336:0x0a53, B:338:0x0a64, B:358:0x0ad8, B:360:0x0ade, B:362:0x0af6, B:365:0x0afd, B:370:0x0b2c, B:372:0x0b6e, B:375:0x0ba3, B:376:0x0ba7, B:377:0x0bb2, B:379:0x0bf5, B:380:0x0c02, B:382:0x0c11, B:386:0x0c2b, B:388:0x0c44, B:374:0x0b80, B:366:0x0b05, B:368:0x0b11, B:369:0x0b15, B:389:0x0c5c, B:390:0x0c74, B:393:0x0c7c, B:394:0x0c81, B:395:0x0c91, B:397:0x0cab, B:398:0x0cc6, B:400:0x0cd0, B:405:0x0cf3, B:404:0x0ce0, B:339:0x0a7c, B:341:0x0a82, B:343:0x0a8c, B:345:0x0a93, B:351:0x0aa3, B:353:0x0aaa, B:355:0x0ac9, B:357:0x0ad0, B:356:0x0acd, B:352:0x0aa7, B:344:0x0a90, B:202:0x05da, B:204:0x05e0, B:408:0x0d05), top: B:421:0x000e, inners: #0, #1, #2, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:170:0x051f A[PHI: r6 r10
      0x051f: PHI (r6v65 int) = (r6v64 int), (r6v64 int), (r6v68 int) binds: [B:158:0x04d3, B:160:0x04e6, B:156:0x04c0] A[DONT_GENERATE, DONT_INLINE]
      0x051f: PHI (r10v50 com.google.android.gms.internal.measurement.zzgb) = 
      (r10v48 com.google.android.gms.internal.measurement.zzgb)
      (r10v48 com.google.android.gms.internal.measurement.zzgb)
      (r10v52 com.google.android.gms.internal.measurement.zzgb)
     binds: [B:158:0x04d3, B:160:0x04e6, B:156:0x04c0] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:181:0x056e A[Catch: all -> 0x0d17, TryCatch #3 {all -> 0x0d17, blocks: (B:3:0x000e, B:5:0x0026, B:8:0x002e, B:9:0x0040, B:12:0x0054, B:15:0x007b, B:17:0x00b1, B:20:0x00c3, B:22:0x00cd, B:173:0x0538, B:24:0x00f3, B:26:0x0101, B:29:0x0125, B:31:0x012b, B:33:0x013d, B:35:0x014b, B:37:0x015b, B:38:0x0168, B:39:0x016d, B:42:0x0186, B:111:0x03a7, B:112:0x03b3, B:115:0x03bd, B:121:0x03e0, B:118:0x03cf, B:143:0x045f, B:145:0x046b, B:148:0x047e, B:150:0x048f, B:152:0x049b, B:172:0x0524, B:157:0x04c5, B:159:0x04d5, B:162:0x04ea, B:164:0x04fb, B:166:0x0507, B:125:0x03e8, B:127:0x03f4, B:129:0x0400, B:141:0x0445, B:133:0x041d, B:136:0x042f, B:138:0x0435, B:140:0x043f, B:68:0x01e4, B:71:0x01ee, B:73:0x01fc, B:77:0x0243, B:74:0x0219, B:76:0x022a, B:81:0x0252, B:83:0x027e, B:84:0x02a8, B:86:0x02de, B:88:0x02e4, B:91:0x02f0, B:93:0x0326, B:94:0x0341, B:96:0x0347, B:98:0x0355, B:102:0x0368, B:99:0x035d, B:105:0x036f, B:108:0x0376, B:109:0x038e, B:176:0x054d, B:178:0x055b, B:180:0x0566, B:191:0x0598, B:181:0x056e, B:183:0x0579, B:185:0x057f, B:188:0x058b, B:190:0x0593, B:192:0x059b, B:193:0x05a7, B:196:0x05af, B:198:0x05c1, B:199:0x05cd, B:201:0x05d5, B:205:0x05fa, B:207:0x061f, B:209:0x0630, B:211:0x0636, B:213:0x0642, B:214:0x0673, B:216:0x0679, B:218:0x0687, B:219:0x068b, B:220:0x068e, B:221:0x0691, B:222:0x069f, B:224:0x06a5, B:226:0x06b5, B:227:0x06bc, B:229:0x06c8, B:230:0x06cf, B:231:0x06d2, B:233:0x0712, B:234:0x0725, B:236:0x072b, B:239:0x0745, B:241:0x0760, B:243:0x0779, B:245:0x077e, B:247:0x0782, B:249:0x0786, B:251:0x0790, B:252:0x079a, B:254:0x079e, B:256:0x07a4, B:257:0x07b2, B:258:0x07bb, B:326:0x0a0b, B:260:0x07c8, B:262:0x07df, B:268:0x07fb, B:270:0x081f, B:271:0x0827, B:273:0x082d, B:275:0x083f, B:282:0x0868, B:283:0x088b, B:285:0x0897, B:287:0x08ac, B:289:0x08ed, B:293:0x0905, B:295:0x090c, B:297:0x091b, B:299:0x091f, B:301:0x0923, B:303:0x0927, B:304:0x0933, B:305:0x0938, B:307:0x093e, B:309:0x095a, B:310:0x095f, B:325:0x0a08, B:311:0x097a, B:313:0x0982, B:317:0x09a9, B:319:0x09d5, B:320:0x09dc, B:321:0x09ee, B:323:0x09f8, B:314:0x098f, B:280:0x0853, B:266:0x07e6, B:327:0x0a17, B:329:0x0a25, B:330:0x0a2b, B:331:0x0a33, B:333:0x0a39, B:336:0x0a53, B:338:0x0a64, B:358:0x0ad8, B:360:0x0ade, B:362:0x0af6, B:365:0x0afd, B:370:0x0b2c, B:372:0x0b6e, B:375:0x0ba3, B:376:0x0ba7, B:377:0x0bb2, B:379:0x0bf5, B:380:0x0c02, B:382:0x0c11, B:386:0x0c2b, B:388:0x0c44, B:374:0x0b80, B:366:0x0b05, B:368:0x0b11, B:369:0x0b15, B:389:0x0c5c, B:390:0x0c74, B:393:0x0c7c, B:394:0x0c81, B:395:0x0c91, B:397:0x0cab, B:398:0x0cc6, B:400:0x0cd0, B:405:0x0cf3, B:404:0x0ce0, B:339:0x0a7c, B:341:0x0a82, B:343:0x0a8c, B:345:0x0a93, B:351:0x0aa3, B:353:0x0aaa, B:355:0x0ac9, B:357:0x0ad0, B:356:0x0acd, B:352:0x0aa7, B:344:0x0a90, B:202:0x05da, B:204:0x05e0, B:408:0x0d05), top: B:421:0x000e, inners: #0, #1, #2, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:270:0x081f A[Catch: all -> 0x0d17, TryCatch #3 {all -> 0x0d17, blocks: (B:3:0x000e, B:5:0x0026, B:8:0x002e, B:9:0x0040, B:12:0x0054, B:15:0x007b, B:17:0x00b1, B:20:0x00c3, B:22:0x00cd, B:173:0x0538, B:24:0x00f3, B:26:0x0101, B:29:0x0125, B:31:0x012b, B:33:0x013d, B:35:0x014b, B:37:0x015b, B:38:0x0168, B:39:0x016d, B:42:0x0186, B:111:0x03a7, B:112:0x03b3, B:115:0x03bd, B:121:0x03e0, B:118:0x03cf, B:143:0x045f, B:145:0x046b, B:148:0x047e, B:150:0x048f, B:152:0x049b, B:172:0x0524, B:157:0x04c5, B:159:0x04d5, B:162:0x04ea, B:164:0x04fb, B:166:0x0507, B:125:0x03e8, B:127:0x03f4, B:129:0x0400, B:141:0x0445, B:133:0x041d, B:136:0x042f, B:138:0x0435, B:140:0x043f, B:68:0x01e4, B:71:0x01ee, B:73:0x01fc, B:77:0x0243, B:74:0x0219, B:76:0x022a, B:81:0x0252, B:83:0x027e, B:84:0x02a8, B:86:0x02de, B:88:0x02e4, B:91:0x02f0, B:93:0x0326, B:94:0x0341, B:96:0x0347, B:98:0x0355, B:102:0x0368, B:99:0x035d, B:105:0x036f, B:108:0x0376, B:109:0x038e, B:176:0x054d, B:178:0x055b, B:180:0x0566, B:191:0x0598, B:181:0x056e, B:183:0x0579, B:185:0x057f, B:188:0x058b, B:190:0x0593, B:192:0x059b, B:193:0x05a7, B:196:0x05af, B:198:0x05c1, B:199:0x05cd, B:201:0x05d5, B:205:0x05fa, B:207:0x061f, B:209:0x0630, B:211:0x0636, B:213:0x0642, B:214:0x0673, B:216:0x0679, B:218:0x0687, B:219:0x068b, B:220:0x068e, B:221:0x0691, B:222:0x069f, B:224:0x06a5, B:226:0x06b5, B:227:0x06bc, B:229:0x06c8, B:230:0x06cf, B:231:0x06d2, B:233:0x0712, B:234:0x0725, B:236:0x072b, B:239:0x0745, B:241:0x0760, B:243:0x0779, B:245:0x077e, B:247:0x0782, B:249:0x0786, B:251:0x0790, B:252:0x079a, B:254:0x079e, B:256:0x07a4, B:257:0x07b2, B:258:0x07bb, B:326:0x0a0b, B:260:0x07c8, B:262:0x07df, B:268:0x07fb, B:270:0x081f, B:271:0x0827, B:273:0x082d, B:275:0x083f, B:282:0x0868, B:283:0x088b, B:285:0x0897, B:287:0x08ac, B:289:0x08ed, B:293:0x0905, B:295:0x090c, B:297:0x091b, B:299:0x091f, B:301:0x0923, B:303:0x0927, B:304:0x0933, B:305:0x0938, B:307:0x093e, B:309:0x095a, B:310:0x095f, B:325:0x0a08, B:311:0x097a, B:313:0x0982, B:317:0x09a9, B:319:0x09d5, B:320:0x09dc, B:321:0x09ee, B:323:0x09f8, B:314:0x098f, B:280:0x0853, B:266:0x07e6, B:327:0x0a17, B:329:0x0a25, B:330:0x0a2b, B:331:0x0a33, B:333:0x0a39, B:336:0x0a53, B:338:0x0a64, B:358:0x0ad8, B:360:0x0ade, B:362:0x0af6, B:365:0x0afd, B:370:0x0b2c, B:372:0x0b6e, B:375:0x0ba3, B:376:0x0ba7, B:377:0x0bb2, B:379:0x0bf5, B:380:0x0c02, B:382:0x0c11, B:386:0x0c2b, B:388:0x0c44, B:374:0x0b80, B:366:0x0b05, B:368:0x0b11, B:369:0x0b15, B:389:0x0c5c, B:390:0x0c74, B:393:0x0c7c, B:394:0x0c81, B:395:0x0c91, B:397:0x0cab, B:398:0x0cc6, B:400:0x0cd0, B:405:0x0cf3, B:404:0x0ce0, B:339:0x0a7c, B:341:0x0a82, B:343:0x0a8c, B:345:0x0a93, B:351:0x0aa3, B:353:0x0aaa, B:355:0x0ac9, B:357:0x0ad0, B:356:0x0acd, B:352:0x0aa7, B:344:0x0a90, B:202:0x05da, B:204:0x05e0, B:408:0x0d05), top: B:421:0x000e, inners: #0, #1, #2, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:280:0x0853 A[Catch: all -> 0x0d17, EDGE_INSN: B:463:0x0853->B:280:0x0853 BREAK  A[LOOP:11: B:271:0x0827->B:279:0x0850], TryCatch #3 {all -> 0x0d17, blocks: (B:3:0x000e, B:5:0x0026, B:8:0x002e, B:9:0x0040, B:12:0x0054, B:15:0x007b, B:17:0x00b1, B:20:0x00c3, B:22:0x00cd, B:173:0x0538, B:24:0x00f3, B:26:0x0101, B:29:0x0125, B:31:0x012b, B:33:0x013d, B:35:0x014b, B:37:0x015b, B:38:0x0168, B:39:0x016d, B:42:0x0186, B:111:0x03a7, B:112:0x03b3, B:115:0x03bd, B:121:0x03e0, B:118:0x03cf, B:143:0x045f, B:145:0x046b, B:148:0x047e, B:150:0x048f, B:152:0x049b, B:172:0x0524, B:157:0x04c5, B:159:0x04d5, B:162:0x04ea, B:164:0x04fb, B:166:0x0507, B:125:0x03e8, B:127:0x03f4, B:129:0x0400, B:141:0x0445, B:133:0x041d, B:136:0x042f, B:138:0x0435, B:140:0x043f, B:68:0x01e4, B:71:0x01ee, B:73:0x01fc, B:77:0x0243, B:74:0x0219, B:76:0x022a, B:81:0x0252, B:83:0x027e, B:84:0x02a8, B:86:0x02de, B:88:0x02e4, B:91:0x02f0, B:93:0x0326, B:94:0x0341, B:96:0x0347, B:98:0x0355, B:102:0x0368, B:99:0x035d, B:105:0x036f, B:108:0x0376, B:109:0x038e, B:176:0x054d, B:178:0x055b, B:180:0x0566, B:191:0x0598, B:181:0x056e, B:183:0x0579, B:185:0x057f, B:188:0x058b, B:190:0x0593, B:192:0x059b, B:193:0x05a7, B:196:0x05af, B:198:0x05c1, B:199:0x05cd, B:201:0x05d5, B:205:0x05fa, B:207:0x061f, B:209:0x0630, B:211:0x0636, B:213:0x0642, B:214:0x0673, B:216:0x0679, B:218:0x0687, B:219:0x068b, B:220:0x068e, B:221:0x0691, B:222:0x069f, B:224:0x06a5, B:226:0x06b5, B:227:0x06bc, B:229:0x06c8, B:230:0x06cf, B:231:0x06d2, B:233:0x0712, B:234:0x0725, B:236:0x072b, B:239:0x0745, B:241:0x0760, B:243:0x0779, B:245:0x077e, B:247:0x0782, B:249:0x0786, B:251:0x0790, B:252:0x079a, B:254:0x079e, B:256:0x07a4, B:257:0x07b2, B:258:0x07bb, B:326:0x0a0b, B:260:0x07c8, B:262:0x07df, B:268:0x07fb, B:270:0x081f, B:271:0x0827, B:273:0x082d, B:275:0x083f, B:282:0x0868, B:283:0x088b, B:285:0x0897, B:287:0x08ac, B:289:0x08ed, B:293:0x0905, B:295:0x090c, B:297:0x091b, B:299:0x091f, B:301:0x0923, B:303:0x0927, B:304:0x0933, B:305:0x0938, B:307:0x093e, B:309:0x095a, B:310:0x095f, B:325:0x0a08, B:311:0x097a, B:313:0x0982, B:317:0x09a9, B:319:0x09d5, B:320:0x09dc, B:321:0x09ee, B:323:0x09f8, B:314:0x098f, B:280:0x0853, B:266:0x07e6, B:327:0x0a17, B:329:0x0a25, B:330:0x0a2b, B:331:0x0a33, B:333:0x0a39, B:336:0x0a53, B:338:0x0a64, B:358:0x0ad8, B:360:0x0ade, B:362:0x0af6, B:365:0x0afd, B:370:0x0b2c, B:372:0x0b6e, B:375:0x0ba3, B:376:0x0ba7, B:377:0x0bb2, B:379:0x0bf5, B:380:0x0c02, B:382:0x0c11, B:386:0x0c2b, B:388:0x0c44, B:374:0x0b80, B:366:0x0b05, B:368:0x0b11, B:369:0x0b15, B:389:0x0c5c, B:390:0x0c74, B:393:0x0c7c, B:394:0x0c81, B:395:0x0c91, B:397:0x0cab, B:398:0x0cc6, B:400:0x0cd0, B:405:0x0cf3, B:404:0x0ce0, B:339:0x0a7c, B:341:0x0a82, B:343:0x0a8c, B:345:0x0a93, B:351:0x0aa3, B:353:0x0aaa, B:355:0x0ac9, B:357:0x0ad0, B:356:0x0acd, B:352:0x0aa7, B:344:0x0a90, B:202:0x05da, B:204:0x05e0, B:408:0x0d05), top: B:421:0x000e, inners: #0, #1, #2, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:282:0x0868 A[Catch: all -> 0x0d17, TryCatch #3 {all -> 0x0d17, blocks: (B:3:0x000e, B:5:0x0026, B:8:0x002e, B:9:0x0040, B:12:0x0054, B:15:0x007b, B:17:0x00b1, B:20:0x00c3, B:22:0x00cd, B:173:0x0538, B:24:0x00f3, B:26:0x0101, B:29:0x0125, B:31:0x012b, B:33:0x013d, B:35:0x014b, B:37:0x015b, B:38:0x0168, B:39:0x016d, B:42:0x0186, B:111:0x03a7, B:112:0x03b3, B:115:0x03bd, B:121:0x03e0, B:118:0x03cf, B:143:0x045f, B:145:0x046b, B:148:0x047e, B:150:0x048f, B:152:0x049b, B:172:0x0524, B:157:0x04c5, B:159:0x04d5, B:162:0x04ea, B:164:0x04fb, B:166:0x0507, B:125:0x03e8, B:127:0x03f4, B:129:0x0400, B:141:0x0445, B:133:0x041d, B:136:0x042f, B:138:0x0435, B:140:0x043f, B:68:0x01e4, B:71:0x01ee, B:73:0x01fc, B:77:0x0243, B:74:0x0219, B:76:0x022a, B:81:0x0252, B:83:0x027e, B:84:0x02a8, B:86:0x02de, B:88:0x02e4, B:91:0x02f0, B:93:0x0326, B:94:0x0341, B:96:0x0347, B:98:0x0355, B:102:0x0368, B:99:0x035d, B:105:0x036f, B:108:0x0376, B:109:0x038e, B:176:0x054d, B:178:0x055b, B:180:0x0566, B:191:0x0598, B:181:0x056e, B:183:0x0579, B:185:0x057f, B:188:0x058b, B:190:0x0593, B:192:0x059b, B:193:0x05a7, B:196:0x05af, B:198:0x05c1, B:199:0x05cd, B:201:0x05d5, B:205:0x05fa, B:207:0x061f, B:209:0x0630, B:211:0x0636, B:213:0x0642, B:214:0x0673, B:216:0x0679, B:218:0x0687, B:219:0x068b, B:220:0x068e, B:221:0x0691, B:222:0x069f, B:224:0x06a5, B:226:0x06b5, B:227:0x06bc, B:229:0x06c8, B:230:0x06cf, B:231:0x06d2, B:233:0x0712, B:234:0x0725, B:236:0x072b, B:239:0x0745, B:241:0x0760, B:243:0x0779, B:245:0x077e, B:247:0x0782, B:249:0x0786, B:251:0x0790, B:252:0x079a, B:254:0x079e, B:256:0x07a4, B:257:0x07b2, B:258:0x07bb, B:326:0x0a0b, B:260:0x07c8, B:262:0x07df, B:268:0x07fb, B:270:0x081f, B:271:0x0827, B:273:0x082d, B:275:0x083f, B:282:0x0868, B:283:0x088b, B:285:0x0897, B:287:0x08ac, B:289:0x08ed, B:293:0x0905, B:295:0x090c, B:297:0x091b, B:299:0x091f, B:301:0x0923, B:303:0x0927, B:304:0x0933, B:305:0x0938, B:307:0x093e, B:309:0x095a, B:310:0x095f, B:325:0x0a08, B:311:0x097a, B:313:0x0982, B:317:0x09a9, B:319:0x09d5, B:320:0x09dc, B:321:0x09ee, B:323:0x09f8, B:314:0x098f, B:280:0x0853, B:266:0x07e6, B:327:0x0a17, B:329:0x0a25, B:330:0x0a2b, B:331:0x0a33, B:333:0x0a39, B:336:0x0a53, B:338:0x0a64, B:358:0x0ad8, B:360:0x0ade, B:362:0x0af6, B:365:0x0afd, B:370:0x0b2c, B:372:0x0b6e, B:375:0x0ba3, B:376:0x0ba7, B:377:0x0bb2, B:379:0x0bf5, B:380:0x0c02, B:382:0x0c11, B:386:0x0c2b, B:388:0x0c44, B:374:0x0b80, B:366:0x0b05, B:368:0x0b11, B:369:0x0b15, B:389:0x0c5c, B:390:0x0c74, B:393:0x0c7c, B:394:0x0c81, B:395:0x0c91, B:397:0x0cab, B:398:0x0cc6, B:400:0x0cd0, B:405:0x0cf3, B:404:0x0ce0, B:339:0x0a7c, B:341:0x0a82, B:343:0x0a8c, B:345:0x0a93, B:351:0x0aa3, B:353:0x0aaa, B:355:0x0ac9, B:357:0x0ad0, B:356:0x0acd, B:352:0x0aa7, B:344:0x0a90, B:202:0x05da, B:204:0x05e0, B:408:0x0d05), top: B:421:0x000e, inners: #0, #1, #2, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:283:0x088b A[Catch: all -> 0x0d17, TryCatch #3 {all -> 0x0d17, blocks: (B:3:0x000e, B:5:0x0026, B:8:0x002e, B:9:0x0040, B:12:0x0054, B:15:0x007b, B:17:0x00b1, B:20:0x00c3, B:22:0x00cd, B:173:0x0538, B:24:0x00f3, B:26:0x0101, B:29:0x0125, B:31:0x012b, B:33:0x013d, B:35:0x014b, B:37:0x015b, B:38:0x0168, B:39:0x016d, B:42:0x0186, B:111:0x03a7, B:112:0x03b3, B:115:0x03bd, B:121:0x03e0, B:118:0x03cf, B:143:0x045f, B:145:0x046b, B:148:0x047e, B:150:0x048f, B:152:0x049b, B:172:0x0524, B:157:0x04c5, B:159:0x04d5, B:162:0x04ea, B:164:0x04fb, B:166:0x0507, B:125:0x03e8, B:127:0x03f4, B:129:0x0400, B:141:0x0445, B:133:0x041d, B:136:0x042f, B:138:0x0435, B:140:0x043f, B:68:0x01e4, B:71:0x01ee, B:73:0x01fc, B:77:0x0243, B:74:0x0219, B:76:0x022a, B:81:0x0252, B:83:0x027e, B:84:0x02a8, B:86:0x02de, B:88:0x02e4, B:91:0x02f0, B:93:0x0326, B:94:0x0341, B:96:0x0347, B:98:0x0355, B:102:0x0368, B:99:0x035d, B:105:0x036f, B:108:0x0376, B:109:0x038e, B:176:0x054d, B:178:0x055b, B:180:0x0566, B:191:0x0598, B:181:0x056e, B:183:0x0579, B:185:0x057f, B:188:0x058b, B:190:0x0593, B:192:0x059b, B:193:0x05a7, B:196:0x05af, B:198:0x05c1, B:199:0x05cd, B:201:0x05d5, B:205:0x05fa, B:207:0x061f, B:209:0x0630, B:211:0x0636, B:213:0x0642, B:214:0x0673, B:216:0x0679, B:218:0x0687, B:219:0x068b, B:220:0x068e, B:221:0x0691, B:222:0x069f, B:224:0x06a5, B:226:0x06b5, B:227:0x06bc, B:229:0x06c8, B:230:0x06cf, B:231:0x06d2, B:233:0x0712, B:234:0x0725, B:236:0x072b, B:239:0x0745, B:241:0x0760, B:243:0x0779, B:245:0x077e, B:247:0x0782, B:249:0x0786, B:251:0x0790, B:252:0x079a, B:254:0x079e, B:256:0x07a4, B:257:0x07b2, B:258:0x07bb, B:326:0x0a0b, B:260:0x07c8, B:262:0x07df, B:268:0x07fb, B:270:0x081f, B:271:0x0827, B:273:0x082d, B:275:0x083f, B:282:0x0868, B:283:0x088b, B:285:0x0897, B:287:0x08ac, B:289:0x08ed, B:293:0x0905, B:295:0x090c, B:297:0x091b, B:299:0x091f, B:301:0x0923, B:303:0x0927, B:304:0x0933, B:305:0x0938, B:307:0x093e, B:309:0x095a, B:310:0x095f, B:325:0x0a08, B:311:0x097a, B:313:0x0982, B:317:0x09a9, B:319:0x09d5, B:320:0x09dc, B:321:0x09ee, B:323:0x09f8, B:314:0x098f, B:280:0x0853, B:266:0x07e6, B:327:0x0a17, B:329:0x0a25, B:330:0x0a2b, B:331:0x0a33, B:333:0x0a39, B:336:0x0a53, B:338:0x0a64, B:358:0x0ad8, B:360:0x0ade, B:362:0x0af6, B:365:0x0afd, B:370:0x0b2c, B:372:0x0b6e, B:375:0x0ba3, B:376:0x0ba7, B:377:0x0bb2, B:379:0x0bf5, B:380:0x0c02, B:382:0x0c11, B:386:0x0c2b, B:388:0x0c44, B:374:0x0b80, B:366:0x0b05, B:368:0x0b11, B:369:0x0b15, B:389:0x0c5c, B:390:0x0c74, B:393:0x0c7c, B:394:0x0c81, B:395:0x0c91, B:397:0x0cab, B:398:0x0cc6, B:400:0x0cd0, B:405:0x0cf3, B:404:0x0ce0, B:339:0x0a7c, B:341:0x0a82, B:343:0x0a8c, B:345:0x0a93, B:351:0x0aa3, B:353:0x0aaa, B:355:0x0ac9, B:357:0x0ad0, B:356:0x0acd, B:352:0x0aa7, B:344:0x0a90, B:202:0x05da, B:204:0x05e0, B:408:0x0d05), top: B:421:0x000e, inners: #0, #1, #2, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:288:0x08eb A[PHI: r3
      0x08eb: PHI (r3v23 com.google.android.gms.measurement.internal.h) = (r3v22 com.google.android.gms.measurement.internal.h), (r3v34 com.google.android.gms.measurement.internal.h) binds: [B:284:0x0895, B:286:0x08aa] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:374:0x0b80 A[Catch: all -> 0x0d17, TryCatch #3 {all -> 0x0d17, blocks: (B:3:0x000e, B:5:0x0026, B:8:0x002e, B:9:0x0040, B:12:0x0054, B:15:0x007b, B:17:0x00b1, B:20:0x00c3, B:22:0x00cd, B:173:0x0538, B:24:0x00f3, B:26:0x0101, B:29:0x0125, B:31:0x012b, B:33:0x013d, B:35:0x014b, B:37:0x015b, B:38:0x0168, B:39:0x016d, B:42:0x0186, B:111:0x03a7, B:112:0x03b3, B:115:0x03bd, B:121:0x03e0, B:118:0x03cf, B:143:0x045f, B:145:0x046b, B:148:0x047e, B:150:0x048f, B:152:0x049b, B:172:0x0524, B:157:0x04c5, B:159:0x04d5, B:162:0x04ea, B:164:0x04fb, B:166:0x0507, B:125:0x03e8, B:127:0x03f4, B:129:0x0400, B:141:0x0445, B:133:0x041d, B:136:0x042f, B:138:0x0435, B:140:0x043f, B:68:0x01e4, B:71:0x01ee, B:73:0x01fc, B:77:0x0243, B:74:0x0219, B:76:0x022a, B:81:0x0252, B:83:0x027e, B:84:0x02a8, B:86:0x02de, B:88:0x02e4, B:91:0x02f0, B:93:0x0326, B:94:0x0341, B:96:0x0347, B:98:0x0355, B:102:0x0368, B:99:0x035d, B:105:0x036f, B:108:0x0376, B:109:0x038e, B:176:0x054d, B:178:0x055b, B:180:0x0566, B:191:0x0598, B:181:0x056e, B:183:0x0579, B:185:0x057f, B:188:0x058b, B:190:0x0593, B:192:0x059b, B:193:0x05a7, B:196:0x05af, B:198:0x05c1, B:199:0x05cd, B:201:0x05d5, B:205:0x05fa, B:207:0x061f, B:209:0x0630, B:211:0x0636, B:213:0x0642, B:214:0x0673, B:216:0x0679, B:218:0x0687, B:219:0x068b, B:220:0x068e, B:221:0x0691, B:222:0x069f, B:224:0x06a5, B:226:0x06b5, B:227:0x06bc, B:229:0x06c8, B:230:0x06cf, B:231:0x06d2, B:233:0x0712, B:234:0x0725, B:236:0x072b, B:239:0x0745, B:241:0x0760, B:243:0x0779, B:245:0x077e, B:247:0x0782, B:249:0x0786, B:251:0x0790, B:252:0x079a, B:254:0x079e, B:256:0x07a4, B:257:0x07b2, B:258:0x07bb, B:326:0x0a0b, B:260:0x07c8, B:262:0x07df, B:268:0x07fb, B:270:0x081f, B:271:0x0827, B:273:0x082d, B:275:0x083f, B:282:0x0868, B:283:0x088b, B:285:0x0897, B:287:0x08ac, B:289:0x08ed, B:293:0x0905, B:295:0x090c, B:297:0x091b, B:299:0x091f, B:301:0x0923, B:303:0x0927, B:304:0x0933, B:305:0x0938, B:307:0x093e, B:309:0x095a, B:310:0x095f, B:325:0x0a08, B:311:0x097a, B:313:0x0982, B:317:0x09a9, B:319:0x09d5, B:320:0x09dc, B:321:0x09ee, B:323:0x09f8, B:314:0x098f, B:280:0x0853, B:266:0x07e6, B:327:0x0a17, B:329:0x0a25, B:330:0x0a2b, B:331:0x0a33, B:333:0x0a39, B:336:0x0a53, B:338:0x0a64, B:358:0x0ad8, B:360:0x0ade, B:362:0x0af6, B:365:0x0afd, B:370:0x0b2c, B:372:0x0b6e, B:375:0x0ba3, B:376:0x0ba7, B:377:0x0bb2, B:379:0x0bf5, B:380:0x0c02, B:382:0x0c11, B:386:0x0c2b, B:388:0x0c44, B:374:0x0b80, B:366:0x0b05, B:368:0x0b11, B:369:0x0b15, B:389:0x0c5c, B:390:0x0c74, B:393:0x0c7c, B:394:0x0c81, B:395:0x0c91, B:397:0x0cab, B:398:0x0cc6, B:400:0x0cd0, B:405:0x0cf3, B:404:0x0ce0, B:339:0x0a7c, B:341:0x0a82, B:343:0x0a8c, B:345:0x0a93, B:351:0x0aa3, B:353:0x0aaa, B:355:0x0ac9, B:357:0x0ad0, B:356:0x0acd, B:352:0x0aa7, B:344:0x0a90, B:202:0x05da, B:204:0x05e0, B:408:0x0d05), top: B:421:0x000e, inners: #0, #1, #2, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x01c8  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x01cb  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final boolean K(java.lang.String r42, long r43) {
        /*
            Method dump skipped, instruction units count: 3364
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzli.K(java.lang.String, long):boolean");
    }

    private final boolean L() {
        B().c();
        b();
        e eVar = this.f24840c;
        O(eVar);
        if (eVar.m()) {
            return true;
        }
        e eVar2 = this.f24840c;
        O(eVar2);
        return !TextUtils.isEmpty(eVar2.Y());
    }

    private final boolean M(com.google.android.gms.internal.measurement.zzfr zzfrVar, com.google.android.gms.internal.measurement.zzfr zzfrVar2) {
        Preconditions.a("_e".equals(zzfrVar.F()));
        O(this.f24844g);
        zzfw zzfwVarI = zzlk.i((com.google.android.gms.internal.measurement.zzfs) zzfrVar.o(), "_sc");
        String strB = zzfwVarI == null ? null : zzfwVarI.B();
        O(this.f24844g);
        zzfw zzfwVarI2 = zzlk.i((com.google.android.gms.internal.measurement.zzfs) zzfrVar2.o(), "_pc");
        String strB2 = zzfwVarI2 != null ? zzfwVarI2.B() : null;
        if (strB2 == null || !strB2.equals(strB)) {
            return false;
        }
        Preconditions.a("_e".equals(zzfrVar.F()));
        O(this.f24844g);
        zzfw zzfwVarI3 = zzlk.i((com.google.android.gms.internal.measurement.zzfs) zzfrVar.o(), "_et");
        if (zzfwVarI3 == null || !zzfwVarI3.Q() || zzfwVarI3.x() <= 0) {
            return true;
        }
        long jX = zzfwVarI3.x();
        O(this.f24844g);
        zzfw zzfwVarI4 = zzlk.i((com.google.android.gms.internal.measurement.zzfs) zzfrVar2.o(), "_et");
        if (zzfwVarI4 != null && zzfwVarI4.x() > 0) {
            jX += zzfwVarI4.x();
        }
        O(this.f24844g);
        zzlk.N(zzfrVar2, "_et", Long.valueOf(jX));
        O(this.f24844g);
        zzlk.N(zzfrVar, "_fr", 1L);
        return true;
    }

    private static final boolean N(zzp zzpVar) {
        return (TextUtils.isEmpty(zzpVar.f24880p) && TextUtils.isEmpty(zzpVar.E)) ? false : true;
    }

    private static final r3 O(r3 r3Var) {
        if (r3Var == null) {
            throw new IllegalStateException("Upload Component not created");
        }
        if (r3Var.f()) {
            return r3Var;
        }
        throw new IllegalStateException("Component not initialized: ".concat(String.valueOf(r3Var.getClass())));
    }

    public static zzli d0(Context context) {
        Preconditions.k(context);
        Preconditions.k(context.getApplicationContext());
        if (F == null) {
            synchronized (zzli.class) {
                if (F == null) {
                    F = new zzli((zzlj) Preconditions.k(new zzlj(context)), null);
                }
            }
        }
        return F;
    }

    static /* bridge */ /* synthetic */ void i0(zzli zzliVar, zzlj zzljVar) {
        zzliVar.B().c();
        zzliVar.f24848k = new zzfq(zzliVar);
        e eVar = new e(zzliVar);
        eVar.e();
        zzliVar.f24840c = eVar;
        zzliVar.R().v((b) Preconditions.k(zzliVar.f24838a));
        zzkd zzkdVar = new zzkd(zzliVar);
        zzkdVar.e();
        zzliVar.f24846i = zzkdVar;
        l4 l4Var = new l4(zzliVar);
        l4Var.e();
        zzliVar.f24843f = l4Var;
        z1 z1Var = new z1(zzliVar);
        z1Var.e();
        zzliVar.f24845h = z1Var;
        zzku zzkuVar = new zzku(zzliVar);
        zzkuVar.e();
        zzliVar.f24842e = zzkuVar;
        zzliVar.f24841d = new w(zzliVar);
        if (zzliVar.f24854q != zzliVar.f24855r) {
            zzliVar.U().m().c("Not all upload components initialized", Integer.valueOf(zzliVar.f24854q), Integer.valueOf(zzliVar.f24855r));
        }
        zzliVar.f24850m = true;
    }

    @VisibleForTesting
    final boolean A() {
        B().c();
        FileLock fileLock = this.f24859v;
        if (fileLock != null && fileLock.isValid()) {
            U().q().a("Storage concurrent access okay");
            return true;
        }
        this.f24840c.f24394a.v();
        try {
            FileChannel channel = new RandomAccessFile(new File(this.f24849l.N0().getFilesDir(), "google_app_measurement.db"), "rw").getChannel();
            this.f24860w = channel;
            FileLock fileLockTryLock = channel.tryLock();
            this.f24859v = fileLockTryLock;
            if (fileLockTryLock != null) {
                U().q().a("Storage concurrent access okay");
                return true;
            }
            U().m().a("Storage concurrent data access panic");
            return false;
        } catch (FileNotFoundException e10) {
            U().m().b("Failed to acquire storage lock", e10);
            return false;
        } catch (IOException e11) {
            U().m().b("Failed to access storage lock file", e11);
            return false;
        } catch (OverlappingFileLockException e12) {
            U().r().b("Storage lock already acquired", e12);
            return false;
        }
    }

    @Override // com.google.android.gms.measurement.internal.a1
    public final zzgf B() {
        return ((zzgi) Preconditions.k(this.f24849l)).B();
    }

    final long D() {
        long jA = x().a();
        zzkd zzkdVar = this.f24846i;
        zzkdVar.d();
        zzkdVar.c();
        long jA2 = zzkdVar.f24821l.a();
        if (jA2 == 0) {
            jA2 = ((long) zzkdVar.f24394a.L().p().nextInt(86400000)) + 1;
            zzkdVar.f24821l.b(jA2);
        }
        return ((((jA + jA2) / 1000) / 60) / 60) / 24;
    }

    @Override // com.google.android.gms.measurement.internal.a1
    public final Context N0() {
        return this.f24849l.N0();
    }

    final c0 P(zzp zzpVar) {
        B().c();
        b();
        Preconditions.k(zzpVar);
        Preconditions.g(zzpVar.f24879o);
        zzpg.b();
        zzlg zzlgVar = null;
        if (R().y(zzpVar.f24879o, zzel.L0) && !zzpVar.K.isEmpty()) {
            this.B.put(zzpVar.f24879o, new a4(this, zzpVar.K));
        }
        e eVar = this.f24840c;
        O(eVar);
        c0 c0VarP = eVar.P(zzpVar.f24879o);
        zzah zzahVarC = S(zzpVar.f24879o).c(zzah.b(zzpVar.J));
        zzag zzagVar = zzag.AD_STORAGE;
        String strJ = zzahVarC.i(zzagVar) ? this.f24846i.j(zzpVar.f24879o) : BuildConfig.FLAVOR;
        if (c0VarP == null) {
            c0VarP = new c0(this.f24849l, zzpVar.f24879o);
            if (zzahVarC.i(zzag.ANALYTICS_STORAGE)) {
                c0VarP.i(g0(zzahVarC));
            }
            if (zzahVarC.i(zzagVar)) {
                c0VarP.G(strJ);
            }
        } else if (zzahVarC.i(zzagVar) && strJ != null && !strJ.equals(c0VarP.a())) {
            c0VarP.G(strJ);
            zzne.b();
            zzaf zzafVarR = R();
            zzek zzekVar = zzel.f24588p0;
            if (!zzafVarR.y(null, zzekVar) || !R().y(null, zzel.f24598u0) || !"00000000-0000-0000-0000-000000000000".equals(this.f24846i.i(zzpVar.f24879o, zzahVarC).first)) {
                c0VarP.i(g0(zzahVarC));
            }
            zzne.b();
            if (R().y(null, zzekVar) && !"00000000-0000-0000-0000-000000000000".equals(this.f24846i.i(zzpVar.f24879o, zzahVarC).first)) {
                e eVar2 = this.f24840c;
                O(eVar2);
                if (eVar2.W(zzpVar.f24879o, "_id") != null) {
                    e eVar3 = this.f24840c;
                    O(eVar3);
                    if (eVar3.W(zzpVar.f24879o, "_lair") == null) {
                        b4 b4Var = new b4(zzpVar.f24879o, "auto", "_lair", x().a(), 1L);
                        e eVar4 = this.f24840c;
                        O(eVar4);
                        eVar4.s(b4Var);
                    }
                }
            }
        } else if (TextUtils.isEmpty(c0VarP.f0()) && zzahVarC.i(zzag.ANALYTICS_STORAGE)) {
            c0VarP.i(g0(zzahVarC));
        }
        c0VarP.x(zzpVar.f24880p);
        c0VarP.f(zzpVar.E);
        if (!TextUtils.isEmpty(zzpVar.f24889y)) {
            c0VarP.w(zzpVar.f24889y);
        }
        long j10 = zzpVar.f24883s;
        if (j10 != 0) {
            c0VarP.y(j10);
        }
        if (!TextUtils.isEmpty(zzpVar.f24881q)) {
            c0VarP.k(zzpVar.f24881q);
        }
        c0VarP.l(zzpVar.f24888x);
        String str = zzpVar.f24882r;
        if (str != null) {
            c0VarP.j(str);
        }
        c0VarP.t(zzpVar.f24884t);
        c0VarP.E(zzpVar.f24886v);
        if (!TextUtils.isEmpty(zzpVar.f24885u)) {
            c0VarP.z(zzpVar.f24885u);
        }
        if (!R().y(null, zzel.f24576j0)) {
            c0VarP.h(zzpVar.f24890z);
        }
        c0VarP.g(zzpVar.C);
        c0VarP.F(zzpVar.F);
        c0VarP.u(zzpVar.G);
        zzpp.b();
        if (R().y(null, zzel.J0)) {
            c0VarP.I(zzpVar.L);
        }
        zznz.b();
        if (R().y(null, zzel.B0)) {
            c0VarP.H(zzpVar.H);
        } else {
            zznz.b();
            if (R().y(null, zzel.A0)) {
                c0VarP.H(null);
            }
        }
        if (c0VarP.L()) {
            e eVar5 = this.f24840c;
            O(eVar5);
            eVar5.k(c0VarP);
        }
        return c0VarP;
    }

    public final l4 Q() {
        l4 l4Var = this.f24843f;
        O(l4Var);
        return l4Var;
    }

    public final zzaf R() {
        return ((zzgi) Preconditions.k(this.f24849l)).v();
    }

    final zzah S(String str) {
        String string;
        zzah zzahVar = zzah.f24435b;
        B().c();
        b();
        zzah zzahVar2 = (zzah) this.A.get(str);
        if (zzahVar2 != null) {
            return zzahVar2;
        }
        e eVar = this.f24840c;
        O(eVar);
        Preconditions.k(str);
        eVar.c();
        eVar.d();
        Cursor cursorRawQuery = null;
        try {
            try {
                cursorRawQuery = eVar.N().rawQuery("select consent_state from consent_settings where app_id=? limit 1;", new String[]{str});
                if (cursorRawQuery.moveToFirst()) {
                    string = cursorRawQuery.getString(0);
                    cursorRawQuery.close();
                } else {
                    cursorRawQuery.close();
                    string = "G1";
                }
                zzah zzahVarB = zzah.b(string);
                v(str, zzahVarB);
                return zzahVarB;
            } catch (SQLiteException e10) {
                eVar.f24394a.U().m().c("Database error", "select consent_state from consent_settings where app_id=? limit 1;", e10);
                throw e10;
            }
        } catch (Throwable th) {
            if (cursorRawQuery != null) {
                cursorRawQuery.close();
            }
            throw th;
        }
    }

    public final e T() {
        e eVar = this.f24840c;
        O(eVar);
        return eVar;
    }

    @Override // com.google.android.gms.measurement.internal.a1
    public final zzey U() {
        return ((zzgi) Preconditions.k(this.f24849l)).U();
    }

    public final zzet V() {
        return this.f24849l.A();
    }

    public final zzfe W() {
        zzfe zzfeVar = this.f24839b;
        O(zzfeVar);
        return zzfeVar;
    }

    public final w X() {
        w wVar = this.f24841d;
        if (wVar != null) {
            return wVar;
        }
        throw new IllegalStateException("Network broadcast receiver not created");
    }

    public final zzfz Y() {
        zzfz zzfzVar = this.f24838a;
        O(zzfzVar);
        return zzfzVar;
    }

    @VisibleForTesting
    final void a() {
        B().c();
        b();
        if (this.f24851n) {
            return;
        }
        this.f24851n = true;
        if (A()) {
            FileChannel fileChannel = this.f24860w;
            B().c();
            int i10 = 0;
            if (fileChannel == null || !fileChannel.isOpen()) {
                U().m().a("Bad channel to read from");
            } else {
                ByteBuffer byteBufferAllocate = ByteBuffer.allocate(4);
                try {
                    fileChannel.position(0L);
                    int i11 = fileChannel.read(byteBufferAllocate);
                    if (i11 == 4) {
                        byteBufferAllocate.flip();
                        i10 = byteBufferAllocate.getInt();
                    } else if (i11 != -1) {
                        U().r().b("Unexpected data length. Bytes read", Integer.valueOf(i11));
                    }
                } catch (IOException e10) {
                    U().m().b("Failed to read from channel", e10);
                }
            }
            int iK = this.f24849l.y().k();
            B().c();
            if (i10 > iK) {
                U().m().c("Panic: can't downgrade version. Previous, current version", Integer.valueOf(i10), Integer.valueOf(iK));
                return;
            }
            if (i10 < iK) {
                FileChannel fileChannel2 = this.f24860w;
                B().c();
                if (fileChannel2 == null || !fileChannel2.isOpen()) {
                    U().m().a("Bad channel to read from");
                } else {
                    ByteBuffer byteBufferAllocate2 = ByteBuffer.allocate(4);
                    byteBufferAllocate2.putInt(iK);
                    byteBufferAllocate2.flip();
                    try {
                        fileChannel2.truncate(0L);
                        fileChannel2.write(byteBufferAllocate2);
                        fileChannel2.force(true);
                        if (fileChannel2.size() != 4) {
                            U().m().b("Error writing to channel. Bytes written", Long.valueOf(fileChannel2.size()));
                        }
                        U().q().c("Storage version upgraded. Previous, current version", Integer.valueOf(i10), Integer.valueOf(iK));
                        return;
                    } catch (IOException e11) {
                        U().m().b("Failed to write to channel", e11);
                    }
                }
                U().m().c("Storage version upgrade failed. Previous, current version", Integer.valueOf(i10), Integer.valueOf(iK));
            }
        }
    }

    final zzgi a0() {
        return this.f24849l;
    }

    final void b() {
        if (!this.f24850m) {
            throw new IllegalStateException("UploadController is not initialized");
        }
    }

    public final z1 b0() {
        z1 z1Var = this.f24845h;
        O(z1Var);
        return z1Var;
    }

    final void c(c0 c0Var) {
        o.a aVar;
        o.a aVar2;
        B().c();
        if (TextUtils.isEmpty(c0Var.j0()) && TextUtils.isEmpty(c0Var.c0())) {
            h((String) Preconditions.k(c0Var.e0()), ApiResponse.STATUS_LINK_SUCCESS, null, null, null);
            return;
        }
        zzkx zzkxVar = this.f24847j;
        Uri.Builder builder = new Uri.Builder();
        String strJ0 = c0Var.j0();
        if (TextUtils.isEmpty(strJ0)) {
            strJ0 = c0Var.c0();
        }
        o.a aVar3 = null;
        Uri.Builder builderAppendQueryParameter = builder.scheme((String) zzel.f24567f.a(null)).encodedAuthority((String) zzel.f24569g.a(null)).path("config/app/".concat(String.valueOf(strJ0))).appendQueryParameter("platform", "android");
        zzkxVar.f24394a.v().l();
        builderAppendQueryParameter.appendQueryParameter("gmp_version", String.valueOf(61000L)).appendQueryParameter("runtime_version", AppEventsConstants.EVENT_PARAM_VALUE_NO);
        zzpg.b();
        if (!zzkxVar.f24394a.v().y(c0Var.e0(), zzel.C0)) {
            builder.appendQueryParameter("app_instance_id", c0Var.f0());
        }
        String string = builder.build().toString();
        try {
            String str = (String) Preconditions.k(c0Var.e0());
            URL url = new URL(string);
            U().q().b("Fetching remote configuration", str);
            zzfz zzfzVar = this.f24838a;
            O(zzfzVar);
            com.google.android.gms.internal.measurement.zzfe zzfeVarO = zzfzVar.o(str);
            zzfz zzfzVar2 = this.f24838a;
            O(zzfzVar2);
            String strQ = zzfzVar2.q(str);
            if (zzfeVarO == null) {
                aVar = aVar3;
            } else {
                if (TextUtils.isEmpty(strQ)) {
                    aVar2 = null;
                } else {
                    aVar2 = new o.a();
                    aVar2.put("If-Modified-Since", strQ);
                }
                zzpg.b();
                if (R().y(null, zzel.O0)) {
                    zzfz zzfzVar3 = this.f24838a;
                    O(zzfzVar3);
                    String strP = zzfzVar3.p(str);
                    if (!TextUtils.isEmpty(strP)) {
                        if (aVar2 == null) {
                            aVar2 = new o.a();
                        }
                        aVar3 = aVar2;
                        aVar3.put("If-None-Match", strP);
                        aVar = aVar3;
                    }
                }
                aVar = aVar2;
            }
            this.f24856s = true;
            zzfe zzfeVar = this.f24839b;
            O(zzfeVar);
            v3 v3Var = new v3(this);
            zzfeVar.c();
            zzfeVar.d();
            Preconditions.k(url);
            Preconditions.k(v3Var);
            zzfeVar.f24394a.B().u(new u(zzfeVar, str, url, null, aVar, v3Var));
        } catch (MalformedURLException unused) {
            U().m().c("Failed to parse config URL. Not fetching. appId", zzey.v(c0Var.e0()), string);
        }
    }

    public final zzkd c0() {
        return this.f24846i;
    }

    final void d(zzav zzavVar, zzp zzpVar) {
        zzav zzavVar2;
        List<zzab> listA0;
        List<zzab> listA02;
        List<zzab> listA03;
        String str;
        Preconditions.k(zzpVar);
        Preconditions.g(zzpVar.f24879o);
        B().c();
        b();
        String str2 = zzpVar.f24879o;
        zzav zzavVarA = zzavVar;
        long j10 = zzavVarA.f24457r;
        zzpm.b();
        zziu zziuVar = null;
        if (R().y(null, zzel.f24600v0)) {
            zzez zzezVarB = zzez.b(zzavVar);
            B().c();
            if (this.C != null && (str = this.D) != null && str.equals(str2)) {
                zziuVar = this.C;
            }
            zzlp.u(zziuVar, zzezVarB.f24649d, false);
            zzavVarA = zzezVarB.a();
        }
        O(this.f24844g);
        if (zzlk.h(zzavVarA, zzpVar)) {
            if (!zzpVar.f24886v) {
                P(zzpVar);
                return;
            }
            List list = zzpVar.H;
            if (list == null) {
                zzavVar2 = zzavVarA;
            } else if (!list.contains(zzavVarA.f24454o)) {
                U().l().d("Dropping non-safelisted event. appId, event name, origin", str2, zzavVarA.f24454o, zzavVarA.f24456q);
                return;
            } else {
                Bundle bundleX3 = zzavVarA.f24455p.X3();
                bundleX3.putLong("ga_safelisted", 1L);
                zzavVar2 = new zzav(zzavVarA.f24454o, new zzat(bundleX3), zzavVarA.f24456q, zzavVarA.f24457r);
            }
            e eVar = this.f24840c;
            O(eVar);
            eVar.d0();
            try {
                e eVar2 = this.f24840c;
                O(eVar2);
                Preconditions.g(str2);
                eVar2.c();
                eVar2.d();
                if (j10 < 0) {
                    eVar2.f24394a.U().r().c("Invalid time querying timed out conditional properties", zzey.v(str2), Long.valueOf(j10));
                    listA0 = Collections.emptyList();
                } else {
                    listA0 = eVar2.a0("active=0 and app_id=? and abs(? - creation_timestamp) > trigger_timeout", new String[]{str2, String.valueOf(j10)});
                }
                for (zzab zzabVar : listA0) {
                    if (zzabVar != null) {
                        U().q().d("User property timed out", zzabVar.f24415o, this.f24849l.A().f(zzabVar.f24417q.f24866p), zzabVar.f24417q.V3());
                        zzav zzavVar3 = zzabVar.f24421u;
                        if (zzavVar3 != null) {
                            z(new zzav(zzavVar3, j10), zzpVar);
                        }
                        e eVar3 = this.f24840c;
                        O(eVar3);
                        eVar3.H(str2, zzabVar.f24417q.f24866p);
                    }
                }
                e eVar4 = this.f24840c;
                O(eVar4);
                Preconditions.g(str2);
                eVar4.c();
                eVar4.d();
                if (j10 < 0) {
                    eVar4.f24394a.U().r().c("Invalid time querying expired conditional properties", zzey.v(str2), Long.valueOf(j10));
                    listA02 = Collections.emptyList();
                } else {
                    listA02 = eVar4.a0("active<>0 and app_id=? and abs(? - triggered_timestamp) > time_to_live", new String[]{str2, String.valueOf(j10)});
                }
                ArrayList arrayList = new ArrayList(listA02.size());
                for (zzab zzabVar2 : listA02) {
                    if (zzabVar2 != null) {
                        U().q().d("User property expired", zzabVar2.f24415o, this.f24849l.A().f(zzabVar2.f24417q.f24866p), zzabVar2.f24417q.V3());
                        e eVar5 = this.f24840c;
                        O(eVar5);
                        eVar5.h(str2, zzabVar2.f24417q.f24866p);
                        zzav zzavVar4 = zzabVar2.f24425y;
                        if (zzavVar4 != null) {
                            arrayList.add(zzavVar4);
                        }
                        e eVar6 = this.f24840c;
                        O(eVar6);
                        eVar6.H(str2, zzabVar2.f24417q.f24866p);
                    }
                }
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    z(new zzav((zzav) it.next(), j10), zzpVar);
                }
                e eVar7 = this.f24840c;
                O(eVar7);
                String str3 = zzavVar2.f24454o;
                Preconditions.g(str2);
                Preconditions.g(str3);
                eVar7.c();
                eVar7.d();
                if (j10 < 0) {
                    eVar7.f24394a.U().r().d("Invalid time querying triggered conditional properties", zzey.v(str2), eVar7.f24394a.A().d(str3), Long.valueOf(j10));
                    listA03 = Collections.emptyList();
                } else {
                    listA03 = eVar7.a0("active=0 and app_id=? and trigger_event_name=? and abs(? - creation_timestamp) <= trigger_timeout", new String[]{str2, str3, String.valueOf(j10)});
                }
                ArrayList arrayList2 = new ArrayList(listA03.size());
                for (zzab zzabVar3 : listA03) {
                    if (zzabVar3 != null) {
                        zzll zzllVar = zzabVar3.f24417q;
                        b4 b4Var = new b4((String) Preconditions.k(zzabVar3.f24415o), zzabVar3.f24416p, zzllVar.f24866p, j10, Preconditions.k(zzllVar.V3()));
                        e eVar8 = this.f24840c;
                        O(eVar8);
                        if (eVar8.s(b4Var)) {
                            U().q().d("User property triggered", zzabVar3.f24415o, this.f24849l.A().f(b4Var.f23998c), b4Var.f24000e);
                        } else {
                            U().m().d("Too many active user properties, ignoring", zzey.v(zzabVar3.f24415o), this.f24849l.A().f(b4Var.f23998c), b4Var.f24000e);
                        }
                        zzav zzavVar5 = zzabVar3.f24423w;
                        if (zzavVar5 != null) {
                            arrayList2.add(zzavVar5);
                        }
                        zzabVar3.f24417q = new zzll(b4Var);
                        zzabVar3.f24419s = true;
                        e eVar9 = this.f24840c;
                        O(eVar9);
                        eVar9.r(zzabVar3);
                    }
                }
                z(zzavVar2, zzpVar);
                Iterator it2 = arrayList2.iterator();
                while (it2.hasNext()) {
                    z(new zzav((zzav) it2.next(), j10), zzpVar);
                }
                e eVar10 = this.f24840c;
                O(eVar10);
                eVar10.j();
            } finally {
                e eVar11 = this.f24840c;
                O(eVar11);
                eVar11.e0();
            }
        }
    }

    final void e(zzav zzavVar, String str) {
        e eVar = this.f24840c;
        O(eVar);
        c0 c0VarP = eVar.P(str);
        if (c0VarP == null || TextUtils.isEmpty(c0VarP.h0())) {
            U().l().b("No app data available; dropping event", str);
            return;
        }
        Boolean boolG = G(c0VarP);
        if (boolG == null) {
            if (!"_ui".equals(zzavVar.f24454o)) {
                U().r().b("Could not find package. appId", zzey.v(str));
            }
        } else if (!boolG.booleanValue()) {
            U().m().b("App version does not match; dropping event. appId", zzey.v(str));
            return;
        }
        f(zzavVar, new zzp(str, c0VarP.j0(), c0VarP.h0(), c0VarP.M(), c0VarP.g0(), c0VarP.X(), c0VarP.U(), (String) null, c0VarP.K(), false, c0VarP.i0(), c0VarP.A(), 0L, 0, c0VarP.J(), false, c0VarP.c0(), c0VarP.b0(), c0VarP.V(), c0VarP.c(), (String) null, S(str).h(), BuildConfig.FLAVOR, (String) null));
    }

    public final zzlk e0() {
        zzlk zzlkVar = this.f24844g;
        O(zzlkVar);
        return zzlkVar;
    }

    final void f(zzav zzavVar, zzp zzpVar) {
        Preconditions.g(zzpVar.f24879o);
        zzez zzezVarB = zzez.b(zzavVar);
        zzlp zzlpVarF0 = f0();
        Bundle bundle = zzezVarB.f24649d;
        e eVar = this.f24840c;
        O(eVar);
        zzlpVarF0.v(bundle, eVar.O(zzpVar.f24879o));
        f0().w(zzezVarB, R().i(zzpVar.f24879o));
        zzav zzavVarA = zzezVarB.a();
        if ("_cmp".equals(zzavVarA.f24454o) && "referrer API v2".equals(zzavVarA.f24455p.b4("_cis"))) {
            String strB4 = zzavVarA.f24455p.b4("gclid");
            if (!TextUtils.isEmpty(strB4)) {
                w(new zzll("_lgclid", zzavVarA.f24457r, strB4, "auto"), zzpVar);
            }
        }
        d(zzavVarA, zzpVar);
    }

    public final zzlp f0() {
        return ((zzgi) Preconditions.k(this.f24849l)).L();
    }

    final void g() {
        this.f24855r++;
    }

    final String g0(zzah zzahVar) {
        if (!zzahVar.i(zzag.ANALYTICS_STORAGE)) {
            return null;
        }
        byte[] bArr = new byte[16];
        f0().p().nextBytes(bArr);
        return String.format(Locale.US, "%032x", new BigInteger(1, bArr));
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0102  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0121 A[Catch: all -> 0x0197, TRY_ENTER, TryCatch #1 {all -> 0x0197, blocks: (B:6:0x002c, B:16:0x004a, B:71:0x0189, B:21:0x0064, B:26:0x00b6, B:25:0x00a7, B:29:0x00be, B:32:0x00ca, B:34:0x00d0, B:36:0x00d8, B:39:0x00e9, B:42:0x00f5, B:44:0x00fb, B:49:0x0108, B:61:0x013d, B:63:0x0152, B:65:0x0171, B:67:0x017c, B:69:0x0182, B:70:0x0186, B:64:0x0160, B:55:0x0121, B:57:0x012c), top: B:81:0x002c, outer: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x012c A[Catch: all -> 0x0197, TRY_LEAVE, TryCatch #1 {all -> 0x0197, blocks: (B:6:0x002c, B:16:0x004a, B:71:0x0189, B:21:0x0064, B:26:0x00b6, B:25:0x00a7, B:29:0x00be, B:32:0x00ca, B:34:0x00d0, B:36:0x00d8, B:39:0x00e9, B:42:0x00f5, B:44:0x00fb, B:49:0x0108, B:61:0x013d, B:63:0x0152, B:65:0x0171, B:67:0x017c, B:69:0x0182, B:70:0x0186, B:64:0x0160, B:55:0x0121, B:57:0x012c), top: B:81:0x002c, outer: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0152 A[Catch: all -> 0x0197, TryCatch #1 {all -> 0x0197, blocks: (B:6:0x002c, B:16:0x004a, B:71:0x0189, B:21:0x0064, B:26:0x00b6, B:25:0x00a7, B:29:0x00be, B:32:0x00ca, B:34:0x00d0, B:36:0x00d8, B:39:0x00e9, B:42:0x00f5, B:44:0x00fb, B:49:0x0108, B:61:0x013d, B:63:0x0152, B:65:0x0171, B:67:0x017c, B:69:0x0182, B:70:0x0186, B:64:0x0160, B:55:0x0121, B:57:0x012c), top: B:81:0x002c, outer: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0160 A[Catch: all -> 0x0197, TryCatch #1 {all -> 0x0197, blocks: (B:6:0x002c, B:16:0x004a, B:71:0x0189, B:21:0x0064, B:26:0x00b6, B:25:0x00a7, B:29:0x00be, B:32:0x00ca, B:34:0x00d0, B:36:0x00d8, B:39:0x00e9, B:42:0x00f5, B:44:0x00fb, B:49:0x0108, B:61:0x013d, B:63:0x0152, B:65:0x0171, B:67:0x017c, B:69:0x0182, B:70:0x0186, B:64:0x0160, B:55:0x0121, B:57:0x012c), top: B:81:0x002c, outer: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x017c A[Catch: all -> 0x0197, TryCatch #1 {all -> 0x0197, blocks: (B:6:0x002c, B:16:0x004a, B:71:0x0189, B:21:0x0064, B:26:0x00b6, B:25:0x00a7, B:29:0x00be, B:32:0x00ca, B:34:0x00d0, B:36:0x00d8, B:39:0x00e9, B:42:0x00f5, B:44:0x00fb, B:49:0x0108, B:61:0x013d, B:63:0x0152, B:65:0x0171, B:67:0x017c, B:69:0x0182, B:70:0x0186, B:64:0x0160, B:55:0x0121, B:57:0x012c), top: B:81:0x002c, outer: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0186 A[Catch: all -> 0x0197, TryCatch #1 {all -> 0x0197, blocks: (B:6:0x002c, B:16:0x004a, B:71:0x0189, B:21:0x0064, B:26:0x00b6, B:25:0x00a7, B:29:0x00be, B:32:0x00ca, B:34:0x00d0, B:36:0x00d8, B:39:0x00e9, B:42:0x00f5, B:44:0x00fb, B:49:0x0108, B:61:0x013d, B:63:0x0152, B:65:0x0171, B:67:0x017c, B:69:0x0182, B:70:0x0186, B:64:0x0160, B:55:0x0121, B:57:0x012c), top: B:81:0x002c, outer: #0 }] */
    @com.google.android.gms.common.util.VisibleForTesting
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    final void h(java.lang.String r9, int r10, java.lang.Throwable r11, byte[] r12, java.util.Map r13) {
        /*
            Method dump skipped, instruction units count: 426
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzli.h(java.lang.String, int, java.lang.Throwable, byte[], java.util.Map):void");
    }

    final String h0(zzp zzpVar) {
        try {
            return (String) B().n(new w3(this, zzpVar)).get(30000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException | ExecutionException | TimeoutException e10) {
            U().m().c("Failed to get app instance id. appId", zzey.v(zzpVar.f24879o), e10);
            return null;
        }
    }

    final void i(boolean z10) {
        J();
    }

    /* JADX WARN: Removed duplicated region for block: B:49:0x014b A[Catch: all -> 0x016b, TryCatch #2 {all -> 0x016b, blocks: (B:4:0x000d, B:5:0x000f, B:45:0x0123, B:50:0x015a, B:49:0x014b, B:11:0x0026, B:33:0x00c4, B:35:0x00d9, B:37:0x00df, B:39:0x00ea, B:38:0x00e3, B:41:0x00ee, B:42:0x00f6, B:44:0x00f8), top: B:60:0x000d, inners: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0026 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @com.google.android.gms.common.util.VisibleForTesting
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    final void j(int r9, java.lang.Throwable r10, byte[] r11, java.lang.String r12) {
        /*
            Method dump skipped, instruction units count: 372
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzli.j(int, java.lang.Throwable, byte[], java.lang.String):void");
    }

    final void j0(Runnable runnable) {
        B().c();
        if (this.f24853p == null) {
            this.f24853p = new ArrayList();
        }
        this.f24853p.add(runnable);
    }

    /* JADX WARN: Removed duplicated region for block: B:69:0x0216  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x021a A[Catch: all -> 0x0566, TryCatch #1 {all -> 0x0566, blocks: (B:23:0x00a4, B:25:0x00b3, B:43:0x0119, B:45:0x012c, B:47:0x0142, B:48:0x0169, B:50:0x01b9, B:53:0x01ce, B:56:0x01e4, B:58:0x01ef, B:63:0x01fe, B:66:0x020c, B:70:0x0217, B:72:0x021a, B:74:0x023a, B:76:0x023f, B:79:0x025e, B:82:0x0272, B:84:0x029b, B:87:0x02a3, B:89:0x02b2, B:118:0x0399, B:120:0x03cb, B:121:0x03ce, B:123:0x03f7, B:164:0x04d4, B:165:0x04d9, B:173:0x0555, B:126:0x040e, B:131:0x0433, B:133:0x043d, B:135:0x0445, B:139:0x0458, B:143:0x046b, B:147:0x0477, B:151:0x0493, B:156:0x04b8, B:158:0x04be, B:159:0x04c3, B:161:0x04c9, B:154:0x04a4, B:141:0x0463, B:129:0x041f, B:90:0x02c3, B:92:0x02ee, B:93:0x02ff, B:95:0x0306, B:97:0x030c, B:99:0x0316, B:101:0x031c, B:103:0x0322, B:105:0x0328, B:106:0x032d, B:111:0x0351, B:114:0x0356, B:115:0x036a, B:116:0x037a, B:117:0x038a, B:166:0x04ee, B:168:0x0520, B:169:0x0523, B:170:0x0538, B:172:0x053c, B:77:0x024e, B:29:0x00c5, B:31:0x00c9, B:35:0x00da, B:37:0x00f3, B:39:0x00fd, B:42:0x0109), top: B:182:0x00a4, inners: #0, #2, #3, #4 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    final void k(com.google.android.gms.measurement.internal.zzp r24) {
        /*
            Method dump skipped, instruction units count: 1393
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzli.k(com.google.android.gms.measurement.internal.zzp):void");
    }

    final void l() {
        this.f24854q++;
    }

    final void m(zzab zzabVar) {
        zzp zzpVarF = F((String) Preconditions.k(zzabVar.f24415o));
        if (zzpVarF != null) {
            n(zzabVar, zzpVarF);
        }
    }

    final void n(zzab zzabVar, zzp zzpVar) {
        Preconditions.k(zzabVar);
        Preconditions.g(zzabVar.f24415o);
        Preconditions.k(zzabVar.f24417q);
        Preconditions.g(zzabVar.f24417q.f24866p);
        B().c();
        b();
        if (N(zzpVar)) {
            if (!zzpVar.f24886v) {
                P(zzpVar);
                return;
            }
            e eVar = this.f24840c;
            O(eVar);
            eVar.d0();
            try {
                P(zzpVar);
                String str = (String) Preconditions.k(zzabVar.f24415o);
                e eVar2 = this.f24840c;
                O(eVar2);
                zzab zzabVarQ = eVar2.Q(str, zzabVar.f24417q.f24866p);
                if (zzabVarQ != null) {
                    U().l().c("Removing conditional user property", zzabVar.f24415o, this.f24849l.A().f(zzabVar.f24417q.f24866p));
                    e eVar3 = this.f24840c;
                    O(eVar3);
                    eVar3.H(str, zzabVar.f24417q.f24866p);
                    if (zzabVarQ.f24419s) {
                        e eVar4 = this.f24840c;
                        O(eVar4);
                        eVar4.h(str, zzabVar.f24417q.f24866p);
                    }
                    zzav zzavVar = zzabVar.f24425y;
                    if (zzavVar != null) {
                        zzat zzatVar = zzavVar.f24455p;
                        z((zzav) Preconditions.k(f0().w0(str, ((zzav) Preconditions.k(zzabVar.f24425y)).f24454o, zzatVar != null ? zzatVar.X3() : null, zzabVarQ.f24416p, zzabVar.f24425y.f24457r, true, true)), zzpVar);
                    }
                } else {
                    U().r().c("Conditional user property doesn't exist", zzey.v(zzabVar.f24415o), this.f24849l.A().f(zzabVar.f24417q.f24866p));
                }
                e eVar5 = this.f24840c;
                O(eVar5);
                eVar5.j();
            } finally {
                e eVar6 = this.f24840c;
                O(eVar6);
                eVar6.e0();
            }
        }
    }

    final void o(zzll zzllVar, zzp zzpVar) {
        B().c();
        b();
        if (N(zzpVar)) {
            if (!zzpVar.f24886v) {
                P(zzpVar);
                return;
            }
            if ("_npa".equals(zzllVar.f24866p) && zzpVar.F != null) {
                U().l().a("Falling back to manifest metadata value for ad personalization");
                w(new zzll("_npa", x().a(), Long.valueOf(true != zzpVar.F.booleanValue() ? 0L : 1L), "auto"), zzpVar);
                return;
            }
            U().l().b("Removing user property", this.f24849l.A().f(zzllVar.f24866p));
            e eVar = this.f24840c;
            O(eVar);
            eVar.d0();
            try {
                P(zzpVar);
                zzne.b();
                if (this.f24849l.v().y(null, zzel.f24588p0) && this.f24849l.v().y(null, zzel.f24592r0) && "_id".equals(zzllVar.f24866p)) {
                    e eVar2 = this.f24840c;
                    O(eVar2);
                    eVar2.h((String) Preconditions.k(zzpVar.f24879o), "_lair");
                }
                e eVar3 = this.f24840c;
                O(eVar3);
                eVar3.h((String) Preconditions.k(zzpVar.f24879o), zzllVar.f24866p);
                e eVar4 = this.f24840c;
                O(eVar4);
                eVar4.j();
                U().l().b("User property removed", this.f24849l.A().f(zzllVar.f24866p));
            } finally {
                e eVar5 = this.f24840c;
                O(eVar5);
                eVar5.e0();
            }
        }
    }

    @VisibleForTesting
    final void p(zzp zzpVar) {
        if (this.f24861x != null) {
            ArrayList arrayList = new ArrayList();
            this.f24862y = arrayList;
            arrayList.addAll(this.f24861x);
        }
        e eVar = this.f24840c;
        O(eVar);
        String str = (String) Preconditions.k(zzpVar.f24879o);
        Preconditions.g(str);
        eVar.c();
        eVar.d();
        try {
            SQLiteDatabase sQLiteDatabaseN = eVar.N();
            String[] strArr = {str};
            int iDelete = sQLiteDatabaseN.delete("apps", "app_id=?", strArr) + sQLiteDatabaseN.delete("events", "app_id=?", strArr) + sQLiteDatabaseN.delete("user_attributes", "app_id=?", strArr) + sQLiteDatabaseN.delete("conditional_properties", "app_id=?", strArr) + sQLiteDatabaseN.delete("raw_events", "app_id=?", strArr) + sQLiteDatabaseN.delete("raw_events_metadata", "app_id=?", strArr) + sQLiteDatabaseN.delete("queue", "app_id=?", strArr) + sQLiteDatabaseN.delete("audience_filter_values", "app_id=?", strArr) + sQLiteDatabaseN.delete("main_event_params", "app_id=?", strArr) + sQLiteDatabaseN.delete("default_event_params", "app_id=?", strArr);
            if (iDelete > 0) {
                eVar.f24394a.U().q().c("Reset analytics data. app, records", str, Integer.valueOf(iDelete));
            }
        } catch (SQLiteException e10) {
            eVar.f24394a.U().m().c("Error resetting analytics data. appId, error", zzey.v(str), e10);
        }
        if (zzpVar.f24886v) {
            k(zzpVar);
        }
    }

    public final void q(String str, zziu zziuVar) {
        B().c();
        String str2 = this.D;
        if (str2 == null || str2.equals(str) || zziuVar != null) {
            this.D = str;
            this.C = zziuVar;
        }
    }

    protected final void r() {
        B().c();
        e eVar = this.f24840c;
        O(eVar);
        eVar.g0();
        if (this.f24846i.f24819j.a() == 0) {
            this.f24846i.f24819j.b(x().a());
        }
        J();
    }

    final void s(zzab zzabVar) {
        zzp zzpVarF = F((String) Preconditions.k(zzabVar.f24415o));
        if (zzpVarF != null) {
            u(zzabVar, zzpVarF);
        }
    }

    @Override // com.google.android.gms.measurement.internal.a1
    public final zzaa t() {
        throw null;
    }

    final void u(zzab zzabVar, zzp zzpVar) {
        Preconditions.k(zzabVar);
        Preconditions.g(zzabVar.f24415o);
        Preconditions.k(zzabVar.f24416p);
        Preconditions.k(zzabVar.f24417q);
        Preconditions.g(zzabVar.f24417q.f24866p);
        B().c();
        b();
        if (N(zzpVar)) {
            if (!zzpVar.f24886v) {
                P(zzpVar);
                return;
            }
            zzab zzabVar2 = new zzab(zzabVar);
            boolean z10 = false;
            zzabVar2.f24419s = false;
            e eVar = this.f24840c;
            O(eVar);
            eVar.d0();
            try {
                e eVar2 = this.f24840c;
                O(eVar2);
                zzab zzabVarQ = eVar2.Q((String) Preconditions.k(zzabVar2.f24415o), zzabVar2.f24417q.f24866p);
                if (zzabVarQ != null && !zzabVarQ.f24416p.equals(zzabVar2.f24416p)) {
                    U().r().d("Updating a conditional user property with different origin. name, origin, origin (from DB)", this.f24849l.A().f(zzabVar2.f24417q.f24866p), zzabVar2.f24416p, zzabVarQ.f24416p);
                }
                if (zzabVarQ != null && zzabVarQ.f24419s) {
                    zzabVar2.f24416p = zzabVarQ.f24416p;
                    zzabVar2.f24418r = zzabVarQ.f24418r;
                    zzabVar2.f24422v = zzabVarQ.f24422v;
                    zzabVar2.f24420t = zzabVarQ.f24420t;
                    zzabVar2.f24423w = zzabVarQ.f24423w;
                    zzabVar2.f24419s = true;
                    zzll zzllVar = zzabVar2.f24417q;
                    zzabVar2.f24417q = new zzll(zzllVar.f24866p, zzabVarQ.f24417q.f24867q, zzllVar.V3(), zzabVarQ.f24417q.f24870t);
                } else if (TextUtils.isEmpty(zzabVar2.f24420t)) {
                    zzll zzllVar2 = zzabVar2.f24417q;
                    zzabVar2.f24417q = new zzll(zzllVar2.f24866p, zzabVar2.f24418r, zzllVar2.V3(), zzabVar2.f24417q.f24870t);
                    zzabVar2.f24419s = true;
                    z10 = true;
                }
                if (zzabVar2.f24419s) {
                    zzll zzllVar3 = zzabVar2.f24417q;
                    b4 b4Var = new b4((String) Preconditions.k(zzabVar2.f24415o), zzabVar2.f24416p, zzllVar3.f24866p, zzllVar3.f24867q, Preconditions.k(zzllVar3.V3()));
                    e eVar3 = this.f24840c;
                    O(eVar3);
                    if (eVar3.s(b4Var)) {
                        U().l().d("User property updated immediately", zzabVar2.f24415o, this.f24849l.A().f(b4Var.f23998c), b4Var.f24000e);
                    } else {
                        U().m().d("(2)Too many active user properties, ignoring", zzey.v(zzabVar2.f24415o), this.f24849l.A().f(b4Var.f23998c), b4Var.f24000e);
                    }
                    if (z10 && zzabVar2.f24423w != null) {
                        z(new zzav(zzabVar2.f24423w, zzabVar2.f24418r), zzpVar);
                    }
                }
                e eVar4 = this.f24840c;
                O(eVar4);
                if (eVar4.r(zzabVar2)) {
                    U().l().d("Conditional property added", zzabVar2.f24415o, this.f24849l.A().f(zzabVar2.f24417q.f24866p), zzabVar2.f24417q.V3());
                } else {
                    U().m().d("Too many conditional properties, ignoring", zzey.v(zzabVar2.f24415o), this.f24849l.A().f(zzabVar2.f24417q.f24866p), zzabVar2.f24417q.V3());
                }
                e eVar5 = this.f24840c;
                O(eVar5);
                eVar5.j();
            } finally {
                e eVar6 = this.f24840c;
                O(eVar6);
                eVar6.e0();
            }
        }
    }

    final void v(String str, zzah zzahVar) {
        B().c();
        b();
        this.A.put(str, zzahVar);
        e eVar = this.f24840c;
        O(eVar);
        Preconditions.k(str);
        Preconditions.k(zzahVar);
        eVar.c();
        eVar.d();
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("consent_state", zzahVar.h());
        try {
            if (eVar.N().insertWithOnConflict("consent_settings", null, contentValues, 5) == -1) {
                eVar.f24394a.U().m().b("Failed to insert/update consent setting (got -1). appId", zzey.v(str));
            }
        } catch (SQLiteException e10) {
            eVar.f24394a.U().m().c("Error storing consent setting. appId, error", zzey.v(str), e10);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x00de  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    final void w(com.google.android.gms.measurement.internal.zzll r18, com.google.android.gms.measurement.internal.zzp r19) {
        /*
            Method dump skipped, instruction units count: 524
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzli.w(com.google.android.gms.measurement.internal.zzll, com.google.android.gms.measurement.internal.zzp):void");
    }

    @Override // com.google.android.gms.measurement.internal.a1
    public final Clock x() {
        return ((zzgi) Preconditions.k(this.f24849l)).x();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Not initialized variable reg: 12, insn: 0x06b5: MOVE (r10 I:??[OBJECT, ARRAY]) = (r12 I:??[OBJECT, ARRAY]), block:B:281:0x06b4 */
    /* JADX WARN: Removed duplicated region for block: B:135:0x02ad A[Catch: all -> 0x06bc, TRY_ENTER, TryCatch #21 {all -> 0x06bc, blocks: (B:136:0x02b0, B:138:0x02b6, B:140:0x02c2, B:141:0x02c6, B:143:0x02cc, B:145:0x02e0, B:149:0x02e9, B:151:0x02ef, B:157:0x0314, B:154:0x0304, B:156:0x030e, B:158:0x0317, B:160:0x0332, B:164:0x0341, B:166:0x0366, B:168:0x03a0, B:170:0x03a5, B:172:0x03ad, B:173:0x03b0, B:175:0x03c1, B:177:0x03cc, B:178:0x03cf, B:180:0x03db, B:182:0x03e6, B:183:0x03e9, B:185:0x03f4, B:186:0x03f7, B:188:0x0403, B:190:0x040e, B:192:0x0417, B:193:0x041a, B:195:0x0426, B:197:0x0431, B:198:0x0434, B:200:0x0440, B:202:0x044b, B:204:0x045a, B:206:0x0464, B:211:0x048e, B:212:0x0499, B:214:0x04a4, B:216:0x04b0, B:218:0x04bb, B:220:0x04c0, B:221:0x04c3, B:223:0x04cf, B:224:0x04e5, B:225:0x04f5, B:227:0x0506, B:229:0x0518, B:231:0x053a, B:233:0x054b, B:236:0x0593, B:238:0x05a5, B:240:0x05ba, B:244:0x05ca, B:245:0x05ce, B:239:0x05b3, B:247:0x0613, B:234:0x0580, B:235:0x058a, B:122:0x027e, B:135:0x02ad, B:251:0x062b, B:252:0x062e, B:253:0x062f, B:258:0x0670, B:274:0x069a, B:276:0x06a0, B:278:0x06ab, B:262:0x0679, B:283:0x06b8, B:284:0x06bb, B:243:0x05c6), top: B:316:0x00eb, inners: #19 }] */
    /* JADX WARN: Removed duplicated region for block: B:138:0x02b6 A[Catch: all -> 0x06bc, TryCatch #21 {all -> 0x06bc, blocks: (B:136:0x02b0, B:138:0x02b6, B:140:0x02c2, B:141:0x02c6, B:143:0x02cc, B:145:0x02e0, B:149:0x02e9, B:151:0x02ef, B:157:0x0314, B:154:0x0304, B:156:0x030e, B:158:0x0317, B:160:0x0332, B:164:0x0341, B:166:0x0366, B:168:0x03a0, B:170:0x03a5, B:172:0x03ad, B:173:0x03b0, B:175:0x03c1, B:177:0x03cc, B:178:0x03cf, B:180:0x03db, B:182:0x03e6, B:183:0x03e9, B:185:0x03f4, B:186:0x03f7, B:188:0x0403, B:190:0x040e, B:192:0x0417, B:193:0x041a, B:195:0x0426, B:197:0x0431, B:198:0x0434, B:200:0x0440, B:202:0x044b, B:204:0x045a, B:206:0x0464, B:211:0x048e, B:212:0x0499, B:214:0x04a4, B:216:0x04b0, B:218:0x04bb, B:220:0x04c0, B:221:0x04c3, B:223:0x04cf, B:224:0x04e5, B:225:0x04f5, B:227:0x0506, B:229:0x0518, B:231:0x053a, B:233:0x054b, B:236:0x0593, B:238:0x05a5, B:240:0x05ba, B:244:0x05ca, B:245:0x05ce, B:239:0x05b3, B:247:0x0613, B:234:0x0580, B:235:0x058a, B:122:0x027e, B:135:0x02ad, B:251:0x062b, B:252:0x062e, B:253:0x062f, B:258:0x0670, B:274:0x069a, B:276:0x06a0, B:278:0x06ab, B:262:0x0679, B:283:0x06b8, B:284:0x06bb, B:243:0x05c6), top: B:316:0x00eb, inners: #19 }] */
    /* JADX WARN: Removed duplicated region for block: B:213:0x049f  */
    /* JADX WARN: Removed duplicated region for block: B:276:0x06a0 A[Catch: all -> 0x06bc, TryCatch #21 {all -> 0x06bc, blocks: (B:136:0x02b0, B:138:0x02b6, B:140:0x02c2, B:141:0x02c6, B:143:0x02cc, B:145:0x02e0, B:149:0x02e9, B:151:0x02ef, B:157:0x0314, B:154:0x0304, B:156:0x030e, B:158:0x0317, B:160:0x0332, B:164:0x0341, B:166:0x0366, B:168:0x03a0, B:170:0x03a5, B:172:0x03ad, B:173:0x03b0, B:175:0x03c1, B:177:0x03cc, B:178:0x03cf, B:180:0x03db, B:182:0x03e6, B:183:0x03e9, B:185:0x03f4, B:186:0x03f7, B:188:0x0403, B:190:0x040e, B:192:0x0417, B:193:0x041a, B:195:0x0426, B:197:0x0431, B:198:0x0434, B:200:0x0440, B:202:0x044b, B:204:0x045a, B:206:0x0464, B:211:0x048e, B:212:0x0499, B:214:0x04a4, B:216:0x04b0, B:218:0x04bb, B:220:0x04c0, B:221:0x04c3, B:223:0x04cf, B:224:0x04e5, B:225:0x04f5, B:227:0x0506, B:229:0x0518, B:231:0x053a, B:233:0x054b, B:236:0x0593, B:238:0x05a5, B:240:0x05ba, B:244:0x05ca, B:245:0x05ce, B:239:0x05b3, B:247:0x0613, B:234:0x0580, B:235:0x058a, B:122:0x027e, B:135:0x02ad, B:251:0x062b, B:252:0x062e, B:253:0x062f, B:258:0x0670, B:274:0x069a, B:276:0x06a0, B:278:0x06ab, B:262:0x0679, B:283:0x06b8, B:284:0x06bb, B:243:0x05c6), top: B:316:0x00eb, inners: #19 }] */
    /* JADX WARN: Removed duplicated region for block: B:301:0x019d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x015d  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x015f  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0165  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0167  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x01ae A[Catch: SQLiteException -> 0x0285, all -> 0x0626, TRY_ENTER, TryCatch #5 {all -> 0x0626, blocks: (B:70:0x0197, B:72:0x019d, B:77:0x01ae, B:78:0x01b4, B:79:0x01b8, B:80:0x01c3, B:82:0x01d6, B:83:0x01d8, B:85:0x01de, B:86:0x01e8, B:88:0x01ee, B:92:0x01f4, B:94:0x01ff, B:96:0x0205, B:97:0x020c, B:117:0x026e, B:99:0x0221, B:102:0x0239, B:109:0x0245, B:110:0x0254, B:116:0x025b, B:133:0x0294), top: B:297:0x0168 }] */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v10, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r10v11 */
    /* JADX WARN: Type inference failed for: r10v7 */
    /* JADX WARN: Type inference failed for: r10v8, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r10v9 */
    /* JADX WARN: Type inference failed for: r11v22 */
    /* JADX WARN: Type inference failed for: r11v23 */
    /* JADX WARN: Type inference failed for: r11v24 */
    /* JADX WARN: Type inference failed for: r11v3, types: [long] */
    /* JADX WARN: Type inference failed for: r11v4 */
    /* JADX WARN: Type inference failed for: r11v7, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r7v8, types: [int] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    final void y() {
        /*
            Method dump skipped, instruction units count: 1738
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzli.y():void");
    }

    /* JADX WARN: Removed duplicated region for block: B:102:0x0332  */
    /* JADX WARN: Removed duplicated region for block: B:103:0x0335 A[Catch: all -> 0x0aa6, TryCatch #4 {all -> 0x0aa6, blocks: (B:28:0x0124, B:30:0x0136, B:32:0x0142, B:33:0x014e, B:36:0x015c, B:38:0x0166, B:43:0x0172, B:100:0x031f, B:109:0x0355, B:111:0x0399, B:113:0x039e, B:114:0x03b5, B:118:0x03c8, B:120:0x03e1, B:122:0x03e8, B:123:0x03ff, B:128:0x0429, B:132:0x044c, B:133:0x0463, B:136:0x0474, B:139:0x0491, B:140:0x04a5, B:142:0x04af, B:144:0x04bc, B:146:0x04c2, B:147:0x04cb, B:148:0x04d9, B:150:0x04f1, B:160:0x0529, B:161:0x053e, B:163:0x0568, B:166:0x0580, B:169:0x05c3, B:171:0x05ef, B:173:0x062e, B:174:0x0633, B:176:0x063b, B:177:0x0640, B:179:0x0648, B:180:0x064d, B:182:0x065c, B:184:0x0664, B:185:0x0669, B:187:0x0672, B:188:0x0676, B:190:0x0683, B:191:0x0688, B:193:0x06af, B:195:0x06b7, B:196:0x06bc, B:198:0x06c4, B:199:0x06c7, B:201:0x06df, B:204:0x06e7, B:205:0x0700, B:207:0x0706, B:209:0x071a, B:211:0x0726, B:213:0x0733, B:217:0x074d, B:218:0x075d, B:222:0x0766, B:223:0x0769, B:225:0x0787, B:227:0x0799, B:229:0x079d, B:231:0x07a8, B:232:0x07b1, B:234:0x07f4, B:235:0x07f9, B:237:0x0801, B:239:0x080a, B:240:0x080d, B:242:0x081a, B:244:0x083a, B:245:0x0845, B:247:0x0878, B:248:0x087d, B:249:0x088a, B:251:0x0892, B:253:0x089c, B:254:0x08a9, B:256:0x08b3, B:257:0x08c0, B:258:0x08cc, B:260:0x08d2, B:262:0x0902, B:263:0x0948, B:264:0x0952, B:265:0x095e, B:267:0x0964, B:276:0x09b1, B:277:0x09ff, B:279:0x0a0f, B:293:0x0a73, B:282:0x0a27, B:284:0x0a2b, B:270:0x0970, B:272:0x099c, B:288:0x0a44, B:289:0x0a5b, B:292:0x0a5e, B:170:0x05e1, B:157:0x050e, B:103:0x0335, B:104:0x033c, B:106:0x0342, B:108:0x034e, B:49:0x0186, B:52:0x0192, B:54:0x01a9, B:61:0x01ca, B:69:0x020a, B:71:0x0210, B:73:0x021e, B:75:0x022f, B:78:0x0236, B:96:0x02dd, B:98:0x02e8, B:79:0x0264, B:80:0x0281, B:82:0x0288, B:84:0x0299, B:95:0x02c1, B:94:0x02ae, B:64:0x01d8, B:68:0x0200), top: B:309:0x0124, inners: #1, #8, #9 }] */
    /* JADX WARN: Removed duplicated region for block: B:111:0x0399 A[Catch: all -> 0x0aa6, TryCatch #4 {all -> 0x0aa6, blocks: (B:28:0x0124, B:30:0x0136, B:32:0x0142, B:33:0x014e, B:36:0x015c, B:38:0x0166, B:43:0x0172, B:100:0x031f, B:109:0x0355, B:111:0x0399, B:113:0x039e, B:114:0x03b5, B:118:0x03c8, B:120:0x03e1, B:122:0x03e8, B:123:0x03ff, B:128:0x0429, B:132:0x044c, B:133:0x0463, B:136:0x0474, B:139:0x0491, B:140:0x04a5, B:142:0x04af, B:144:0x04bc, B:146:0x04c2, B:147:0x04cb, B:148:0x04d9, B:150:0x04f1, B:160:0x0529, B:161:0x053e, B:163:0x0568, B:166:0x0580, B:169:0x05c3, B:171:0x05ef, B:173:0x062e, B:174:0x0633, B:176:0x063b, B:177:0x0640, B:179:0x0648, B:180:0x064d, B:182:0x065c, B:184:0x0664, B:185:0x0669, B:187:0x0672, B:188:0x0676, B:190:0x0683, B:191:0x0688, B:193:0x06af, B:195:0x06b7, B:196:0x06bc, B:198:0x06c4, B:199:0x06c7, B:201:0x06df, B:204:0x06e7, B:205:0x0700, B:207:0x0706, B:209:0x071a, B:211:0x0726, B:213:0x0733, B:217:0x074d, B:218:0x075d, B:222:0x0766, B:223:0x0769, B:225:0x0787, B:227:0x0799, B:229:0x079d, B:231:0x07a8, B:232:0x07b1, B:234:0x07f4, B:235:0x07f9, B:237:0x0801, B:239:0x080a, B:240:0x080d, B:242:0x081a, B:244:0x083a, B:245:0x0845, B:247:0x0878, B:248:0x087d, B:249:0x088a, B:251:0x0892, B:253:0x089c, B:254:0x08a9, B:256:0x08b3, B:257:0x08c0, B:258:0x08cc, B:260:0x08d2, B:262:0x0902, B:263:0x0948, B:264:0x0952, B:265:0x095e, B:267:0x0964, B:276:0x09b1, B:277:0x09ff, B:279:0x0a0f, B:293:0x0a73, B:282:0x0a27, B:284:0x0a2b, B:270:0x0970, B:272:0x099c, B:288:0x0a44, B:289:0x0a5b, B:292:0x0a5e, B:170:0x05e1, B:157:0x050e, B:103:0x0335, B:104:0x033c, B:106:0x0342, B:108:0x034e, B:49:0x0186, B:52:0x0192, B:54:0x01a9, B:61:0x01ca, B:69:0x020a, B:71:0x0210, B:73:0x021e, B:75:0x022f, B:78:0x0236, B:96:0x02dd, B:98:0x02e8, B:79:0x0264, B:80:0x0281, B:82:0x0288, B:84:0x0299, B:95:0x02c1, B:94:0x02ae, B:64:0x01d8, B:68:0x0200), top: B:309:0x0124, inners: #1, #8, #9 }] */
    /* JADX WARN: Removed duplicated region for block: B:117:0x03c6  */
    /* JADX WARN: Removed duplicated region for block: B:220:0x0763  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0192 A[Catch: all -> 0x0aa6, TRY_ENTER, TryCatch #4 {all -> 0x0aa6, blocks: (B:28:0x0124, B:30:0x0136, B:32:0x0142, B:33:0x014e, B:36:0x015c, B:38:0x0166, B:43:0x0172, B:100:0x031f, B:109:0x0355, B:111:0x0399, B:113:0x039e, B:114:0x03b5, B:118:0x03c8, B:120:0x03e1, B:122:0x03e8, B:123:0x03ff, B:128:0x0429, B:132:0x044c, B:133:0x0463, B:136:0x0474, B:139:0x0491, B:140:0x04a5, B:142:0x04af, B:144:0x04bc, B:146:0x04c2, B:147:0x04cb, B:148:0x04d9, B:150:0x04f1, B:160:0x0529, B:161:0x053e, B:163:0x0568, B:166:0x0580, B:169:0x05c3, B:171:0x05ef, B:173:0x062e, B:174:0x0633, B:176:0x063b, B:177:0x0640, B:179:0x0648, B:180:0x064d, B:182:0x065c, B:184:0x0664, B:185:0x0669, B:187:0x0672, B:188:0x0676, B:190:0x0683, B:191:0x0688, B:193:0x06af, B:195:0x06b7, B:196:0x06bc, B:198:0x06c4, B:199:0x06c7, B:201:0x06df, B:204:0x06e7, B:205:0x0700, B:207:0x0706, B:209:0x071a, B:211:0x0726, B:213:0x0733, B:217:0x074d, B:218:0x075d, B:222:0x0766, B:223:0x0769, B:225:0x0787, B:227:0x0799, B:229:0x079d, B:231:0x07a8, B:232:0x07b1, B:234:0x07f4, B:235:0x07f9, B:237:0x0801, B:239:0x080a, B:240:0x080d, B:242:0x081a, B:244:0x083a, B:245:0x0845, B:247:0x0878, B:248:0x087d, B:249:0x088a, B:251:0x0892, B:253:0x089c, B:254:0x08a9, B:256:0x08b3, B:257:0x08c0, B:258:0x08cc, B:260:0x08d2, B:262:0x0902, B:263:0x0948, B:264:0x0952, B:265:0x095e, B:267:0x0964, B:276:0x09b1, B:277:0x09ff, B:279:0x0a0f, B:293:0x0a73, B:282:0x0a27, B:284:0x0a2b, B:270:0x0970, B:272:0x099c, B:288:0x0a44, B:289:0x0a5b, B:292:0x0a5e, B:170:0x05e1, B:157:0x050e, B:103:0x0335, B:104:0x033c, B:106:0x0342, B:108:0x034e, B:49:0x0186, B:52:0x0192, B:54:0x01a9, B:61:0x01ca, B:69:0x020a, B:71:0x0210, B:73:0x021e, B:75:0x022f, B:78:0x0236, B:96:0x02dd, B:98:0x02e8, B:79:0x0264, B:80:0x0281, B:82:0x0288, B:84:0x0299, B:95:0x02c1, B:94:0x02ae, B:64:0x01d8, B:68:0x0200), top: B:309:0x0124, inners: #1, #8, #9 }] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x01fe  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0210 A[Catch: all -> 0x0aa6, TryCatch #4 {all -> 0x0aa6, blocks: (B:28:0x0124, B:30:0x0136, B:32:0x0142, B:33:0x014e, B:36:0x015c, B:38:0x0166, B:43:0x0172, B:100:0x031f, B:109:0x0355, B:111:0x0399, B:113:0x039e, B:114:0x03b5, B:118:0x03c8, B:120:0x03e1, B:122:0x03e8, B:123:0x03ff, B:128:0x0429, B:132:0x044c, B:133:0x0463, B:136:0x0474, B:139:0x0491, B:140:0x04a5, B:142:0x04af, B:144:0x04bc, B:146:0x04c2, B:147:0x04cb, B:148:0x04d9, B:150:0x04f1, B:160:0x0529, B:161:0x053e, B:163:0x0568, B:166:0x0580, B:169:0x05c3, B:171:0x05ef, B:173:0x062e, B:174:0x0633, B:176:0x063b, B:177:0x0640, B:179:0x0648, B:180:0x064d, B:182:0x065c, B:184:0x0664, B:185:0x0669, B:187:0x0672, B:188:0x0676, B:190:0x0683, B:191:0x0688, B:193:0x06af, B:195:0x06b7, B:196:0x06bc, B:198:0x06c4, B:199:0x06c7, B:201:0x06df, B:204:0x06e7, B:205:0x0700, B:207:0x0706, B:209:0x071a, B:211:0x0726, B:213:0x0733, B:217:0x074d, B:218:0x075d, B:222:0x0766, B:223:0x0769, B:225:0x0787, B:227:0x0799, B:229:0x079d, B:231:0x07a8, B:232:0x07b1, B:234:0x07f4, B:235:0x07f9, B:237:0x0801, B:239:0x080a, B:240:0x080d, B:242:0x081a, B:244:0x083a, B:245:0x0845, B:247:0x0878, B:248:0x087d, B:249:0x088a, B:251:0x0892, B:253:0x089c, B:254:0x08a9, B:256:0x08b3, B:257:0x08c0, B:258:0x08cc, B:260:0x08d2, B:262:0x0902, B:263:0x0948, B:264:0x0952, B:265:0x095e, B:267:0x0964, B:276:0x09b1, B:277:0x09ff, B:279:0x0a0f, B:293:0x0a73, B:282:0x0a27, B:284:0x0a2b, B:270:0x0970, B:272:0x099c, B:288:0x0a44, B:289:0x0a5b, B:292:0x0a5e, B:170:0x05e1, B:157:0x050e, B:103:0x0335, B:104:0x033c, B:106:0x0342, B:108:0x034e, B:49:0x0186, B:52:0x0192, B:54:0x01a9, B:61:0x01ca, B:69:0x020a, B:71:0x0210, B:73:0x021e, B:75:0x022f, B:78:0x0236, B:96:0x02dd, B:98:0x02e8, B:79:0x0264, B:80:0x0281, B:82:0x0288, B:84:0x0299, B:95:0x02c1, B:94:0x02ae, B:64:0x01d8, B:68:0x0200), top: B:309:0x0124, inners: #1, #8, #9 }] */
    /* JADX WARN: Removed duplicated region for block: B:98:0x02e8 A[Catch: all -> 0x0aa6, TryCatch #4 {all -> 0x0aa6, blocks: (B:28:0x0124, B:30:0x0136, B:32:0x0142, B:33:0x014e, B:36:0x015c, B:38:0x0166, B:43:0x0172, B:100:0x031f, B:109:0x0355, B:111:0x0399, B:113:0x039e, B:114:0x03b5, B:118:0x03c8, B:120:0x03e1, B:122:0x03e8, B:123:0x03ff, B:128:0x0429, B:132:0x044c, B:133:0x0463, B:136:0x0474, B:139:0x0491, B:140:0x04a5, B:142:0x04af, B:144:0x04bc, B:146:0x04c2, B:147:0x04cb, B:148:0x04d9, B:150:0x04f1, B:160:0x0529, B:161:0x053e, B:163:0x0568, B:166:0x0580, B:169:0x05c3, B:171:0x05ef, B:173:0x062e, B:174:0x0633, B:176:0x063b, B:177:0x0640, B:179:0x0648, B:180:0x064d, B:182:0x065c, B:184:0x0664, B:185:0x0669, B:187:0x0672, B:188:0x0676, B:190:0x0683, B:191:0x0688, B:193:0x06af, B:195:0x06b7, B:196:0x06bc, B:198:0x06c4, B:199:0x06c7, B:201:0x06df, B:204:0x06e7, B:205:0x0700, B:207:0x0706, B:209:0x071a, B:211:0x0726, B:213:0x0733, B:217:0x074d, B:218:0x075d, B:222:0x0766, B:223:0x0769, B:225:0x0787, B:227:0x0799, B:229:0x079d, B:231:0x07a8, B:232:0x07b1, B:234:0x07f4, B:235:0x07f9, B:237:0x0801, B:239:0x080a, B:240:0x080d, B:242:0x081a, B:244:0x083a, B:245:0x0845, B:247:0x0878, B:248:0x087d, B:249:0x088a, B:251:0x0892, B:253:0x089c, B:254:0x08a9, B:256:0x08b3, B:257:0x08c0, B:258:0x08cc, B:260:0x08d2, B:262:0x0902, B:263:0x0948, B:264:0x0952, B:265:0x095e, B:267:0x0964, B:276:0x09b1, B:277:0x09ff, B:279:0x0a0f, B:293:0x0a73, B:282:0x0a27, B:284:0x0a2b, B:270:0x0970, B:272:0x099c, B:288:0x0a44, B:289:0x0a5b, B:292:0x0a5e, B:170:0x05e1, B:157:0x050e, B:103:0x0335, B:104:0x033c, B:106:0x0342, B:108:0x034e, B:49:0x0186, B:52:0x0192, B:54:0x01a9, B:61:0x01ca, B:69:0x020a, B:71:0x0210, B:73:0x021e, B:75:0x022f, B:78:0x0236, B:96:0x02dd, B:98:0x02e8, B:79:0x0264, B:80:0x0281, B:82:0x0288, B:84:0x0299, B:95:0x02c1, B:94:0x02ae, B:64:0x01d8, B:68:0x0200), top: B:309:0x0124, inners: #1, #8, #9 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    final void z(com.google.android.gms.measurement.internal.zzav r35, com.google.android.gms.measurement.internal.zzp r36) {
        /*
            Method dump skipped, instruction units count: 2741
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzli.z(com.google.android.gms.measurement.internal.zzav, com.google.android.gms.measurement.internal.zzp):void");
    }
}

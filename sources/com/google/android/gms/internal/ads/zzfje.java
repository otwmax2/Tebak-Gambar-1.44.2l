package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.google.android.gms.common.util.Hex;
import com.google.android.gms.common.util.VisibleForTesting;
import java.io.File;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfje {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final File f18301a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @VisibleForTesting
    final File f18302b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final SharedPreferences f18303c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f18304d;

    public zzfje(Context context, int i10) {
        this.f18303c = context.getSharedPreferences("pcvmspf", 0);
        File dir = context.getDir("pccache", 0);
        zzfjf.a(dir, false);
        this.f18301a = dir;
        File dir2 = context.getDir("tmppccache", 0);
        zzfjf.a(dir2, true);
        this.f18302b = dir2;
        this.f18304d = i10;
    }

    private final File d() {
        File file = new File(this.f18301a, Integer.toString(this.f18304d - 1));
        if (!file.exists()) {
            file.mkdir();
        }
        return file;
    }

    private final String e() {
        return "FBAMTD" + (this.f18304d - 1);
    }

    private final String f() {
        return "LATMTD" + (this.f18304d - 1);
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0087  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean a(com.google.android.gms.internal.ads.zzasr r8, com.google.android.gms.internal.ads.zzfjk r9) {
        /*
            Method dump skipped, instruction units count: 390
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzfje.a(com.google.android.gms.internal.ads.zzasr, com.google.android.gms.internal.ads.zzfjk):boolean");
    }

    @VisibleForTesting
    final zzasu b(int i10) {
        String string = i10 == 1 ? this.f18303c.getString(f(), null) : this.f18303c.getString(e(), null);
        if (TextUtils.isEmpty(string)) {
            return null;
        }
        try {
            zzasu zzasuVarO = zzasu.O(zzgpe.J(Hex.c(string)));
            String strR = zzasuVarO.R();
            File fileB = zzfjf.b(strR, "pcam.jar", d());
            if (!fileB.exists()) {
                fileB = zzfjf.b(strR, "pcam", d());
            }
            File fileB2 = zzfjf.b(strR, "pcbc", d());
            if (fileB.exists()) {
                if (fileB2.exists()) {
                    return zzasuVarO;
                }
            }
        } catch (zzgqy unused) {
        }
        return null;
    }

    public final zzfjd c(int i10) {
        zzasu zzasuVarB = b(1);
        if (zzasuVarB == null) {
            return null;
        }
        String strR = zzasuVarB.R();
        File fileB = zzfjf.b(strR, "pcam.jar", d());
        if (!fileB.exists()) {
            fileB = zzfjf.b(strR, "pcam", d());
        }
        return new zzfjd(zzasuVarB, fileB, zzfjf.b(strR, "pcbc", d()), zzfjf.b(strR, "pcopt", d()));
    }
}

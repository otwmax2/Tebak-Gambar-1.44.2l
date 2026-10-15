package com.google.android.gms.internal.ads;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzaaj {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Pattern f8306c = Pattern.compile("^ [0-9a-fA-F]{8} ([0-9a-fA-F]{8}) ([0-9a-fA-F]{8})");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f8307a = -1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f8308b = -1;

    private final boolean c(String str) {
        Matcher matcher = f8306c.matcher(str);
        if (!matcher.find()) {
            return false;
        }
        try {
            String strGroup = matcher.group(1);
            int i10 = zzew.f17494a;
            int i11 = Integer.parseInt(strGroup, 16);
            int i12 = Integer.parseInt(matcher.group(2), 16);
            if (i11 <= 0 && i12 <= 0) {
                return false;
            }
            this.f8307a = i11;
            this.f8308b = i12;
            return true;
        } catch (NumberFormatException unused) {
            return false;
        }
    }

    public final boolean a() {
        return (this.f8307a == -1 || this.f8308b == -1) ? false : true;
    }

    public final boolean b(zzbq zzbqVar) {
        for (int i10 = 0; i10 < zzbqVar.h(); i10++) {
            zzbp zzbpVarT = zzbqVar.t(i10);
            if (zzbpVarT instanceof zzadi) {
                zzadi zzadiVar = (zzadi) zzbpVarT;
                if ("iTunSMPB".equals(zzadiVar.f8589q) && c(zzadiVar.f8590r)) {
                    return true;
                }
            } else if (zzbpVarT instanceof zzadr) {
                zzadr zzadrVar = (zzadr) zzbpVarT;
                if ("com.apple.iTunes".equals(zzadrVar.f8601p) && "iTunSMPB".equals(zzadrVar.f8602q) && c(zzadrVar.f8603r)) {
                    return true;
                }
            } else {
                continue;
            }
        }
        return false;
    }
}

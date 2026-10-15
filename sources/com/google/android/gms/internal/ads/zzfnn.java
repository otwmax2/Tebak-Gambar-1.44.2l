package com.google.android.gms.internal.ads;

import com.vungle.mediation.BuildConfig;
import java.util.Arrays;
import java.util.Objects;
import javax.annotation.CheckForNull;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzfnn {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f18482a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzfnm f18483b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private zzfnm f18484c;

    /* synthetic */ zzfnn(String str, zzfnl zzfnlVar) {
        zzfnm zzfnmVar = new zzfnm(null);
        this.f18483b = zzfnmVar;
        this.f18484c = zzfnmVar;
        Objects.requireNonNull(str);
        this.f18482a = str;
    }

    public final zzfnn a(@CheckForNull Object obj) {
        zzfnm zzfnmVar = new zzfnm(null);
        this.f18484c.f18481b = zzfnmVar;
        this.f18484c = zzfnmVar;
        zzfnmVar.f18480a = obj;
        return this;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(32);
        sb.append(this.f18482a);
        sb.append('{');
        zzfnm zzfnmVar = this.f18483b.f18481b;
        String str = BuildConfig.FLAVOR;
        while (zzfnmVar != null) {
            Object obj = zzfnmVar.f18480a;
            sb.append(str);
            if (obj == null || !obj.getClass().isArray()) {
                sb.append(obj);
            } else {
                sb.append((CharSequence) Arrays.deepToString(new Object[]{obj}), 1, r3.length() - 1);
            }
            zzfnmVar = zzfnmVar.f18481b;
            str = ", ";
        }
        sb.append('}');
        return sb.toString();
    }
}

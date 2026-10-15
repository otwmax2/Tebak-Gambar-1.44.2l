package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.ArrayList;
import java.util.Collections;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzggo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @Nullable
    private ArrayList f19186a = new ArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private zzggl f19187b = zzggl.f19184b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Nullable
    private Integer f19188c = null;

    public final zzggo a(zzfwg zzfwgVar, int i10, String str, String str2) {
        ArrayList arrayList = this.f19186a;
        if (arrayList == null) {
            throw new IllegalStateException("addEntry cannot be called after build()");
        }
        arrayList.add(new zzggq(zzfwgVar, i10, str, str2, null));
        return this;
    }

    public final zzggo b(zzggl zzgglVar) {
        if (this.f19186a == null) {
            throw new IllegalStateException("setAnnotations cannot be called after build()");
        }
        this.f19187b = zzgglVar;
        return this;
    }

    public final zzggo c(int i10) {
        if (this.f19186a == null) {
            throw new IllegalStateException("setPrimaryKeyId cannot be called after build()");
        }
        this.f19188c = Integer.valueOf(i10);
        return this;
    }

    public final zzggs d() throws GeneralSecurityException {
        if (this.f19186a == null) {
            throw new IllegalStateException("cannot call build() twice");
        }
        Integer num = this.f19188c;
        if (num != null) {
            int iIntValue = num.intValue();
            ArrayList arrayList = this.f19186a;
            int size = arrayList.size();
            int i10 = 0;
            while (i10 < size) {
                int iA = ((zzggq) arrayList.get(i10)).a();
                i10++;
                if (iA == iIntValue) {
                }
            }
            throw new GeneralSecurityException("primary key ID is not present in entries");
        }
        zzggs zzggsVar = new zzggs(this.f19187b, Collections.unmodifiableList(this.f19186a), this.f19188c, null);
        this.f19186a = null;
        return zzggsVar;
    }
}

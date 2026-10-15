package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.List;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzggs {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzggl f19193a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List f19194b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Nullable
    private final Integer f19195c;

    /* synthetic */ zzggs(zzggl zzgglVar, List list, Integer num, zzggr zzggrVar) {
        this.f19193a = zzgglVar;
        this.f19194b = list;
        this.f19195c = num;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzggs)) {
            return false;
        }
        zzggs zzggsVar = (zzggs) obj;
        if (this.f19193a.equals(zzggsVar.f19193a) && this.f19194b.equals(zzggsVar.f19194b)) {
            Integer num = this.f19195c;
            Integer num2 = zzggsVar.f19195c;
            if (num == num2) {
                return true;
            }
            if (num != null && num.equals(num2)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f19193a, this.f19194b});
    }

    public final String toString() {
        return String.format("(annotations=%s, entries=%s, primaryKeyId=%s)", this.f19193a, this.f19194b, this.f19195c);
    }
}

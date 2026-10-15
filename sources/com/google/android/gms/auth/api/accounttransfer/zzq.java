package com.google.android.gms.auth.api.accounttransfer;

import android.os.Bundle;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.internal.Objects;
import java.util.ArrayList;
import java.util.Collections;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth-base@@17.1.4 */
/* JADX INFO: loaded from: classes.dex */
public final class zzq implements Api.ApiOptions.Optional {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final zzq f6584p;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Bundle f6585o;

    static {
        Bundle bundle = new Bundle();
        if (!bundle.containsKey("accountTypes")) {
            bundle.putStringArrayList("accountTypes", new ArrayList<>(0));
        }
        f6584p = new zzq(bundle, null);
    }

    /* synthetic */ zzq(Bundle bundle, c cVar) {
        this.f6585o = bundle;
    }

    public final Bundle a() {
        return new Bundle(this.f6585o);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzq)) {
            return false;
        }
        Bundle bundleA = a();
        Bundle bundleA2 = ((zzq) obj).a();
        if (bundleA.size() != bundleA2.size()) {
            return false;
        }
        for (String str : bundleA.keySet()) {
            if (!bundleA2.containsKey(str) || !Objects.b(bundleA.get(str), bundleA2.get(str))) {
                return false;
            }
        }
        return true;
    }

    public final int hashCode() {
        Bundle bundleA = a();
        int size = bundleA.size();
        ArrayList arrayList = new ArrayList(size + size);
        ArrayList arrayList2 = new ArrayList(bundleA.keySet());
        Collections.sort(arrayList2);
        int size2 = arrayList2.size();
        for (int i10 = 0; i10 < size2; i10++) {
            String str = (String) arrayList2.get(i10);
            arrayList.add(str);
            arrayList.add(bundleA.get(str));
        }
        return Objects.c(arrayList);
    }
}

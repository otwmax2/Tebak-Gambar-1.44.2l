package com.google.android.gms.common.internal;

import android.content.Context;
import android.util.SparseIntArray;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.api.Api;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes.dex */
public final class zal {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final SparseIntArray f7487a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private GoogleApiAvailabilityLight f7488b;

    public zal() {
        this(GoogleApiAvailability.p());
    }

    public final int a(Context context, int i10) {
        return this.f7487a.get(i10, -1);
    }

    public final int b(Context context, Api.Client client) {
        Preconditions.k(context);
        Preconditions.k(client);
        int i10 = 0;
        if (!client.l()) {
            return 0;
        }
        int iN = client.n();
        int iA = a(context, iN);
        if (iA == -1) {
            int i11 = 0;
            while (true) {
                if (i11 >= this.f7487a.size()) {
                    i10 = -1;
                    break;
                }
                int iKeyAt = this.f7487a.keyAt(i11);
                if (iKeyAt > iN && this.f7487a.get(iKeyAt) == 0) {
                    break;
                }
                i11++;
            }
            iA = i10 == -1 ? this.f7488b.j(context, iN) : i10;
            this.f7487a.put(iN, iA);
        }
        return iA;
    }

    public final void c() {
        this.f7487a.clear();
    }

    public zal(GoogleApiAvailabilityLight googleApiAvailabilityLight) {
        this.f7487a = new SparseIntArray();
        Preconditions.k(googleApiAvailabilityLight);
        this.f7488b = googleApiAvailabilityLight;
    }
}

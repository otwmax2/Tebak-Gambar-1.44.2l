package com.google.android.gms.common.api;

import android.text.TextUtils;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.internal.ApiKey;
import com.google.android.gms.common.internal.Preconditions;
import java.util.ArrayList;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes.dex */
public class AvailabilityException extends Exception {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final o.a<ApiKey<?>, ConnectionResult> f6944o;

    public AvailabilityException(o.a<ApiKey<?>, ConnectionResult> aVar) {
        this.f6944o = aVar;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        ArrayList arrayList = new ArrayList();
        boolean z10 = true;
        for (ApiKey<?> apiKey : this.f6944o.keySet()) {
            ConnectionResult connectionResult = (ConnectionResult) Preconditions.k(this.f6944o.get(apiKey));
            z10 &= !connectionResult.Z3();
            String strB = apiKey.b();
            String strValueOf = String.valueOf(connectionResult);
            StringBuilder sb = new StringBuilder(String.valueOf(strB).length() + 2 + strValueOf.length());
            sb.append(strB);
            sb.append(": ");
            sb.append(strValueOf);
            arrayList.add(sb.toString());
        }
        StringBuilder sb2 = new StringBuilder();
        if (z10) {
            sb2.append("None of the queried APIs are available. ");
        } else {
            sb2.append("Some of the queried APIs are unavailable. ");
        }
        sb2.append(TextUtils.join("; ", arrayList));
        return sb2.toString();
    }
}

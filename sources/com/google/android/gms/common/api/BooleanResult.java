package com.google.android.gms.common.api;

import com.google.android.gms.common.annotation.KeepForSdk;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes.dex */
@KeepForSdk
public class BooleanResult implements Result {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Status f6948o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final boolean f6949p;

    @Override // com.google.android.gms.common.api.Result
    @KeepForSdk
    public Status V2() {
        return this.f6948o;
    }

    @KeepForSdk
    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof BooleanResult)) {
            return false;
        }
        BooleanResult booleanResult = (BooleanResult) obj;
        return this.f6948o.equals(booleanResult.f6948o) && this.f6949p == booleanResult.f6949p;
    }

    @KeepForSdk
    public final int hashCode() {
        return ((this.f6948o.hashCode() + 527) * 31) + (this.f6949p ? 1 : 0);
    }
}

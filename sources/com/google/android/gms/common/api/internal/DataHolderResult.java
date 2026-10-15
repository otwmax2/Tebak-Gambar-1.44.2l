package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Releasable;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes.dex */
@KeepForSdk
public abstract class DataHolderResult implements Result, Releasable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @KeepForSdk
    protected final Status f7015o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @KeepForSdk
    protected final DataHolder f7016p;

    @KeepForSdk
    protected DataHolderResult(DataHolder dataHolder, Status status) {
        this.f7015o = status;
        this.f7016p = dataHolder;
    }

    @Override // com.google.android.gms.common.api.Result
    @KeepForSdk
    public Status V2() {
        return this.f7015o;
    }

    @Override // com.google.android.gms.common.api.Releasable
    @KeepForSdk
    public void c() {
        DataHolder dataHolder = this.f7016p;
        if (dataHolder != null) {
            dataHolder.close();
        }
    }
}

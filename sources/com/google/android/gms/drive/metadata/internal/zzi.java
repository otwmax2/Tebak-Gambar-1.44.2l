package com.google.android.gms.drive.metadata.internal;

import android.os.Bundle;
import com.google.android.gms.common.data.DataHolder;

/* JADX INFO: loaded from: classes.dex */
public class zzi extends com.google.android.gms.drive.metadata.zza<Long> {
    public zzi(String str, int i10) {
        super(str, 4300000);
    }

    @Override // com.google.android.gms.drive.metadata.zza
    protected final /* synthetic */ Long d(Bundle bundle) {
        return Long.valueOf(bundle.getLong(getName()));
    }

    @Override // com.google.android.gms.drive.metadata.zza
    protected final /* synthetic */ Long f(DataHolder dataHolder, int i10, int i11) {
        return Long.valueOf(dataHolder.Y3(getName(), i10, i11));
    }
}

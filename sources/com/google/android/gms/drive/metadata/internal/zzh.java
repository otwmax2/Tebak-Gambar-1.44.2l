package com.google.android.gms.drive.metadata.internal;

import android.os.Bundle;
import com.google.android.gms.common.data.DataHolder;

/* JADX INFO: loaded from: classes.dex */
public final class zzh extends com.google.android.gms.drive.metadata.zza<Integer> {
    public zzh(String str, int i10) {
        super(str, 4300000);
    }

    @Override // com.google.android.gms.drive.metadata.zza
    protected final /* synthetic */ Integer d(Bundle bundle) {
        return Integer.valueOf(bundle.getInt(getName()));
    }

    @Override // com.google.android.gms.drive.metadata.zza
    protected final /* synthetic */ Integer f(DataHolder dataHolder, int i10, int i11) {
        return Integer.valueOf(dataHolder.X3(getName(), i10, i11));
    }
}

package com.google.android.gms.drive.metadata.internal;

import android.os.Bundle;
import com.google.android.gms.common.data.DataHolder;

/* JADX INFO: loaded from: classes.dex */
public class zzt extends com.google.android.gms.drive.metadata.zza<String> {
    public zzt(String str, int i10) {
        super(str, i10);
    }

    @Override // com.google.android.gms.drive.metadata.zza
    protected final /* synthetic */ String d(Bundle bundle) {
        return bundle.getString(getName());
    }

    @Override // com.google.android.gms.drive.metadata.zza
    protected final /* synthetic */ String f(DataHolder dataHolder, int i10, int i11) {
        return dataHolder.b4(getName(), i10, i11);
    }
}

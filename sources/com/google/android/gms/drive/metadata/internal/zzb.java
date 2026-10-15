package com.google.android.gms.drive.metadata.internal;

import android.os.Bundle;
import com.google.android.gms.common.data.DataHolder;
import java.util.Collection;

/* JADX INFO: loaded from: classes.dex */
public class zzb extends com.google.android.gms.drive.metadata.zza<Boolean> {
    public zzb(String str, int i10) {
        super(str, i10);
    }

    @Override // com.google.android.gms.drive.metadata.zza
    protected final /* synthetic */ Boolean d(Bundle bundle) {
        return Boolean.valueOf(bundle.getBoolean(getName()));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.drive.metadata.zza
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public Boolean f(DataHolder dataHolder, int i10, int i11) {
        return Boolean.valueOf(dataHolder.V3(getName(), i10, i11));
    }

    public zzb(String str, Collection<String> collection, Collection<String> collection2, int i10) {
        super(str, collection, collection2, 7000000);
    }
}

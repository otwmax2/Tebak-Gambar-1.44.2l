package com.google.android.gms.internal.drive;

import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.drive.metadata.SearchableMetadataField;

/* JADX INFO: loaded from: classes2.dex */
public final class zzic extends com.google.android.gms.drive.metadata.internal.zzb implements SearchableMetadataField<Boolean> {
    public zzic(String str, int i10) {
        super(str, 4100000);
    }

    @Override // com.google.android.gms.drive.metadata.internal.zzb, com.google.android.gms.drive.metadata.zza
    protected final /* synthetic */ Boolean f(DataHolder dataHolder, int i10, int i11) {
        return f(dataHolder, i10, i11);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.drive.metadata.internal.zzb
    /* JADX INFO: renamed from: g */
    public final Boolean f(DataHolder dataHolder, int i10, int i11) {
        return Boolean.valueOf(dataHolder.X3(getName(), i10, i11) != 0);
    }
}

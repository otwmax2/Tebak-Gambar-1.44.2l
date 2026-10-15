package com.google.android.gms.internal.drive;

import com.google.android.gms.common.data.DataHolder;
import java.util.Collection;

/* JADX INFO: loaded from: classes2.dex */
final class zzht extends com.google.android.gms.drive.metadata.internal.zzb {
    zzht(String str, Collection collection, Collection collection2, int i10) {
        super(str, collection, collection2, 7000000);
    }

    @Override // com.google.android.gms.drive.metadata.internal.zzb, com.google.android.gms.drive.metadata.zza
    protected final /* synthetic */ Boolean f(DataHolder dataHolder, int i10, int i11) {
        return f(dataHolder, i10, i11);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.drive.metadata.internal.zzb
    /* JADX INFO: renamed from: g */
    public final Boolean f(DataHolder dataHolder, int i10, int i11) {
        return Boolean.valueOf(dataHolder.X3("trashed", i10, i11) == 2);
    }
}

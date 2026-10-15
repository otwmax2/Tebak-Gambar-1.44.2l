package com.google.android.gms.internal.drive;

import com.google.android.gms.common.data.BitmapTeleporter;
import com.google.android.gms.common.data.DataHolder;
import java.util.Collection;

/* JADX INFO: loaded from: classes2.dex */
final class zzhu extends com.google.android.gms.drive.metadata.internal.zzm<BitmapTeleporter> {
    zzhu(String str, Collection collection, Collection collection2, int i10) {
        super(str, collection, collection2, 4400000);
    }

    @Override // com.google.android.gms.drive.metadata.zza
    protected final /* synthetic */ Object f(DataHolder dataHolder, int i10, int i11) {
        throw new IllegalStateException("Thumbnail field is write only");
    }
}

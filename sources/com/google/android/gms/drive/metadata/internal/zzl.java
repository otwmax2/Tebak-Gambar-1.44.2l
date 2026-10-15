package com.google.android.gms.drive.metadata.internal;

import android.os.Bundle;
import android.os.Parcelable;
import java.util.Collection;

/* JADX INFO: loaded from: classes.dex */
public class zzl<T extends Parcelable> extends com.google.android.gms.drive.metadata.zzb<T> {
    public zzl(String str, Collection<String> collection, Collection<String> collection2, int i10) {
        super(str, collection, collection2, i10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.drive.metadata.zza
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public Collection<T> d(Bundle bundle) {
        return bundle.getParcelableArrayList(getName());
    }
}

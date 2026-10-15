package com.google.android.gms.drive.metadata.internal;

import android.os.Bundle;
import com.google.android.gms.common.internal.ReflectedParcelable;
import java.util.Collection;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzm<T extends ReflectedParcelable> extends com.google.android.gms.drive.metadata.zza<T> {
    public zzm(String str, Collection<String> collection, Collection<String> collection2, int i10) {
        super(str, collection, collection2, i10);
    }

    @Override // com.google.android.gms.drive.metadata.zza
    protected final /* synthetic */ Object d(Bundle bundle) {
        return (ReflectedParcelable) bundle.getParcelable(getName());
    }
}

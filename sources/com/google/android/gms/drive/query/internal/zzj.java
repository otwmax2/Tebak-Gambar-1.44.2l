package com.google.android.gms.drive.query.internal;

import com.google.android.gms.drive.metadata.MetadataField;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface zzj<F> {
    F a(F f10);

    F b(MetadataField<?> metadataField);

    <T> F c(zzx zzxVar, MetadataField<T> metadataField, T t10);

    F d(zzx zzxVar, List<F> list);

    <T> F e(MetadataField<T> metadataField, T t10);

    <T> F f(com.google.android.gms.drive.metadata.zzb<T> zzbVar, T t10);

    F g(String str);

    F k0();

    F o0();
}

package com.google.android.gms.drive.metadata;

import android.os.Bundle;
import com.google.android.gms.common.data.DataHolder;

/* JADX INFO: loaded from: classes.dex */
public interface MetadataField<T> {
    T a(DataHolder dataHolder, int i10, int i11);

    T b(Bundle bundle);

    String getName();
}

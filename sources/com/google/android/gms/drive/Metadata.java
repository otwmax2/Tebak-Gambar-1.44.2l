package com.google.android.gms.drive;

import com.google.android.gms.common.data.Freezable;
import com.google.android.gms.drive.metadata.MetadataField;
import com.google.android.gms.internal.drive.zzhs;

/* JADX INFO: loaded from: classes.dex */
public abstract class Metadata implements Freezable<Metadata> {
    public DriveId h() {
        return (DriveId) t(zzhs.f22029a);
    }

    public abstract <T> T t(MetadataField<T> metadataField);
}

package com.google.android.gms.internal.drive;

import com.google.android.gms.drive.Metadata;
import com.google.android.gms.drive.metadata.MetadataField;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;

/* JADX INFO: loaded from: classes2.dex */
public final class zzaa extends Metadata {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final MetadataBundle f21803o;

    public zzaa(MetadataBundle metadataBundle) {
        this.f21803o = metadataBundle;
    }

    @Override // com.google.android.gms.drive.Metadata
    public final <T> T t(MetadataField<T> metadataField) {
        return (T) this.f21803o.V3(metadataField);
    }

    public final String toString() {
        String strValueOf = String.valueOf(this.f21803o);
        StringBuilder sb = new StringBuilder(strValueOf.length() + 17);
        sb.append("Metadata [mImpl=");
        sb.append(strValueOf);
        sb.append("]");
        return sb.toString();
    }
}

package com.google.android.gms.drive.query.internal;

import com.google.android.gms.drive.metadata.MetadataField;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
final class a {
    static MetadataField<?> a(MetadataBundle metadataBundle) {
        Set<MetadataField<?>> setZ3 = metadataBundle.Z3();
        if (setZ3.size() == 1) {
            return setZ3.iterator().next();
        }
        throw new IllegalArgumentException("bundle should have exactly 1 populated field");
    }
}

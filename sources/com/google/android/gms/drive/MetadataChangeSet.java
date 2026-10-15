package com.google.android.gms.drive;

import com.google.android.gms.drive.metadata.internal.MetadataBundle;

/* JADX INFO: loaded from: classes.dex */
public final class MetadataChangeSet {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final MetadataChangeSet f7737b = new MetadataChangeSet(MetadataBundle.X3());

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final MetadataBundle f7738a;

    public static class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final MetadataBundle f7739a = MetadataBundle.X3();
    }

    public MetadataChangeSet(MetadataBundle metadataBundle) {
        this.f7738a = metadataBundle.Y3();
    }

    public final MetadataBundle a() {
        return this.f7738a;
    }
}

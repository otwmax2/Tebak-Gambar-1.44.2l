package com.google.android.gms.drive.metadata;

import android.os.Bundle;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.Preconditions;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public abstract class zza<T> implements MetadataField<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f7810a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Set<String> f7811b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Set<String> f7812c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f7813d;

    protected zza(String str, int i10) {
        this.f7810a = (String) Preconditions.l(str, "fieldName");
        this.f7811b = Collections.singleton(str);
        this.f7812c = Collections.emptySet();
        this.f7813d = i10;
    }

    @Override // com.google.android.gms.drive.metadata.MetadataField
    public final T a(DataHolder dataHolder, int i10, int i11) {
        if (e(dataHolder, i10, i11)) {
            return f(dataHolder, i10, i11);
        }
        return null;
    }

    @Override // com.google.android.gms.drive.metadata.MetadataField
    public final T b(Bundle bundle) {
        Preconditions.l(bundle, "bundle");
        if (bundle.get(this.f7810a) != null) {
            return d(bundle);
        }
        return null;
    }

    public final Collection<String> c() {
        return this.f7811b;
    }

    protected abstract T d(Bundle bundle);

    protected boolean e(DataHolder dataHolder, int i10, int i11) {
        for (String str : this.f7811b) {
            if (dataHolder.isClosed() || !dataHolder.d4(str) || dataHolder.e4(str, i10, i11)) {
                return false;
            }
        }
        return true;
    }

    protected abstract T f(DataHolder dataHolder, int i10, int i11);

    @Override // com.google.android.gms.drive.metadata.MetadataField
    public final String getName() {
        return this.f7810a;
    }

    public String toString() {
        return this.f7810a;
    }

    protected zza(String str, Collection<String> collection, Collection<String> collection2, int i10) {
        this.f7810a = (String) Preconditions.l(str, "fieldName");
        this.f7811b = Collections.unmodifiableSet(new HashSet(collection));
        this.f7812c = Collections.unmodifiableSet(new HashSet(collection2));
        this.f7813d = i10;
    }
}

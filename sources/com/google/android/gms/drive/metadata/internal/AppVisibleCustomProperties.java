package com.google.android.gms.drive.metadata.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.metadata.CustomPropertyKey;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
@SafeParcelable.Class
@SafeParcelable.Reserved
public final class AppVisibleCustomProperties extends AbstractSafeParcelable implements ReflectedParcelable, Iterable<zzc> {
    public static final Parcelable.Creator<AppVisibleCustomProperties> CREATOR = new com.google.android.gms.drive.metadata.internal.zza();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final AppVisibleCustomProperties f7795p = new zza().b();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    private final List<zzc> f7796o;

    public static class zza {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Map<CustomPropertyKey, zzc> f7797a = new HashMap();

        public final zza a(zzc zzcVar) {
            Preconditions.l(zzcVar, "property");
            this.f7797a.put(zzcVar.f7801o, zzcVar);
            return this;
        }

        public final AppVisibleCustomProperties b() {
            return new AppVisibleCustomProperties(this.f7797a.values());
        }
    }

    @SafeParcelable.Constructor
    AppVisibleCustomProperties(@SafeParcelable.Param Collection<zzc> collection) {
        Preconditions.k(collection);
        this.f7796o = new ArrayList(collection);
    }

    public final Map<CustomPropertyKey, String> V3() {
        HashMap map = new HashMap(this.f7796o.size());
        for (zzc zzcVar : this.f7796o) {
            map.put(zzcVar.f7801o, zzcVar.f7802p);
        }
        return Collections.unmodifiableMap(map);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || obj.getClass() != AppVisibleCustomProperties.class) {
            return false;
        }
        return V3().equals(((AppVisibleCustomProperties) obj).V3());
    }

    public final int hashCode() {
        return Objects.c(this.f7796o);
    }

    @Override // java.lang.Iterable
    public final Iterator<zzc> iterator() {
        return this.f7796o.iterator();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.x(parcel, 2, this.f7796o, false);
        SafeParcelWriter.b(parcel, iA);
    }
}

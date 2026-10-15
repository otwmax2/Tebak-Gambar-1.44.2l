package com.google.android.gms.drive.metadata.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.data.BitmapTeleporter;
import com.google.android.gms.common.internal.GmsLogger;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.metadata.MetadataField;
import com.google.android.gms.internal.drive.zzhs;
import com.vungle.mediation.BuildConfig;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
@SafeParcelable.Class
@SafeParcelable.Reserved
public final class MetadataBundle extends AbstractSafeParcelable implements ReflectedParcelable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    private final Bundle f7799o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static final GmsLogger f7798p = new GmsLogger("MetadataBundle", BuildConfig.FLAVOR);
    public static final Parcelable.Creator<MetadataBundle> CREATOR = new zzj();

    @SafeParcelable.Constructor
    MetadataBundle(@SafeParcelable.Param Bundle bundle) {
        int i10;
        Bundle bundle2 = (Bundle) Preconditions.k(bundle);
        this.f7799o = bundle2;
        bundle2.setClassLoader(MetadataBundle.class.getClassLoader());
        ArrayList arrayList = new ArrayList();
        Iterator<String> it = bundle2.keySet().iterator();
        while (true) {
            i10 = 0;
            if (!it.hasNext()) {
                break;
            }
            String next = it.next();
            if (zzf.d(next) == null) {
                arrayList.add(next);
                f7798p.i("MetadataBundle", "Ignored unknown metadata field in bundle: %s", next);
            }
        }
        int size = arrayList.size();
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            this.f7799o.remove((String) obj);
        }
    }

    public static MetadataBundle X3() {
        return new MetadataBundle(new Bundle());
    }

    public final <T> T V3(MetadataField<T> metadataField) {
        return metadataField.b(this.f7799o);
    }

    public final void W3(Context context) {
        BitmapTeleporter bitmapTeleporter = (BitmapTeleporter) V3(zzhs.F);
        if (bitmapTeleporter != null) {
            bitmapTeleporter.V3(context.getCacheDir());
        }
    }

    public final MetadataBundle Y3() {
        return new MetadataBundle(new Bundle(this.f7799o));
    }

    public final Set<MetadataField<?>> Z3() {
        HashSet hashSet = new HashSet();
        Iterator<String> it = this.f7799o.keySet().iterator();
        while (it.hasNext()) {
            hashSet.add(zzf.d(it.next()));
        }
        return hashSet;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || obj.getClass() != MetadataBundle.class) {
            return false;
        }
        MetadataBundle metadataBundle = (MetadataBundle) obj;
        Set<String> setKeySet = this.f7799o.keySet();
        if (!setKeySet.equals(metadataBundle.f7799o.keySet())) {
            return false;
        }
        for (String str : setKeySet) {
            if (!Objects.b(this.f7799o.get(str), metadataBundle.f7799o.get(str))) {
                return false;
            }
        }
        return true;
    }

    public final int hashCode() {
        Iterator<String> it = this.f7799o.keySet().iterator();
        int iHashCode = 1;
        while (it.hasNext()) {
            iHashCode = (iHashCode * 31) + this.f7799o.get(it.next()).hashCode();
        }
        return iHashCode;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.f(parcel, 2, this.f7799o, false);
        SafeParcelWriter.b(parcel, iA);
    }
}

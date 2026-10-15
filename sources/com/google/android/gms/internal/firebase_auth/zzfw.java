package com.google.android.gms.internal.firebase_auth;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.util.Strings;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
@SafeParcelable.Class
public final class zzfw extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzfw> CREATOR = new zzfz();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.VersionField
    private final int f22604o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    private List<String> f22605p;

    public zzfw() {
        this(null);
    }

    public static zzfw V3(zzfw zzfwVar) {
        return new zzfw(zzfwVar != null ? zzfwVar.f22605p : null);
    }

    public static zzfw W3() {
        return new zzfw(null);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.l(parcel, 1, this.f22604o);
        SafeParcelWriter.v(parcel, 2, this.f22605p, false);
        SafeParcelWriter.b(parcel, iA);
    }

    private zzfw(List<String> list) {
        this.f22604o = 1;
        this.f22605p = new ArrayList();
        if (list == null || list.isEmpty()) {
            return;
        }
        this.f22605p.addAll(list);
    }

    @SafeParcelable.Constructor
    zzfw(@SafeParcelable.Param int i10, @SafeParcelable.Param List<String> list) {
        this.f22604o = i10;
        if (list != null && !list.isEmpty()) {
            for (int i11 = 0; i11 < list.size(); i11++) {
                list.set(i11, Strings.a(list.get(i11)));
            }
            this.f22605p = Collections.unmodifiableList(list);
            return;
        }
        this.f22605p = Collections.emptyList();
    }
}

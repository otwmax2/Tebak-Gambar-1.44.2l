package com.google.android.gms.internal.firebase_auth;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
@SafeParcelable.Class
@SafeParcelable.Reserved
public final class zzfl extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzfl> CREATOR = new zzfk();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    private List<zzfj> f22589o;

    public zzfl() {
        this.f22589o = new ArrayList();
    }

    public static zzfl V3(zzfl zzflVar) {
        List<zzfj> list = zzflVar.f22589o;
        zzfl zzflVar2 = new zzfl();
        if (list != null) {
            zzflVar2.f22589o.addAll(list);
        }
        return zzflVar2;
    }

    public final List<zzfj> W3() {
        return this.f22589o;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.x(parcel, 2, this.f22589o, false);
        SafeParcelWriter.b(parcel, iA);
    }

    @SafeParcelable.Constructor
    zzfl(@SafeParcelable.Param List<zzfj> list) {
        if (list != null && !list.isEmpty()) {
            this.f22589o = Collections.unmodifiableList(list);
        } else {
            this.f22589o = Collections.emptyList();
        }
    }
}

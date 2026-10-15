package com.google.android.gms.drive;

import android.os.Parcel;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzu extends AbstractSafeParcelable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private volatile transient boolean f7903o = false;

    protected abstract void V3(Parcel parcel, int i10);

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        Preconditions.n(!this.f7903o);
        this.f7903o = true;
        V3(parcel, i10);
    }
}

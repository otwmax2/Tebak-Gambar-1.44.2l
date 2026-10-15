package com.google.android.gms.drive.events;

import android.os.IBinder;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.GmsLogger;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;
import com.vungle.mediation.BuildConfig;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
@SafeParcelable.Class
@SafeParcelable.Reserved
public final class CompletionEvent extends AbstractSafeParcelable implements ResourceEvent {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    private final DriveId f7760o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    private final String f7761p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    private final ParcelFileDescriptor f7762q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @SafeParcelable.Field
    private final ParcelFileDescriptor f7763r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @SafeParcelable.Field
    private final MetadataBundle f7764s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @SafeParcelable.Field
    private final List<String> f7765t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @SafeParcelable.Field
    private final int f7766u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @SafeParcelable.Field
    private final IBinder f7767v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private boolean f7768w = false;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private boolean f7769x = false;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private boolean f7770y = false;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private static final GmsLogger f7759z = new GmsLogger("CompletionEvent", BuildConfig.FLAVOR);
    public static final Parcelable.Creator<CompletionEvent> CREATOR = new zzg();

    @SafeParcelable.Constructor
    CompletionEvent(@SafeParcelable.Param DriveId driveId, @SafeParcelable.Param String str, @SafeParcelable.Param ParcelFileDescriptor parcelFileDescriptor, @SafeParcelable.Param ParcelFileDescriptor parcelFileDescriptor2, @SafeParcelable.Param MetadataBundle metadataBundle, @SafeParcelable.Param List<String> list, @SafeParcelable.Param int i10, @SafeParcelable.Param IBinder iBinder) {
        this.f7760o = driveId;
        this.f7761p = str;
        this.f7762q = parcelFileDescriptor;
        this.f7763r = parcelFileDescriptor2;
        this.f7764s = metadataBundle;
        this.f7765t = list;
        this.f7766u = i10;
        this.f7767v = iBinder;
    }

    @Override // com.google.android.gms.drive.events.DriveEvent
    public final int o() {
        return 2;
    }

    public final String toString() {
        String string;
        List<String> list = this.f7765t;
        if (list == null) {
            string = "<null>";
        } else {
            String strJoin = TextUtils.join("','", list);
            StringBuilder sb = new StringBuilder(String.valueOf(strJoin).length() + 2);
            sb.append("'");
            sb.append(strJoin);
            sb.append("'");
            string = sb.toString();
        }
        return String.format(Locale.US, "CompletionEvent [id=%s, status=%s, trackingTag=%s]", this.f7760o, Integer.valueOf(this.f7766u), string);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int i11 = i10 | 1;
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.s(parcel, 2, this.f7760o, i11, false);
        SafeParcelWriter.t(parcel, 3, this.f7761p, false);
        SafeParcelWriter.s(parcel, 4, this.f7762q, i11, false);
        SafeParcelWriter.s(parcel, 5, this.f7763r, i11, false);
        SafeParcelWriter.s(parcel, 6, this.f7764s, i11, false);
        SafeParcelWriter.v(parcel, 7, this.f7765t, false);
        SafeParcelWriter.l(parcel, 8, this.f7766u);
        SafeParcelWriter.k(parcel, 9, this.f7767v, false);
        SafeParcelWriter.b(parcel, iA);
    }
}

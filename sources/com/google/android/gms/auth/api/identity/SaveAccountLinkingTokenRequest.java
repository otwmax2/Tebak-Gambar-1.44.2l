package com.google.android.gms.auth.api.identity;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth@@20.2.0 */
/* JADX INFO: loaded from: classes.dex */
@SafeParcelable.Class
public class SaveAccountLinkingTokenRequest extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<SaveAccountLinkingTokenRequest> CREATOR = new zbi();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    private final PendingIntent f6677o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    private final String f6678p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    private final String f6679q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @SafeParcelable.Field
    private final List f6680r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @SafeParcelable.Field
    private final String f6681s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @SafeParcelable.Field
    private final int f6682t;

    /* JADX INFO: compiled from: com.google.android.gms:play-services-auth@@20.2.0 */
    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private List f6683a = new ArrayList();
    }

    @SafeParcelable.Constructor
    SaveAccountLinkingTokenRequest(@SafeParcelable.Param PendingIntent pendingIntent, @SafeParcelable.Param String str, @SafeParcelable.Param String str2, @SafeParcelable.Param List list, @SafeParcelable.Param String str3, @SafeParcelable.Param int i10) {
        this.f6677o = pendingIntent;
        this.f6678p = str;
        this.f6679q = str2;
        this.f6680r = list;
        this.f6681s = str3;
        this.f6682t = i10;
    }

    public PendingIntent V3() {
        return this.f6677o;
    }

    public List<String> W3() {
        return this.f6680r;
    }

    public String X3() {
        return this.f6679q;
    }

    public String Y3() {
        return this.f6678p;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof SaveAccountLinkingTokenRequest)) {
            return false;
        }
        SaveAccountLinkingTokenRequest saveAccountLinkingTokenRequest = (SaveAccountLinkingTokenRequest) obj;
        return this.f6680r.size() == saveAccountLinkingTokenRequest.f6680r.size() && this.f6680r.containsAll(saveAccountLinkingTokenRequest.f6680r) && Objects.b(this.f6677o, saveAccountLinkingTokenRequest.f6677o) && Objects.b(this.f6678p, saveAccountLinkingTokenRequest.f6678p) && Objects.b(this.f6679q, saveAccountLinkingTokenRequest.f6679q) && Objects.b(this.f6681s, saveAccountLinkingTokenRequest.f6681s) && this.f6682t == saveAccountLinkingTokenRequest.f6682t;
    }

    public int hashCode() {
        return Objects.c(this.f6677o, this.f6678p, this.f6679q, this.f6680r, this.f6681s);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.s(parcel, 1, V3(), i10, false);
        SafeParcelWriter.t(parcel, 2, Y3(), false);
        SafeParcelWriter.t(parcel, 3, X3(), false);
        SafeParcelWriter.v(parcel, 4, W3(), false);
        SafeParcelWriter.t(parcel, 5, this.f6681s, false);
        SafeParcelWriter.l(parcel, 6, this.f6682t);
        SafeParcelWriter.b(parcel, iA);
    }
}

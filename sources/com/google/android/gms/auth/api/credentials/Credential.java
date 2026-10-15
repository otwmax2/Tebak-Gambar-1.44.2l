package com.google.android.gms.auth.api.credentials;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.facebook.gamingservices.internal.TournamentShareDialogURIBuilder;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Collections;
import java.util.List;
import javax.annotation.Nonnull;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth@@20.2.0 */
/* JADX INFO: loaded from: classes.dex */
@SafeParcelable.Class
@SafeParcelable.Reserved
@Deprecated
public class Credential extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<Credential> CREATOR = new zba();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @Nonnull
    @SafeParcelable.Field
    private final String f6608o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    private final String f6609p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    private final Uri f6610q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @Nonnull
    @SafeParcelable.Field
    private final List f6611r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @SafeParcelable.Field
    private final String f6612s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @SafeParcelable.Field
    private final String f6613t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @SafeParcelable.Field
    private final String f6614u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @SafeParcelable.Field
    private final String f6615v;

    /* JADX INFO: compiled from: com.google.android.gms:play-services-auth@@20.2.0 */
    @Deprecated
    public static class Builder {
    }

    @SafeParcelable.Constructor
    Credential(@SafeParcelable.Param String str, @SafeParcelable.Param String str2, @SafeParcelable.Param Uri uri, @SafeParcelable.Param List list, @SafeParcelable.Param String str3, @SafeParcelable.Param String str4, @SafeParcelable.Param String str5, @SafeParcelable.Param String str6) {
        Boolean boolValueOf;
        String strTrim = ((String) Preconditions.l(str, "credential identifier cannot be null")).trim();
        Preconditions.h(strTrim, "credential identifier cannot be empty");
        if (str3 != null && TextUtils.isEmpty(str3)) {
            throw new IllegalArgumentException("Password must not be empty if set");
        }
        if (str4 != null) {
            if (TextUtils.isEmpty(str4)) {
                boolValueOf = Boolean.FALSE;
            } else {
                Uri uri2 = Uri.parse(str4);
                if (!uri2.isAbsolute() || !uri2.isHierarchical() || TextUtils.isEmpty(uri2.getScheme()) || TextUtils.isEmpty(uri2.getAuthority())) {
                    boolValueOf = Boolean.FALSE;
                } else {
                    boolean z10 = true;
                    if (!"http".equalsIgnoreCase(uri2.getScheme()) && !TournamentShareDialogURIBuilder.scheme.equalsIgnoreCase(uri2.getScheme())) {
                        z10 = false;
                    }
                    boolValueOf = Boolean.valueOf(z10);
                }
            }
            if (!boolValueOf.booleanValue()) {
                throw new IllegalArgumentException("Account type must be a valid Http/Https URI");
            }
        }
        if (!TextUtils.isEmpty(str4) && !TextUtils.isEmpty(str3)) {
            throw new IllegalArgumentException("Password and AccountType are mutually exclusive");
        }
        if (str2 != null && TextUtils.isEmpty(str2.trim())) {
            str2 = null;
        }
        this.f6609p = str2;
        this.f6610q = uri;
        this.f6611r = list == null ? Collections.emptyList() : Collections.unmodifiableList(list);
        this.f6608o = strTrim;
        this.f6612s = str3;
        this.f6613t = str4;
        this.f6614u = str5;
        this.f6615v = str6;
    }

    public String V3() {
        return this.f6613t;
    }

    public String W3() {
        return this.f6615v;
    }

    public String X3() {
        return this.f6614u;
    }

    @Nonnull
    public String Y3() {
        return this.f6608o;
    }

    @Nonnull
    public List<IdToken> Z3() {
        return this.f6611r;
    }

    public String a4() {
        return this.f6612s;
    }

    public Uri b4() {
        return this.f6610q;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Credential)) {
            return false;
        }
        Credential credential = (Credential) obj;
        return TextUtils.equals(this.f6608o, credential.f6608o) && TextUtils.equals(this.f6609p, credential.f6609p) && Objects.b(this.f6610q, credential.f6610q) && TextUtils.equals(this.f6612s, credential.f6612s) && TextUtils.equals(this.f6613t, credential.f6613t);
    }

    public String getName() {
        return this.f6609p;
    }

    public int hashCode() {
        return Objects.c(this.f6608o, this.f6609p, this.f6610q, this.f6612s, this.f6613t);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.t(parcel, 1, Y3(), false);
        SafeParcelWriter.t(parcel, 2, getName(), false);
        SafeParcelWriter.s(parcel, 3, b4(), i10, false);
        SafeParcelWriter.x(parcel, 4, Z3(), false);
        SafeParcelWriter.t(parcel, 5, a4(), false);
        SafeParcelWriter.t(parcel, 6, V3(), false);
        SafeParcelWriter.t(parcel, 9, X3(), false);
        SafeParcelWriter.t(parcel, 10, W3(), false);
        SafeParcelWriter.b(parcel, iA);
    }
}

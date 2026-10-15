package com.google.android.gms.auth.api.identity;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth@@20.2.0 */
/* JADX INFO: loaded from: classes.dex */
@SafeParcelable.Class
public final class BeginSignInRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<BeginSignInRequest> CREATOR = new zba();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    private final PasswordRequestOptions f6647o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    private final GoogleIdTokenRequestOptions f6648p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    private final String f6649q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @SafeParcelable.Field
    private final boolean f6650r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @SafeParcelable.Field
    private final int f6651s;

    /* JADX INFO: compiled from: com.google.android.gms:play-services-auth@@20.2.0 */
    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private PasswordRequestOptions f6652a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private GoogleIdTokenRequestOptions f6653b;

        public Builder() {
            PasswordRequestOptions.Builder builderV3 = PasswordRequestOptions.V3();
            builderV3.b(false);
            this.f6652a = builderV3.a();
            GoogleIdTokenRequestOptions.Builder builderV32 = GoogleIdTokenRequestOptions.V3();
            builderV32.b(false);
            this.f6653b = builderV32.a();
        }
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-auth@@20.2.0 */
    @SafeParcelable.Class
    public static final class GoogleIdTokenRequestOptions extends AbstractSafeParcelable {
        public static final Parcelable.Creator<GoogleIdTokenRequestOptions> CREATOR = new zbg();

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        @SafeParcelable.Field
        private final boolean f6654o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        @SafeParcelable.Field
        private final String f6655p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        @SafeParcelable.Field
        private final String f6656q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        @SafeParcelable.Field
        private final boolean f6657r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        @SafeParcelable.Field
        private final String f6658s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        @SafeParcelable.Field
        private final List f6659t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        @SafeParcelable.Field
        private final boolean f6660u;

        /* JADX INFO: compiled from: com.google.android.gms:play-services-auth@@20.2.0 */
        public static final class Builder {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private boolean f6661a = false;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private String f6662b = null;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            private String f6663c = null;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private boolean f6664d = true;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            private String f6665e = null;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            private List f6666f = null;

            public GoogleIdTokenRequestOptions a() {
                return new GoogleIdTokenRequestOptions(this.f6661a, this.f6662b, this.f6663c, this.f6664d, this.f6665e, this.f6666f, false);
            }

            public Builder b(boolean z10) {
                this.f6661a = z10;
                return this;
            }
        }

        @SafeParcelable.Constructor
        GoogleIdTokenRequestOptions(@SafeParcelable.Param boolean z10, @SafeParcelable.Param String str, @SafeParcelable.Param String str2, @SafeParcelable.Param boolean z11, @SafeParcelable.Param String str3, @SafeParcelable.Param List list, @SafeParcelable.Param boolean z12) {
            boolean z13 = true;
            if (z11 && z12) {
                z13 = false;
            }
            Preconditions.b(z13, "filterByAuthorizedAccounts and requestVerifiedPhoneNumber must not both be true; the Verified Phone Number feature only works in sign-ups.");
            this.f6654o = z10;
            if (z10) {
                Preconditions.l(str, "serverClientId must be provided if Google ID tokens are requested");
            }
            this.f6655p = str;
            this.f6656q = str2;
            this.f6657r = z11;
            Parcelable.Creator<BeginSignInRequest> creator = BeginSignInRequest.CREATOR;
            ArrayList arrayList = null;
            if (list != null && !list.isEmpty()) {
                arrayList = new ArrayList(list);
                Collections.sort(arrayList);
            }
            this.f6659t = arrayList;
            this.f6658s = str3;
            this.f6660u = z12;
        }

        public static Builder V3() {
            return new Builder();
        }

        public boolean W3() {
            return this.f6657r;
        }

        public List<String> X3() {
            return this.f6659t;
        }

        public String Y3() {
            return this.f6658s;
        }

        public String Z3() {
            return this.f6656q;
        }

        public String a4() {
            return this.f6655p;
        }

        public boolean b4() {
            return this.f6654o;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof GoogleIdTokenRequestOptions)) {
                return false;
            }
            GoogleIdTokenRequestOptions googleIdTokenRequestOptions = (GoogleIdTokenRequestOptions) obj;
            return this.f6654o == googleIdTokenRequestOptions.f6654o && Objects.b(this.f6655p, googleIdTokenRequestOptions.f6655p) && Objects.b(this.f6656q, googleIdTokenRequestOptions.f6656q) && this.f6657r == googleIdTokenRequestOptions.f6657r && Objects.b(this.f6658s, googleIdTokenRequestOptions.f6658s) && Objects.b(this.f6659t, googleIdTokenRequestOptions.f6659t) && this.f6660u == googleIdTokenRequestOptions.f6660u;
        }

        public int hashCode() {
            return Objects.c(Boolean.valueOf(this.f6654o), this.f6655p, this.f6656q, Boolean.valueOf(this.f6657r), this.f6658s, this.f6659t, Boolean.valueOf(this.f6660u));
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            int iA = SafeParcelWriter.a(parcel);
            SafeParcelWriter.c(parcel, 1, b4());
            SafeParcelWriter.t(parcel, 2, a4(), false);
            SafeParcelWriter.t(parcel, 3, Z3(), false);
            SafeParcelWriter.c(parcel, 4, W3());
            SafeParcelWriter.t(parcel, 5, Y3(), false);
            SafeParcelWriter.v(parcel, 6, X3(), false);
            SafeParcelWriter.c(parcel, 7, this.f6660u);
            SafeParcelWriter.b(parcel, iA);
        }
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-auth@@20.2.0 */
    @SafeParcelable.Class
    public static final class PasswordRequestOptions extends AbstractSafeParcelable {
        public static final Parcelable.Creator<PasswordRequestOptions> CREATOR = new zbh();

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        @SafeParcelable.Field
        private final boolean f6667o;

        /* JADX INFO: compiled from: com.google.android.gms:play-services-auth@@20.2.0 */
        public static final class Builder {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private boolean f6668a = false;

            public PasswordRequestOptions a() {
                return new PasswordRequestOptions(this.f6668a);
            }

            public Builder b(boolean z10) {
                this.f6668a = z10;
                return this;
            }
        }

        @SafeParcelable.Constructor
        PasswordRequestOptions(@SafeParcelable.Param boolean z10) {
            this.f6667o = z10;
        }

        public static Builder V3() {
            return new Builder();
        }

        public boolean W3() {
            return this.f6667o;
        }

        public boolean equals(Object obj) {
            return (obj instanceof PasswordRequestOptions) && this.f6667o == ((PasswordRequestOptions) obj).f6667o;
        }

        public int hashCode() {
            return Objects.c(Boolean.valueOf(this.f6667o));
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            int iA = SafeParcelWriter.a(parcel);
            SafeParcelWriter.c(parcel, 1, W3());
            SafeParcelWriter.b(parcel, iA);
        }
    }

    @SafeParcelable.Constructor
    BeginSignInRequest(@SafeParcelable.Param PasswordRequestOptions passwordRequestOptions, @SafeParcelable.Param GoogleIdTokenRequestOptions googleIdTokenRequestOptions, @SafeParcelable.Param String str, @SafeParcelable.Param boolean z10, @SafeParcelable.Param int i10) {
        this.f6647o = (PasswordRequestOptions) Preconditions.k(passwordRequestOptions);
        this.f6648p = (GoogleIdTokenRequestOptions) Preconditions.k(googleIdTokenRequestOptions);
        this.f6649q = str;
        this.f6650r = z10;
        this.f6651s = i10;
    }

    public GoogleIdTokenRequestOptions V3() {
        return this.f6648p;
    }

    public PasswordRequestOptions W3() {
        return this.f6647o;
    }

    public boolean X3() {
        return this.f6650r;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof BeginSignInRequest)) {
            return false;
        }
        BeginSignInRequest beginSignInRequest = (BeginSignInRequest) obj;
        return Objects.b(this.f6647o, beginSignInRequest.f6647o) && Objects.b(this.f6648p, beginSignInRequest.f6648p) && Objects.b(this.f6649q, beginSignInRequest.f6649q) && this.f6650r == beginSignInRequest.f6650r && this.f6651s == beginSignInRequest.f6651s;
    }

    public int hashCode() {
        return Objects.c(this.f6647o, this.f6648p, this.f6649q, Boolean.valueOf(this.f6650r));
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.s(parcel, 1, W3(), i10, false);
        SafeParcelWriter.s(parcel, 2, V3(), i10, false);
        SafeParcelWriter.t(parcel, 3, this.f6649q, false);
        SafeParcelWriter.c(parcel, 4, X3());
        SafeParcelWriter.l(parcel, 5, this.f6651s);
        SafeParcelWriter.b(parcel, iA);
    }
}

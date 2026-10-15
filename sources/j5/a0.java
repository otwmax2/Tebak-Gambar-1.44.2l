package j5;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.firebase_auth.zzew;
import com.google.android.gms.internal.firebase_auth.zzfj;
import com.vungle.mediation.VungleExtrasBuilder;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
@SafeParcelable.Class
public final class a0 extends AbstractSafeParcelable implements g5.j0 {
    public static final Parcelable.Creator<a0> CREATOR = new d0();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    private String f30669o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    private String f30670p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    private String f30671q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @SafeParcelable.Field
    private String f30672r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private Uri f30673s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @SafeParcelable.Field
    private String f30674t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @SafeParcelable.Field
    private String f30675u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @SafeParcelable.Field
    private boolean f30676v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    @SafeParcelable.Field
    private String f30677w;

    @SafeParcelable.Constructor
    @VisibleForTesting
    public a0(@SafeParcelable.Param String str, @SafeParcelable.Param String str2, @SafeParcelable.Param String str3, @SafeParcelable.Param String str4, @SafeParcelable.Param String str5, @SafeParcelable.Param String str6, @SafeParcelable.Param boolean z10, @SafeParcelable.Param String str7) {
        this.f30669o = str;
        this.f30670p = str2;
        this.f30674t = str3;
        this.f30675u = str4;
        this.f30671q = str5;
        this.f30672r = str6;
        if (!TextUtils.isEmpty(str6)) {
            this.f30673s = Uri.parse(this.f30672r);
        }
        this.f30676v = z10;
        this.f30677w = str7;
    }

    public static a0 a4(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            return new a0(jSONObject.optString(VungleExtrasBuilder.EXTRA_USER_ID), jSONObject.optString("providerId"), jSONObject.optString("email"), jSONObject.optString("phoneNumber"), jSONObject.optString("displayName"), jSONObject.optString("photoUrl"), jSONObject.optBoolean("isEmailVerified"), jSONObject.optString("rawUserInfo"));
        } catch (JSONException e10) {
            Log.d("DefaultAuthUserInfo", "Failed to unpack UserInfo from JSON");
            throw new h5.a(e10);
        }
    }

    @Override // g5.j0
    public final String O1() {
        return this.f30670p;
    }

    public final String V3() {
        return this.f30674t;
    }

    public final String W3() {
        return this.f30675u;
    }

    public final Uri X3() {
        if (!TextUtils.isEmpty(this.f30672r) && this.f30673s == null) {
            this.f30673s = Uri.parse(this.f30672r);
        }
        return this.f30673s;
    }

    public final String Y3() {
        return this.f30669o;
    }

    public final boolean Z3() {
        return this.f30676v;
    }

    public final String b4() {
        return this.f30677w;
    }

    public final String c4() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt(VungleExtrasBuilder.EXTRA_USER_ID, this.f30669o);
            jSONObject.putOpt("providerId", this.f30670p);
            jSONObject.putOpt("displayName", this.f30671q);
            jSONObject.putOpt("photoUrl", this.f30672r);
            jSONObject.putOpt("email", this.f30674t);
            jSONObject.putOpt("phoneNumber", this.f30675u);
            jSONObject.putOpt("isEmailVerified", Boolean.valueOf(this.f30676v));
            jSONObject.putOpt("rawUserInfo", this.f30677w);
            return jSONObject.toString();
        } catch (JSONException e10) {
            Log.d("DefaultAuthUserInfo", "Failed to jsonify this object");
            throw new h5.a(e10);
        }
    }

    public final String s() {
        return this.f30671q;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.t(parcel, 1, Y3(), false);
        SafeParcelWriter.t(parcel, 2, O1(), false);
        SafeParcelWriter.t(parcel, 3, s(), false);
        SafeParcelWriter.t(parcel, 4, this.f30672r, false);
        SafeParcelWriter.t(parcel, 5, V3(), false);
        SafeParcelWriter.t(parcel, 6, W3(), false);
        SafeParcelWriter.c(parcel, 7, Z3());
        SafeParcelWriter.t(parcel, 8, this.f30677w, false);
        SafeParcelWriter.b(parcel, iA);
    }

    public a0(zzew zzewVar, String str) {
        Preconditions.k(zzewVar);
        Preconditions.g(str);
        this.f30669o = Preconditions.g(zzewVar.X3());
        this.f30670p = str;
        this.f30674t = zzewVar.V3();
        this.f30671q = zzewVar.Y3();
        Uri uriZ3 = zzewVar.Z3();
        if (uriZ3 != null) {
            this.f30672r = uriZ3.toString();
            this.f30673s = uriZ3;
        }
        this.f30676v = zzewVar.W3();
        this.f30677w = null;
        this.f30675u = zzewVar.c();
    }

    public a0(zzfj zzfjVar) {
        Preconditions.k(zzfjVar);
        this.f30669o = zzfjVar.V3();
        this.f30670p = Preconditions.g(zzfjVar.Y3());
        this.f30671q = zzfjVar.W3();
        Uri uriX3 = zzfjVar.X3();
        if (uriX3 != null) {
            this.f30672r = uriX3.toString();
            this.f30673s = uriX3;
        }
        this.f30674t = zzfjVar.a4();
        this.f30675u = zzfjVar.Z3();
        this.f30676v = false;
        this.f30677w = zzfjVar.c();
    }
}

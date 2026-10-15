package b5;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.StringResourceValueReader;
import com.google.android.gms.common.util.Strings;

/* JADX INFO: compiled from: FirebaseOptions.java */
/* JADX INFO: loaded from: classes2.dex */
public final class q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f4675a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f4676b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f4677c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f4678d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f4679e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f4680f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final String f4681g;

    private q(String str, String str2, String str3, String str4, String str5, String str6, String str7) {
        Preconditions.o(!Strings.b(str), "ApplicationId must be set.");
        this.f4676b = str;
        this.f4675a = str2;
        this.f4677c = str3;
        this.f4678d = str4;
        this.f4679e = str5;
        this.f4680f = str6;
        this.f4681g = str7;
    }

    public static q a(Context context) {
        StringResourceValueReader stringResourceValueReader = new StringResourceValueReader(context);
        String strA = stringResourceValueReader.a("google_app_id");
        if (TextUtils.isEmpty(strA)) {
            return null;
        }
        return new q(strA, stringResourceValueReader.a("google_api_key"), stringResourceValueReader.a("firebase_database_url"), stringResourceValueReader.a("ga_trackingId"), stringResourceValueReader.a("gcm_defaultSenderId"), stringResourceValueReader.a("google_storage_bucket"), stringResourceValueReader.a("project_id"));
    }

    public String b() {
        return this.f4675a;
    }

    public String c() {
        return this.f4676b;
    }

    public String d() {
        return this.f4679e;
    }

    public String e() {
        return this.f4681g;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof q)) {
            return false;
        }
        q qVar = (q) obj;
        return Objects.b(this.f4676b, qVar.f4676b) && Objects.b(this.f4675a, qVar.f4675a) && Objects.b(this.f4677c, qVar.f4677c) && Objects.b(this.f4678d, qVar.f4678d) && Objects.b(this.f4679e, qVar.f4679e) && Objects.b(this.f4680f, qVar.f4680f) && Objects.b(this.f4681g, qVar.f4681g);
    }

    public int hashCode() {
        return Objects.c(this.f4676b, this.f4675a, this.f4677c, this.f4678d, this.f4679e, this.f4680f, this.f4681g);
    }

    public String toString() {
        return Objects.d(this).a("applicationId", this.f4676b).a("apiKey", this.f4675a).a("databaseUrl", this.f4677c).a("gcmSenderId", this.f4679e).a("storageBucket", this.f4680f).a("projectId", this.f4681g).toString();
    }
}

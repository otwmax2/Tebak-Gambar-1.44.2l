package com.google.firebase.messaging;

import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import com.facebook.appevents.AppEventsConstants;
import com.google.ads.mediation.vungle.VungleMediationAdapter;
import com.google.android.gms.cloudmessaging.Rpc;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import i6.j;
import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.concurrent.ExecutionException;

/* JADX INFO: compiled from: com.google.firebase:firebase-messaging@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
class a0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final b5.g f26405a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final f0 f26406b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Rpc f26407c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final k6.b<t6.i> f26408d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final k6.b<i6.j> f26409e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final l6.e f26410f;

    a0(b5.g gVar, f0 f0Var, Rpc rpc, k6.b<t6.i> bVar, k6.b<i6.j> bVar2, l6.e eVar) {
        this.f26405a = gVar;
        this.f26406b = f0Var;
        this.f26407c = rpc;
        this.f26408d = bVar;
        this.f26409e = bVar2;
        this.f26410f = eVar;
    }

    a0(b5.g gVar, f0 f0Var, k6.b<t6.i> bVar, k6.b<i6.j> bVar2, l6.e eVar) {
        this(gVar, f0Var, new Rpc(gVar.l()), bVar, bVar2, eVar);
    }

    private static String a(byte[] bArr) {
        return Base64.encodeToString(bArr, 11);
    }

    private Task<String> b(Task<Bundle> task) {
        return task.l(y.f26566o, new Continuation(this) { // from class: com.google.firebase.messaging.z

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final a0 f26568a;

            {
                this.f26568a = this;
            }

            @Override // com.google.android.gms.tasks.Continuation
            public Object a(Task task2) {
                return this.f26568a.g(task2);
            }
        });
    }

    private String c() {
        try {
            return a(MessageDigest.getInstance("SHA-1").digest(this.f26405a.o().getBytes()));
        } catch (NoSuchAlgorithmException unused) {
            return "[HASH-ERROR]";
        }
    }

    private String e(Bundle bundle) throws IOException {
        if (bundle == null) {
            throw new IOException("SERVICE_NOT_AVAILABLE");
        }
        String string = bundle.getString("registration_id");
        if (string != null) {
            return string;
        }
        String string2 = bundle.getString("unregistered");
        if (string2 != null) {
            return string2;
        }
        String string3 = bundle.getString("error");
        if ("RST".equals(string3)) {
            throw new IOException("INSTANCE_ID_RESET");
        }
        if (string3 != null) {
            throw new IOException(string3);
        }
        String strValueOf = String.valueOf(bundle);
        StringBuilder sb = new StringBuilder(strValueOf.length() + 21);
        sb.append("Unexpected response: ");
        sb.append(strValueOf);
        Log.w("FirebaseMessaging", sb.toString(), new Throwable());
        throw new IOException("SERVICE_NOT_AVAILABLE");
    }

    static boolean f(String str) {
        return "SERVICE_NOT_AVAILABLE".equals(str) || "INTERNAL_SERVER_ERROR".equals(str) || "InternalServerError".equals(str);
    }

    private Bundle h(String str, String str2, String str3, Bundle bundle) {
        j.a aVarB;
        bundle.putString("scope", str3);
        bundle.putString("sender", str2);
        bundle.putString("subtype", str2);
        bundle.putString(VungleMediationAdapter.KEY_APP_ID, str);
        bundle.putString("gmp_app_id", this.f26405a.p().c());
        bundle.putString("gmsv", Integer.toString(this.f26406b.d()));
        bundle.putString("osv", Integer.toString(Build.VERSION.SDK_INT));
        bundle.putString("app_ver", this.f26406b.a());
        bundle.putString("app_ver_name", this.f26406b.b());
        bundle.putString("firebase-app-name-hash", c());
        try {
            String strB = ((com.google.firebase.installations.g) Tasks.a(this.f26410f.b(false))).b();
            if (TextUtils.isEmpty(strB)) {
                Log.w("FirebaseMessaging", "FIS auth token is empty");
            } else {
                bundle.putString("Goog-Firebase-Installations-Auth", strB);
            }
        } catch (InterruptedException | ExecutionException e10) {
            Log.e("FirebaseMessaging", "Failed to get FIS auth token", e10);
        }
        bundle.putString("cliv", "fcm-22.0.0");
        i6.j jVar = this.f26409e.get();
        t6.i iVar = this.f26408d.get();
        if (jVar != null && iVar != null && (aVarB = jVar.b("fire-iid")) != j.a.NONE) {
            bundle.putString("Firebase-Client-Log-Type", Integer.toString(aVarB.c()));
            bundle.putString("Firebase-Client", iVar.a());
        }
        return bundle;
    }

    private Task<Bundle> i(String str, String str2, String str3, Bundle bundle) {
        h(str, str2, str3, bundle);
        return this.f26407c.a(bundle);
    }

    Task<String> d(String str) {
        return b(i(str, f0.c(this.f26405a), "*", new Bundle()));
    }

    final /* synthetic */ String g(Task task) throws Exception {
        return e((Bundle) task.q(IOException.class));
    }

    Task<?> j(String str, String str2, String str3) {
        Bundle bundle = new Bundle();
        String strValueOf = String.valueOf(str3);
        bundle.putString("gcm.topic", strValueOf.length() != 0 ? "/topics/".concat(strValueOf) : new String("/topics/"));
        String strValueOf2 = String.valueOf(str3);
        return b(i(str, str2, strValueOf2.length() != 0 ? "/topics/".concat(strValueOf2) : new String("/topics/"), bundle));
    }

    Task<?> k(String str, String str2, String str3) {
        Bundle bundle = new Bundle();
        String strValueOf = String.valueOf(str3);
        bundle.putString("gcm.topic", strValueOf.length() != 0 ? "/topics/".concat(strValueOf) : new String("/topics/"));
        bundle.putString("delete", AppEventsConstants.EVENT_PARAM_VALUE_YES);
        String strValueOf2 = String.valueOf(str3);
        return b(i(str, str2, strValueOf2.length() != 0 ? "/topics/".concat(strValueOf2) : new String("/topics/"), bundle));
    }
}

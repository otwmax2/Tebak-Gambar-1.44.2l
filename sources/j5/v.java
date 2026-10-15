package j5;

import android.content.Intent;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.SafeParcelableSerializer;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
public final class v {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Map<String, String> f30734a;

    static {
        HashMap map = new HashMap();
        f30734a = map;
        map.put("auth/invalid-provider-id", "INVALID_PROVIDER_ID");
        map.put("auth/invalid-cert-hash", "INVALID_CERT_HASH");
        map.put("auth/network-request-failed", "WEB_NETWORK_REQUEST_FAILED");
        map.put("auth/web-storage-unsupported", "WEB_STORAGE_UNSUPPORTED");
        map.put("auth/operation-not-allowed", "OPERATION_NOT_ALLOWED");
    }

    public static void a(Intent intent, Status status) {
        SafeParcelableSerializer.e(status, intent, "com.google.firebase.auth.internal.STATUS");
    }

    public static boolean b(Intent intent) {
        Preconditions.k(intent);
        return intent.hasExtra("com.google.firebase.auth.internal.STATUS");
    }

    public static Status c(Intent intent) {
        Preconditions.k(intent);
        Preconditions.a(b(intent));
        return (Status) SafeParcelableSerializer.b(intent, "com.google.firebase.auth.internal.STATUS", Status.CREATOR);
    }
}

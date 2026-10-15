package i5;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.AnyClient;
import com.google.android.gms.common.api.internal.TaskApiCall;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
public interface e<A extends Api.AnyClient, ResultT> {
    e<A, ResultT> a();

    e<A, ResultT> d();

    String zza();

    TaskApiCall<A, ResultT> zzb();
}

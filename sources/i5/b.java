package i5;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.logging.Logger;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import i5.d;
import java.util.concurrent.Future;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class b<T extends d> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static Logger f30399b = new Logger("BiChannelGoogleApi", "FirebaseAuth: ");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private a<T> f30400a;

    private final GoogleApi<T> a(String str) {
        a<T> aVarF = f();
        if (aVarF.f30397c.o(str)) {
            Logger logger = f30399b;
            String strValueOf = String.valueOf(aVarF.f30396b);
            StringBuilder sb = new StringBuilder(strValueOf.length() + 43);
            sb.append("getGoogleApiForMethod() returned Fallback: ");
            sb.append(strValueOf);
            logger.e(sb.toString(), new Object[0]);
            return (GoogleApi<T>) aVarF.f30396b;
        }
        Logger logger2 = f30399b;
        String strValueOf2 = String.valueOf(aVarF.f30395a);
        StringBuilder sb2 = new StringBuilder(strValueOf2.length() + 38);
        sb2.append("getGoogleApiForMethod() returned Gms: ");
        sb2.append(strValueOf2);
        logger2.e(sb2.toString(), new Object[0]);
        return (GoogleApi<T>) aVarF.f30395a;
    }

    private static <ResultT> Task<ResultT> d() {
        return Tasks.d(o0.a(new Status(17499, "Unable to connect to GoogleApi instance - Google Play Services may be unavailable")));
    }

    private final a<T> f() {
        a<T> aVar;
        synchronized (this) {
            if (this.f30400a == null) {
                try {
                    this.f30400a = c().get();
                } catch (Exception e10) {
                    String strValueOf = String.valueOf(e10.getMessage());
                    throw new RuntimeException(strValueOf.length() != 0 ? "There was an error while initializing the connection to Google Play Services: ".concat(strValueOf) : new String("There was an error while initializing the connection to Google Play Services: "));
                }
            }
            aVar = this.f30400a;
        }
        return aVar;
    }

    public final <ResultT, A extends Api.AnyClient> Task<ResultT> b(e<A, ResultT> eVar) {
        GoogleApi<T> googleApiA = a(eVar.zza());
        if (googleApiA == null) {
            return d();
        }
        if (((d) googleApiA.q()).f30408o) {
            eVar.d();
        }
        return (Task<ResultT>) googleApiA.k(eVar.zzb());
    }

    abstract Future<a<T>> c();

    public final <ResultT, A extends Api.AnyClient> Task<ResultT> e(e<A, ResultT> eVar) {
        GoogleApi<T> googleApiA = a(eVar.zza());
        if (googleApiA == null) {
            return d();
        }
        if (((d) googleApiA.q()).f30408o) {
            eVar.d();
        }
        return (Task<ResultT>) googleApiA.o(eVar.zzb());
    }
}

package w5;

import android.content.Context;
import com.google.android.gms.tasks.Task;
import j3.g;
import java.nio.charset.Charset;
import l3.u;
import q5.g0;
import s5.f0;
import t5.j;
import x5.i;

/* JADX INFO: compiled from: DataTransportCrashlyticsReportSender.java */
/* JADX INFO: loaded from: classes2.dex */
public class b {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final j f35994c = new j();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final String f35995d = e("hts/cahyiseot-agolai.o/1frlglgc/aclg", "tp:/rsltcrprsp.ogepscmv/ieo/eaybtho");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final String f35996e = e("AzSBpY4F0rHiHFdinTvM", "IayrSTFL9eJ69YeSUO2");

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final j3.e<f0, byte[]> f35997f = new j3.e() { // from class: w5.a
        @Override // j3.e
        public final Object a(Object obj) {
            return b.d((f0) obj);
        }
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final e f35998a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final j3.e<f0, byte[]> f35999b;

    b(e eVar, j3.e<f0, byte[]> eVar2) {
        this.f35998a = eVar;
        this.f35999b = eVar2;
    }

    public static b b(Context context, i iVar, g0 g0Var) {
        u.f(context);
        g gVarG = u.c().g(new com.google.android.datatransport.cct.a(f35995d, f35996e));
        j3.b bVarB = j3.b.b("json");
        j3.e<f0, byte[]> eVar = f35997f;
        return new b(new e(gVarG.a("FIREBASE_CRASHLYTICS_REPORT", f0.class, bVarB, eVar), iVar.b(), g0Var), eVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ byte[] d(f0 f0Var) {
        return f35994c.M(f0Var).getBytes(Charset.forName("UTF-8"));
    }

    private static String e(String str, String str2) {
        int length = str.length() - str2.length();
        if (length < 0 || length > 1) {
            throw new IllegalArgumentException("Invalid input received");
        }
        StringBuilder sb = new StringBuilder(str.length() + str2.length());
        for (int i10 = 0; i10 < str.length(); i10++) {
            sb.append(str.charAt(i10));
            if (str2.length() > i10) {
                sb.append(str2.charAt(i10));
            }
        }
        return sb.toString();
    }

    public Task<q5.u> c(q5.u uVar, boolean z10) {
        return this.f35998a.i(uVar, z10).a();
    }
}

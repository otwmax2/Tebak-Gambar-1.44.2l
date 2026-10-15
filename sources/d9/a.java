package d9;

import ja.a0;
import ja.c0;
import ja.u;
import java.io.IOException;

/* JADX INFO: compiled from: GuestAuthInterceptor.java */
/* JADX INFO: loaded from: classes2.dex */
public class a implements u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final com.twitter.sdk.android.core.f f28768a;

    public a(com.twitter.sdk.android.core.f fVar) {
        this.f28768a = fVar;
    }

    static void a(a0.a aVar, com.twitter.sdk.android.core.internal.oauth.a aVar2) {
        aVar.d("Authorization", aVar2.t() + " " + aVar2.h());
        aVar.d("x-guest-token", aVar2.v());
    }

    @Override // ja.u
    public c0 intercept(u.a aVar) throws IOException {
        a0 a0VarF = aVar.f();
        com.twitter.sdk.android.core.e eVarB = this.f28768a.b();
        com.twitter.sdk.android.core.internal.oauth.a aVarA = eVarB == null ? null : eVarB.a();
        if (aVarA == null) {
            return aVar.e(a0VarF);
        }
        a0.a aVarG = a0VarF.g();
        a(aVarG, aVarA);
        return aVar.e(aVarG.b());
    }
}

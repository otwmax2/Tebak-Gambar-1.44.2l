package c9;

import com.twitter.sdk.android.core.a0;
import com.twitter.sdk.android.core.p;
import com.twitter.sdk.android.core.services.AccountService;
import java.io.IOException;

/* JADX INFO: compiled from: TwitterSessionVerifier.java */
/* JADX INFO: loaded from: classes2.dex */
public class k implements h<a0> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final a f4993a;

    /* JADX INFO: compiled from: TwitterSessionVerifier.java */
    protected static class a {
        protected a() {
        }

        public AccountService a(a0 a0Var) {
            return new p(a0Var).d();
        }
    }

    public k() {
        this(new a());
    }

    @Override // c9.h
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public void a(a0 a0Var) {
        AccountService accountServiceA = this.f4993a.a(a0Var);
        try {
            Boolean bool = Boolean.TRUE;
            Boolean bool2 = Boolean.FALSE;
            accountServiceA.verifyCredentials(bool, bool2, bool2).execute();
        } catch (IOException | RuntimeException unused) {
        }
    }

    k(a aVar) {
        this.f4993a = aVar;
    }
}

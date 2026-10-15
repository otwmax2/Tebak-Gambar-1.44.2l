package b9;

import android.app.Activity;
import android.content.Intent;
import com.twitter.sdk.android.core.a0;
import com.twitter.sdk.android.core.l;
import com.twitter.sdk.android.core.r;
import com.twitter.sdk.android.core.s;
import com.twitter.sdk.android.core.t;

/* JADX INFO: compiled from: AuthHandler.java */
/* JADX INFO: loaded from: classes2.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final int f4701a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final r f4702b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.twitter.sdk.android.core.c<a0> f4703c;

    a(r rVar, com.twitter.sdk.android.core.c<a0> cVar, int i10) {
        this.f4702b = rVar;
        this.f4703c = cVar;
        this.f4701a = i10;
    }

    public abstract boolean a(Activity activity);

    r b() {
        return this.f4702b;
    }

    com.twitter.sdk.android.core.c<a0> c() {
        return this.f4703c;
    }

    public boolean d(int i10, int i11, Intent intent) {
        if (this.f4701a != i10) {
            return false;
        }
        com.twitter.sdk.android.core.c<a0> cVarC = c();
        if (cVarC == null) {
            return true;
        }
        if (i11 == -1) {
            String stringExtra = intent.getStringExtra("tk");
            String stringExtra2 = intent.getStringExtra("ts");
            String stringExtra3 = intent.getStringExtra("screen_name");
            cVarC.d(new l<>(new a0(new t(stringExtra, stringExtra2), intent.getLongExtra("user_id", 0L), stringExtra3), null));
            return true;
        }
        if (intent == null || !intent.hasExtra("auth_error")) {
            cVarC.c(new s("Authorize failed."));
            return true;
        }
        cVarC.c((s) intent.getSerializableExtra("auth_error"));
        return true;
    }
}

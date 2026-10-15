package com.google.android.gms.auth.api.signin;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import com.google.android.gms.auth.api.Auth;
import com.google.android.gms.auth.api.signin.internal.zbm;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.internal.ApiExceptionMapper;
import com.google.android.gms.common.api.internal.StatusExceptionMapper;
import com.google.android.gms.common.internal.PendingResultUtil;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.tasks.Task;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth@@20.2.0 */
/* JADX INFO: loaded from: classes.dex */
public class GoogleSignInClient extends GoogleApi<GoogleSignInOptions> {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final b f6732k = new b(null);

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @VisibleForTesting
    static int f6733l = 1;

    GoogleSignInClient(Activity activity, GoogleSignInOptions googleSignInOptions) {
        super(activity, Auth.f6534c, googleSignInOptions, (StatusExceptionMapper) new ApiExceptionMapper());
    }

    private final synchronized int D() {
        int i10;
        i10 = f6733l;
        if (i10 == 1) {
            Context contextR = r();
            GoogleApiAvailability googleApiAvailabilityP = GoogleApiAvailability.p();
            int iJ = googleApiAvailabilityP.j(contextR, 12451000);
            if (iJ == 0) {
                f6733l = 4;
                i10 = 4;
            } else if (googleApiAvailabilityP.d(contextR, iJ, null) != null || DynamiteModule.a(contextR, "com.google.android.gms.auth.api.fallback") == 0) {
                f6733l = 2;
                i10 = 2;
            } else {
                f6733l = 3;
                i10 = 3;
            }
        }
        return i10;
    }

    public Task<Void> A() {
        return PendingResultUtil.b(zbm.f(g(), r(), D() == 3));
    }

    public Task<Void> B() {
        return PendingResultUtil.b(zbm.g(g(), r(), D() == 3));
    }

    public Task<GoogleSignInAccount> C() {
        return PendingResultUtil.a(zbm.e(g(), r(), q(), D() == 3), f6732k);
    }

    public Intent z() {
        Context contextR = r();
        int iD = D();
        int i10 = iD - 1;
        if (iD != 0) {
            return i10 != 2 ? i10 != 3 ? zbm.b(contextR, q()) : zbm.c(contextR, q()) : zbm.a(contextR, q());
        }
        throw null;
    }

    GoogleSignInClient(Context context, GoogleSignInOptions googleSignInOptions) {
        super(context, Auth.f6534c, googleSignInOptions, new ApiExceptionMapper());
    }
}

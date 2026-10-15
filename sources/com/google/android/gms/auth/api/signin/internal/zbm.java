package com.google.android.gms.auth.api.signin.internal;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.auth.api.signin.GoogleSignInResult;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.PendingResults;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.GoogleApiManager;
import com.google.android.gms.common.logging.Logger;
import java.util.Iterator;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth@@20.2.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zbm {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Logger f6788a = new Logger("GoogleSignInCommon", new String[0]);

    public static Intent a(Context context, GoogleSignInOptions googleSignInOptions) {
        f6788a.a("getFallbackSignInIntent()", new Object[0]);
        Intent intentC = c(context, googleSignInOptions);
        intentC.setAction("com.google.android.gms.auth.APPAUTH_SIGN_IN");
        return intentC;
    }

    public static Intent b(Context context, GoogleSignInOptions googleSignInOptions) {
        f6788a.a("getNoImplementationSignInIntent()", new Object[0]);
        Intent intentC = c(context, googleSignInOptions);
        intentC.setAction("com.google.android.gms.auth.NO_IMPL");
        return intentC;
    }

    public static Intent c(Context context, GoogleSignInOptions googleSignInOptions) {
        f6788a.a("getSignInIntent()", new Object[0]);
        SignInConfiguration signInConfiguration = new SignInConfiguration(context.getPackageName(), googleSignInOptions);
        Intent intent = new Intent("com.google.android.gms.auth.GOOGLE_SIGN_IN");
        intent.setPackage(context.getPackageName());
        intent.setClass(context, SignInHubActivity.class);
        Bundle bundle = new Bundle();
        bundle.putParcelable("config", signInConfiguration);
        intent.putExtra("config", bundle);
        return intent;
    }

    public static GoogleSignInResult d(Intent intent) {
        if (intent == null) {
            return new GoogleSignInResult(null, Status.f6975w);
        }
        Status status = (Status) intent.getParcelableExtra("googleSignInStatus");
        GoogleSignInAccount googleSignInAccount = (GoogleSignInAccount) intent.getParcelableExtra("googleSignInAccount");
        if (googleSignInAccount != null) {
            return new GoogleSignInResult(googleSignInAccount, Status.f6973u);
        }
        if (status == null) {
            status = Status.f6975w;
        }
        return new GoogleSignInResult(null, status);
    }

    /* JADX WARN: Removed duplicated region for block: B:4:0x001f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static com.google.android.gms.common.api.OptionalPendingResult e(com.google.android.gms.common.api.GoogleApiClient r6, android.content.Context r7, com.google.android.gms.auth.api.signin.GoogleSignInOptions r8, boolean r9) {
        /*
            com.google.android.gms.common.logging.Logger r0 = com.google.android.gms.auth.api.signin.internal.zbm.f6788a
            r1 = 0
            java.lang.Object[] r2 = new java.lang.Object[r1]
            java.lang.String r3 = "silentSignIn()"
            r0.a(r3, r2)
            java.lang.Object[] r2 = new java.lang.Object[r1]
            java.lang.String r3 = "getEligibleSavedSignInResult()"
            r0.a(r3, r2)
            com.google.android.gms.common.internal.Preconditions.k(r8)
            com.google.android.gms.auth.api.signin.internal.zbn r2 = com.google.android.gms.auth.api.signin.internal.zbn.c(r7)
            com.google.android.gms.auth.api.signin.GoogleSignInOptions r2 = r2.b()
            r3 = 0
            if (r2 != 0) goto L22
        L1f:
            r4 = r3
            goto L89
        L22:
            android.accounts.Account r4 = r2.l2()
            android.accounts.Account r5 = r8.l2()
            if (r4 != 0) goto L2f
            if (r5 != 0) goto L1f
            goto L36
        L2f:
            boolean r4 = r4.equals(r5)
            if (r4 != 0) goto L36
            goto L1f
        L36:
            boolean r4 = r8.b4()
            if (r4 == 0) goto L3d
            goto L1f
        L3d:
            boolean r4 = r8.a4()
            if (r4 == 0) goto L59
            boolean r4 = r2.a4()
            if (r4 != 0) goto L4a
            goto L1f
        L4a:
            java.lang.String r4 = r8.Y3()
            java.lang.String r5 = r2.Y3()
            boolean r4 = com.google.android.gms.common.internal.Objects.b(r4, r5)
            if (r4 != 0) goto L59
            goto L1f
        L59:
            java.util.HashSet r4 = new java.util.HashSet
            java.util.ArrayList r2 = r2.X3()
            r4.<init>(r2)
            java.util.HashSet r2 = new java.util.HashSet
            java.util.ArrayList r5 = r8.X3()
            r2.<init>(r5)
            boolean r2 = r4.containsAll(r2)
            if (r2 != 0) goto L72
            goto L1f
        L72:
            com.google.android.gms.auth.api.signin.internal.zbn r2 = com.google.android.gms.auth.api.signin.internal.zbn.c(r7)
            com.google.android.gms.auth.api.signin.GoogleSignInAccount r2 = r2.a()
            if (r2 == 0) goto L1f
            boolean r4 = r2.e4()
            if (r4 != 0) goto L1f
            com.google.android.gms.auth.api.signin.GoogleSignInResult r4 = new com.google.android.gms.auth.api.signin.GoogleSignInResult
            com.google.android.gms.common.api.Status r5 = com.google.android.gms.common.api.Status.f6973u
            r4.<init>(r2, r5)
        L89:
            if (r4 == 0) goto L97
            java.lang.Object[] r7 = new java.lang.Object[r1]
            java.lang.String r8 = "Eligible saved sign in result found"
            r0.a(r8, r7)
            com.google.android.gms.common.api.OptionalPendingResult r6 = com.google.android.gms.common.api.PendingResults.b(r4, r6)
            return r6
        L97:
            if (r9 == 0) goto La9
            com.google.android.gms.auth.api.signin.GoogleSignInResult r7 = new com.google.android.gms.auth.api.signin.GoogleSignInResult
            com.google.android.gms.common.api.Status r8 = new com.google.android.gms.common.api.Status
            r9 = 4
            r8.<init>(r9)
            r7.<init>(r3, r8)
            com.google.android.gms.common.api.OptionalPendingResult r6 = com.google.android.gms.common.api.PendingResults.b(r7, r6)
            return r6
        La9:
            java.lang.Object[] r9 = new java.lang.Object[r1]
            java.lang.String r1 = "trySilentSignIn()"
            r0.a(r1, r9)
            com.google.android.gms.auth.api.signin.internal.b r9 = new com.google.android.gms.auth.api.signin.internal.b
            r9.<init>(r6, r7, r8)
            com.google.android.gms.common.api.internal.BaseImplementation$ApiMethodImpl r6 = r6.g(r9)
            com.google.android.gms.common.api.internal.OptionalPendingResultImpl r7 = new com.google.android.gms.common.api.internal.OptionalPendingResultImpl
            r7.<init>(r6)
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.auth.api.signin.internal.zbm.e(com.google.android.gms.common.api.GoogleApiClient, android.content.Context, com.google.android.gms.auth.api.signin.GoogleSignInOptions, boolean):com.google.android.gms.common.api.OptionalPendingResult");
    }

    public static PendingResult f(GoogleApiClient googleApiClient, Context context, boolean z10) {
        f6788a.a("Revoking access", new Object[0]);
        String strE = Storage.b(context).e();
        h(context);
        return z10 ? zbb.a(strE) : googleApiClient.h(new f(googleApiClient));
    }

    public static PendingResult g(GoogleApiClient googleApiClient, Context context, boolean z10) {
        f6788a.a("Signing out", new Object[0]);
        h(context);
        return z10 ? PendingResults.c(Status.f6973u, googleApiClient) : googleApiClient.h(new d(googleApiClient));
    }

    private static void h(Context context) {
        zbn.c(context).d();
        Iterator<GoogleApiClient> it = GoogleApiClient.i().iterator();
        while (it.hasNext()) {
            it.next().l();
        }
        GoogleApiManager.a();
    }
}

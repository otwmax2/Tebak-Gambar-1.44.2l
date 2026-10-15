package com.google.android.gms.auth.api.signin;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.auth.api.signin.internal.zbm;
import com.google.android.gms.auth.api.signin.internal.zbn;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.ApiExceptionUtil;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import java.util.Collections;
import java.util.HashSet;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth@@20.2.0 */
/* JADX INFO: loaded from: classes.dex */
public final class GoogleSignIn {
    private GoogleSignIn() {
    }

    public static GoogleSignInClient a(Context context, GoogleSignInOptions googleSignInOptions) {
        return new GoogleSignInClient(context, (GoogleSignInOptions) Preconditions.k(googleSignInOptions));
    }

    public static GoogleSignInAccount b(Context context) {
        return zbn.c(context).a();
    }

    public static Task<GoogleSignInAccount> c(Intent intent) {
        GoogleSignInResult googleSignInResultD = zbm.d(intent);
        GoogleSignInAccount googleSignInAccountA = googleSignInResultD.a();
        return (!googleSignInResultD.V2().a4() || googleSignInAccountA == null) ? Tasks.d(ApiExceptionUtil.a(googleSignInResultD.V2())) : Tasks.e(googleSignInAccountA);
    }

    public static boolean d(GoogleSignInAccount googleSignInAccount, Scope... scopeArr) {
        if (googleSignInAccount == null) {
            return false;
        }
        HashSet hashSet = new HashSet();
        Collections.addAll(hashSet, scopeArr);
        return googleSignInAccount.Y3().containsAll(hashSet);
    }

    public static void e(Activity activity, int i10, GoogleSignInAccount googleSignInAccount, Scope... scopeArr) {
        Preconditions.l(activity, "Please provide a non-null Activity");
        Preconditions.l(scopeArr, "Please provide at least one scope");
        activity.startActivityForResult(f(activity, googleSignInAccount, scopeArr), i10);
    }

    private static Intent f(Activity activity, GoogleSignInAccount googleSignInAccount, Scope... scopeArr) {
        GoogleSignInOptions.Builder builder = new GoogleSignInOptions.Builder();
        if (scopeArr.length > 0) {
            builder.f(scopeArr[0], scopeArr);
        }
        if (googleSignInAccount != null && !TextUtils.isEmpty(googleSignInAccount.V3())) {
            builder.g((String) Preconditions.k(googleSignInAccount.V3()));
        }
        return new GoogleSignInClient(activity, builder.a()).z();
    }
}

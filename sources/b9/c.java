package b9;

import android.app.Activity;
import android.content.Intent;
import com.twitter.sdk.android.core.a0;
import com.twitter.sdk.android.core.identity.OAuthActivity;
import com.twitter.sdk.android.core.r;

/* JADX INFO: compiled from: OAuthHandler.java */
/* JADX INFO: loaded from: classes2.dex */
class c extends a {
    c(r rVar, com.twitter.sdk.android.core.c<a0> cVar, int i10) {
        super(rVar, cVar, i10);
    }

    @Override // b9.a
    public boolean a(Activity activity) {
        activity.startActivityForResult(e(activity), this.f4701a);
        return true;
    }

    Intent e(Activity activity) {
        Intent intent = new Intent(activity, (Class<?>) OAuthActivity.class);
        intent.putExtra("auth_config", b());
        return intent;
    }
}

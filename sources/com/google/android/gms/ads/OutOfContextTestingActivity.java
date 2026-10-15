package com.google.android.gms.ads;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.RemoteException;
import android.widget.LinearLayout;
import com.google.android.gms.ads.internal.client.zzay;
import com.google.android.gms.ads.internal.client.zzdj;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzbnc;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
@KeepForSdk
public final class OutOfContextTestingActivity extends Activity {
    @Override // android.app.Activity
    protected final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        zzdj zzdjVarF = zzay.a().f(this, new zzbnc());
        if (zzdjVarF == null) {
            finish();
            return;
        }
        setContentView(R.layout.f5606a);
        LinearLayout linearLayout = (LinearLayout) findViewById(R.id.f5605a);
        Intent intent = getIntent();
        if (intent == null) {
            finish();
            return;
        }
        String stringExtra = intent.getStringExtra("adUnit");
        if (stringExtra == null) {
            finish();
            return;
        }
        try {
            zzdjVarF.x7(stringExtra, ObjectWrapper.Q4(this), ObjectWrapper.Q4(linearLayout));
        } catch (RemoteException unused) {
            finish();
        }
    }
}

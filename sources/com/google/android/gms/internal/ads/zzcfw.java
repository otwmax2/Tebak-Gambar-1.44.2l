package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.MutableContextWrapper;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzcfw extends MutableContextWrapper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Activity f12122a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f12123b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Context f12124c;

    public zzcfw(Context context) {
        super(context);
        setBaseContext(context);
    }

    public final Activity a() {
        return this.f12122a;
    }

    public final Context b() {
        return this.f12124c;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final Object getSystemService(String str) {
        return this.f12124c.getSystemService(str);
    }

    @Override // android.content.MutableContextWrapper
    public final void setBaseContext(Context context) {
        Context applicationContext = context.getApplicationContext();
        this.f12123b = applicationContext;
        this.f12122a = context instanceof Activity ? (Activity) context : null;
        this.f12124c = context;
        super.setBaseContext(applicationContext);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final void startActivity(Intent intent) {
        Activity activity = this.f12122a;
        if (activity != null) {
            activity.startActivity(intent);
        } else {
            intent.setFlags(268435456);
            this.f12123b.startActivity(intent);
        }
    }
}

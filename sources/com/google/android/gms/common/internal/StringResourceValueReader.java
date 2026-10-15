package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.res.Resources;
import com.google.android.gms.common.R;
import com.google.android.gms.common.annotation.KeepForSdk;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.1.0 */
/* JADX INFO: loaded from: classes.dex */
@KeepForSdk
public class StringResourceValueReader {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Resources f7428a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f7429b;

    public StringResourceValueReader(Context context) {
        Preconditions.k(context);
        Resources resources = context.getResources();
        this.f7428a = resources;
        this.f7429b = resources.getResourcePackageName(R.string.f6929a);
    }

    @KeepForSdk
    public String a(String str) {
        int identifier = this.f7428a.getIdentifier(str, "string", this.f7429b);
        if (identifier == 0) {
            return null;
        }
        return this.f7428a.getString(identifier);
    }
}

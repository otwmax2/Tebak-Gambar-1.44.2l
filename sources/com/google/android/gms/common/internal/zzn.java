package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.1.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzn {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final Uri f7522f = new Uri.Builder().scheme("content").authority("com.google.android.gms.chimera").build();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f7523a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f7524b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ComponentName f7525c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f7526d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final boolean f7527e;

    public zzn(String str, String str2, int i10, boolean z10) {
        Preconditions.g(str);
        this.f7523a = str;
        Preconditions.g(str2);
        this.f7524b = str2;
        this.f7525c = null;
        this.f7526d = i10;
        this.f7527e = z10;
    }

    public final int a() {
        return this.f7526d;
    }

    public final ComponentName b() {
        return this.f7525c;
    }

    public final Intent c(Context context) {
        Bundle bundleCall;
        if (this.f7523a == null) {
            return new Intent().setComponent(this.f7525c);
        }
        if (this.f7527e) {
            Bundle bundle = new Bundle();
            bundle.putString("serviceActionBundleKey", this.f7523a);
            try {
                bundleCall = context.getContentResolver().call(f7522f, "serviceIntentCall", (String) null, bundle);
            } catch (IllegalArgumentException e10) {
                Log.w("ConnectionStatusConfig", "Dynamic intent resolution failed: ".concat(e10.toString()));
                bundleCall = null;
            }
            intent = bundleCall != null ? (Intent) bundleCall.getParcelable("serviceResponseIntentKey") : null;
            if (intent == null) {
                Log.w("ConnectionStatusConfig", "Dynamic lookup for intent failed for action: ".concat(String.valueOf(this.f7523a)));
            }
        }
        return intent != null ? intent : new Intent(this.f7523a).setPackage(this.f7524b);
    }

    public final String d() {
        return this.f7524b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzn)) {
            return false;
        }
        zzn zznVar = (zzn) obj;
        return Objects.b(this.f7523a, zznVar.f7523a) && Objects.b(this.f7524b, zznVar.f7524b) && Objects.b(this.f7525c, zznVar.f7525c) && this.f7526d == zznVar.f7526d && this.f7527e == zznVar.f7527e;
    }

    public final int hashCode() {
        return Objects.c(this.f7523a, this.f7524b, this.f7525c, Integer.valueOf(this.f7526d), Boolean.valueOf(this.f7527e));
    }

    public final String toString() {
        String str = this.f7523a;
        if (str != null) {
            return str;
        }
        Preconditions.k(this.f7525c);
        return this.f7525c.flattenToString();
    }
}

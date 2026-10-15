package com.google.android.gms.measurement.internal;

import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.facebook.share.internal.ShareConstants;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzr {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzgi f24891a;

    public zzr(zzgi zzgiVar) {
        this.f24891a = zzgiVar;
    }

    final void a(String str, Bundle bundle) {
        String string;
        this.f24891a.B().c();
        if (this.f24891a.j()) {
            return;
        }
        if (bundle.isEmpty()) {
            string = null;
        } else {
            if (true == str.isEmpty()) {
                str = "auto";
            }
            Uri.Builder builder = new Uri.Builder();
            builder.path(str);
            for (String str2 : bundle.keySet()) {
                builder.appendQueryParameter(str2, bundle.getString(str2));
            }
            string = builder.build().toString();
        }
        if (TextUtils.isEmpty(string)) {
            return;
        }
        this.f24891a.D().f24376u.b(string);
        this.f24891a.D().f24377v.b(this.f24891a.x().a());
    }

    final void b() {
        this.f24891a.B().c();
        if (d()) {
            if (e()) {
                this.f24891a.D().f24376u.b(null);
                Bundle bundle = new Bundle();
                bundle.putString(ShareConstants.FEED_SOURCE_PARAM, "(not set)");
                bundle.putString("medium", "(not set)");
                bundle.putString("_cis", SDKConstants.PARAM_INTENT);
                bundle.putLong("_cc", 1L);
                this.f24891a.G().q("auto", "_cmpx", bundle);
            } else {
                String strA = this.f24891a.D().f24376u.a();
                if (TextUtils.isEmpty(strA)) {
                    this.f24891a.U().o().a("Cache still valid but referrer not found");
                } else {
                    long jA = ((this.f24891a.D().f24377v.a() / 3600000) - 1) * 3600000;
                    Uri uri = Uri.parse(strA);
                    Bundle bundle2 = new Bundle();
                    Pair pair = new Pair(uri.getPath(), bundle2);
                    for (String str : uri.getQueryParameterNames()) {
                        bundle2.putString(str, uri.getQueryParameter(str));
                    }
                    ((Bundle) pair.second).putLong("_cc", jA);
                    Object obj = pair.first;
                    this.f24891a.G().q(obj == null ? "app" : (String) obj, "_cmp", (Bundle) pair.second);
                }
                this.f24891a.D().f24376u.b(null);
            }
            this.f24891a.D().f24377v.b(0L);
        }
    }

    final void c() {
        if (d() && e()) {
            this.f24891a.D().f24376u.b(null);
        }
    }

    final boolean d() {
        return this.f24891a.D().f24377v.a() > 0;
    }

    final boolean e() {
        return d() && this.f24891a.x().a() - this.f24891a.D().f24377v.a() > this.f24891a.v().m(null, zzel.S);
    }
}

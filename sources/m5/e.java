package m5;

import android.os.Bundle;
import com.facebook.internal.NativeProtocol;
import e5.a;
import java.util.Locale;
import n5.g;

/* JADX INFO: compiled from: CrashlyticsAnalyticsListener.java */
/* JADX INFO: loaded from: classes2.dex */
class e implements a.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private o5.b f32177a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private o5.b f32178b;

    e() {
    }

    private static void b(o5.b bVar, String str, Bundle bundle) {
        if (bVar == null) {
            return;
        }
        bVar.s1(str, bundle);
    }

    private void c(String str, Bundle bundle) {
        b("clx".equals(bundle.getString("_o")) ? this.f32177a : this.f32178b, str, bundle);
    }

    @Override // e5.a.b
    public void a(int i10, Bundle bundle) {
        String string;
        g.f().i(String.format(Locale.US, "Analytics listener received message. ID: %d, Extras: %s", Integer.valueOf(i10), bundle));
        if (bundle == null || (string = bundle.getString("name")) == null) {
            return;
        }
        Bundle bundle2 = bundle.getBundle(NativeProtocol.WEB_DIALOG_PARAMS);
        if (bundle2 == null) {
            bundle2 = new Bundle();
        }
        c(string, bundle2);
    }

    public void d(o5.b bVar) {
        this.f32178b = bVar;
    }

    public void e(o5.b bVar) {
        this.f32177a = bVar;
    }
}

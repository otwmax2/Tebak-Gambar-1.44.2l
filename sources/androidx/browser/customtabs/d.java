package androidx.browser.customtabs;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.util.SparseArray;
import androidx.browser.customtabs.a;
import java.util.ArrayList;

/* JADX INFO: compiled from: CustomTabsIntent.java */
/* JADX INFO: loaded from: classes.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Intent f1276a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Bundle f1277b;

    d(Intent intent, Bundle bundle) {
        this.f1276a = intent;
        this.f1277b = bundle;
    }

    public void a(Context context, Uri uri) {
        this.f1276a.setData(uri);
        androidx.core.content.a.l(context, this.f1276a, this.f1277b);
    }

    /* JADX INFO: compiled from: CustomTabsIntent.java */
    public static final class a {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private ArrayList<Bundle> f1280c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private Bundle f1281d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private ArrayList<Bundle> f1282e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private SparseArray<Bundle> f1283f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private Bundle f1284g;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Intent f1278a = new Intent("android.intent.action.VIEW");

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final a.C0016a f1279b = new a.C0016a();

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private int f1285h = 0;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private boolean f1286i = true;

        public a() {
        }

        private void c(IBinder iBinder, PendingIntent pendingIntent) {
            Bundle bundle = new Bundle();
            androidx.core.app.f.b(bundle, "android.support.customtabs.extra.SESSION", iBinder);
            if (pendingIntent != null) {
                bundle.putParcelable("android.support.customtabs.extra.SESSION_ID", pendingIntent);
            }
            this.f1278a.putExtras(bundle);
        }

        public d a() {
            if (!this.f1278a.hasExtra("android.support.customtabs.extra.SESSION")) {
                c(null, null);
            }
            ArrayList<Bundle> arrayList = this.f1280c;
            if (arrayList != null) {
                this.f1278a.putParcelableArrayListExtra("android.support.customtabs.extra.MENU_ITEMS", arrayList);
            }
            ArrayList<Bundle> arrayList2 = this.f1282e;
            if (arrayList2 != null) {
                this.f1278a.putParcelableArrayListExtra("android.support.customtabs.extra.TOOLBAR_ITEMS", arrayList2);
            }
            this.f1278a.putExtra("android.support.customtabs.extra.EXTRA_ENABLE_INSTANT_APPS", this.f1286i);
            this.f1278a.putExtras(this.f1279b.a().a());
            Bundle bundle = this.f1284g;
            if (bundle != null) {
                this.f1278a.putExtras(bundle);
            }
            if (this.f1283f != null) {
                Bundle bundle2 = new Bundle();
                bundle2.putSparseParcelableArray("androidx.browser.customtabs.extra.COLOR_SCHEME_PARAMS", this.f1283f);
                this.f1278a.putExtras(bundle2);
            }
            this.f1278a.putExtra("androidx.browser.customtabs.extra.SHARE_STATE", this.f1285h);
            return new d(this.f1278a, this.f1281d);
        }

        public a b(f fVar) {
            this.f1278a.setPackage(fVar.d().getPackageName());
            c(fVar.c(), fVar.e());
            return this;
        }

        @Deprecated
        public a d(int i10) {
            this.f1279b.b(i10);
            return this;
        }

        public a(f fVar) {
            if (fVar != null) {
                b(fVar);
            }
        }
    }
}

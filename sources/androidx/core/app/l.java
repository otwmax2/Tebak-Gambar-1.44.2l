package androidx.core.app;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.Icon;
import android.media.AudioAttributes;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.widget.RemoteViews;
import androidx.core.graphics.drawable.IconCompat;
import com.vungle.mediation.BuildConfig;
import java.util.ArrayList;

/* JADX INFO: compiled from: NotificationCompat.java */
/* JADX INFO: loaded from: classes.dex */
public class l {

    /* JADX INFO: compiled from: NotificationCompat.java */
    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final Bundle f2028a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private IconCompat f2029b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final r[] f2030c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final r[] f2031d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private boolean f2032e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        boolean f2033f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final int f2034g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private final boolean f2035h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        @Deprecated
        public int f2036i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public CharSequence f2037j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public PendingIntent f2038k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private boolean f2039l;

        public a(int i10, CharSequence charSequence, PendingIntent pendingIntent) {
            this(i10 != 0 ? IconCompat.h(null, BuildConfig.FLAVOR, i10) : null, charSequence, pendingIntent);
        }

        public PendingIntent a() {
            return this.f2038k;
        }

        public boolean b() {
            return this.f2032e;
        }

        public r[] c() {
            return this.f2031d;
        }

        public Bundle d() {
            return this.f2028a;
        }

        public IconCompat e() {
            int i10;
            if (this.f2029b == null && (i10 = this.f2036i) != 0) {
                this.f2029b = IconCompat.h(null, BuildConfig.FLAVOR, i10);
            }
            return this.f2029b;
        }

        public r[] f() {
            return this.f2030c;
        }

        public int g() {
            return this.f2034g;
        }

        public boolean h() {
            return this.f2033f;
        }

        public CharSequence i() {
            return this.f2037j;
        }

        public boolean j() {
            return this.f2039l;
        }

        public boolean k() {
            return this.f2035h;
        }

        public a(IconCompat iconCompat, CharSequence charSequence, PendingIntent pendingIntent) {
            this(iconCompat, charSequence, pendingIntent, new Bundle(), null, null, true, 0, true, false, false);
        }

        a(IconCompat iconCompat, CharSequence charSequence, PendingIntent pendingIntent, Bundle bundle, r[] rVarArr, r[] rVarArr2, boolean z10, int i10, boolean z11, boolean z12, boolean z13) {
            this.f2033f = true;
            this.f2029b = iconCompat;
            if (iconCompat != null && iconCompat.l() == 2) {
                this.f2036i = iconCompat.j();
            }
            this.f2037j = e.d(charSequence);
            this.f2038k = pendingIntent;
            this.f2028a = bundle == null ? new Bundle() : bundle;
            this.f2030c = rVarArr;
            this.f2031d = rVarArr2;
            this.f2032e = z10;
            this.f2034g = i10;
            this.f2033f = z11;
            this.f2035h = z12;
            this.f2039l = z13;
        }
    }

    /* JADX INFO: compiled from: NotificationCompat.java */
    public static class b extends f {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private Bitmap f2040e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private IconCompat f2041f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private boolean f2042g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private CharSequence f2043h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private boolean f2044i;

        /* JADX INFO: compiled from: NotificationCompat.java */
        private static class a {
            static void a(Notification.BigPictureStyle bigPictureStyle, Bitmap bitmap) {
                bigPictureStyle.bigLargeIcon(bitmap);
            }

            static void b(Notification.BigPictureStyle bigPictureStyle, CharSequence charSequence) {
                bigPictureStyle.setSummaryText(charSequence);
            }
        }

        /* JADX INFO: renamed from: androidx.core.app.l$b$b, reason: collision with other inner class name */
        /* JADX INFO: compiled from: NotificationCompat.java */
        private static class C0026b {
            static void a(Notification.BigPictureStyle bigPictureStyle, Icon icon) {
                bigPictureStyle.bigLargeIcon(icon);
            }
        }

        /* JADX INFO: compiled from: NotificationCompat.java */
        private static class c {
            static void a(Notification.BigPictureStyle bigPictureStyle, CharSequence charSequence) {
                bigPictureStyle.setContentDescription(charSequence);
            }

            static void b(Notification.BigPictureStyle bigPictureStyle, boolean z10) {
                bigPictureStyle.showBigPictureWhenCollapsed(z10);
            }
        }

        @Override // androidx.core.app.l.f
        public void b(k kVar) {
            int i10 = Build.VERSION.SDK_INT;
            if (i10 >= 16) {
                Notification.BigPictureStyle bigPictureStyleBigPicture = new Notification.BigPictureStyle(kVar.a()).setBigContentTitle(this.f2073b).bigPicture(this.f2040e);
                if (this.f2042g) {
                    IconCompat iconCompat = this.f2041f;
                    if (iconCompat == null) {
                        a.a(bigPictureStyleBigPicture, null);
                    } else if (i10 >= 23) {
                        C0026b.a(bigPictureStyleBigPicture, this.f2041f.r(kVar instanceof m ? ((m) kVar).f() : null));
                    } else if (iconCompat.l() == 1) {
                        a.a(bigPictureStyleBigPicture, this.f2041f.i());
                    } else {
                        a.a(bigPictureStyleBigPicture, null);
                    }
                }
                if (this.f2075d) {
                    a.b(bigPictureStyleBigPicture, this.f2074c);
                }
                if (i10 >= 31) {
                    c.b(bigPictureStyleBigPicture, this.f2044i);
                    c.a(bigPictureStyleBigPicture, this.f2043h);
                }
            }
        }

        @Override // androidx.core.app.l.f
        protected String c() {
            return "androidx.core.app.NotificationCompat$BigPictureStyle";
        }

        public b h(Bitmap bitmap) {
            this.f2041f = bitmap == null ? null : IconCompat.e(bitmap);
            this.f2042g = true;
            return this;
        }

        public b i(Bitmap bitmap) {
            this.f2040e = bitmap;
            return this;
        }
    }

    /* JADX INFO: compiled from: NotificationCompat.java */
    public static class c extends f {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private CharSequence f2045e;

        @Override // androidx.core.app.l.f
        public void a(Bundle bundle) {
            super.a(bundle);
            if (Build.VERSION.SDK_INT < 21) {
                bundle.putCharSequence("android.bigText", this.f2045e);
            }
        }

        @Override // androidx.core.app.l.f
        public void b(k kVar) {
            if (Build.VERSION.SDK_INT >= 16) {
                Notification.BigTextStyle bigTextStyleBigText = new Notification.BigTextStyle(kVar.a()).setBigContentTitle(this.f2073b).bigText(this.f2045e);
                if (this.f2075d) {
                    bigTextStyleBigText.setSummaryText(this.f2074c);
                }
            }
        }

        @Override // androidx.core.app.l.f
        protected String c() {
            return "androidx.core.app.NotificationCompat$BigTextStyle";
        }

        public c h(CharSequence charSequence) {
            this.f2045e = e.d(charSequence);
            return this;
        }
    }

    /* JADX INFO: compiled from: NotificationCompat.java */
    public static final class d {
        public static Notification.BubbleMetadata a(d dVar) {
            return null;
        }
    }

    /* JADX INFO: compiled from: NotificationCompat.java */
    public static abstract class f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        protected e f2072a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        CharSequence f2073b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        CharSequence f2074c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        boolean f2075d = false;

        public void a(Bundle bundle) {
            if (this.f2075d) {
                bundle.putCharSequence("android.summaryText", this.f2074c);
            }
            CharSequence charSequence = this.f2073b;
            if (charSequence != null) {
                bundle.putCharSequence("android.title.big", charSequence);
            }
            String strC = c();
            if (strC != null) {
                bundle.putString("androidx.core.app.extra.COMPAT_TEMPLATE", strC);
            }
        }

        public abstract void b(k kVar);

        protected abstract String c();

        public RemoteViews d(k kVar) {
            return null;
        }

        public RemoteViews e(k kVar) {
            return null;
        }

        public RemoteViews f(k kVar) {
            return null;
        }

        public void g(e eVar) {
            if (this.f2072a != eVar) {
                this.f2072a = eVar;
                if (eVar != null) {
                    eVar.y(this);
                }
            }
        }
    }

    public static Bundle a(Notification notification) {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 19) {
            return notification.extras;
        }
        if (i10 >= 16) {
            return n.c(notification);
        }
        return null;
    }

    /* JADX INFO: compiled from: NotificationCompat.java */
    public static class e {
        boolean A;
        boolean B;
        String C;
        Bundle D;
        int E;
        int F;
        Notification G;
        RemoteViews H;
        RemoteViews I;
        RemoteViews J;
        String K;
        int L;
        String M;
        long N;
        int O;
        int P;
        boolean Q;
        d R;
        Notification S;
        boolean T;
        Icon U;

        @Deprecated
        public ArrayList<String> V;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Context f2046a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public ArrayList<a> f2047b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public ArrayList<p> f2048c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        ArrayList<a> f2049d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        CharSequence f2050e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        CharSequence f2051f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        PendingIntent f2052g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        PendingIntent f2053h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        RemoteViews f2054i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        Bitmap f2055j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        CharSequence f2056k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        int f2057l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        int f2058m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        boolean f2059n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        boolean f2060o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        f f2061p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        CharSequence f2062q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        CharSequence f2063r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        CharSequence[] f2064s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        int f2065t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        int f2066u;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        boolean f2067v;

        /* JADX INFO: renamed from: w, reason: collision with root package name */
        String f2068w;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        boolean f2069x;

        /* JADX INFO: renamed from: y, reason: collision with root package name */
        String f2070y;

        /* JADX INFO: renamed from: z, reason: collision with root package name */
        boolean f2071z;

        public e(Context context, String str) {
            this.f2047b = new ArrayList<>();
            this.f2048c = new ArrayList<>();
            this.f2049d = new ArrayList<>();
            this.f2059n = true;
            this.f2071z = false;
            this.E = 0;
            this.F = 0;
            this.L = 0;
            this.O = 0;
            this.P = 0;
            Notification notification = new Notification();
            this.S = notification;
            this.f2046a = context;
            this.K = str;
            notification.when = System.currentTimeMillis();
            this.S.audioStreamType = -1;
            this.f2058m = 0;
            this.V = new ArrayList<>();
            this.Q = true;
        }

        protected static CharSequence d(CharSequence charSequence) {
            return (charSequence != null && charSequence.length() > 5120) ? charSequence.subSequence(0, 5120) : charSequence;
        }

        private Bitmap e(Bitmap bitmap) {
            if (bitmap == null || Build.VERSION.SDK_INT >= 27) {
                return bitmap;
            }
            Resources resources = this.f2046a.getResources();
            int dimensionPixelSize = resources.getDimensionPixelSize(w.b.f35868b);
            int dimensionPixelSize2 = resources.getDimensionPixelSize(w.b.f35867a);
            if (bitmap.getWidth() <= dimensionPixelSize && bitmap.getHeight() <= dimensionPixelSize2) {
                return bitmap;
            }
            double d10 = dimensionPixelSize;
            double dMax = Math.max(1, bitmap.getWidth());
            Double.isNaN(d10);
            Double.isNaN(dMax);
            double d11 = d10 / dMax;
            double d12 = dimensionPixelSize2;
            double dMax2 = Math.max(1, bitmap.getHeight());
            Double.isNaN(d12);
            Double.isNaN(dMax2);
            double dMin = Math.min(d11, d12 / dMax2);
            double width = bitmap.getWidth();
            Double.isNaN(width);
            int iCeil = (int) Math.ceil(width * dMin);
            double height = bitmap.getHeight();
            Double.isNaN(height);
            return Bitmap.createScaledBitmap(bitmap, iCeil, (int) Math.ceil(height * dMin), true);
        }

        private void n(int i10, boolean z10) {
            if (z10) {
                Notification notification = this.S;
                notification.flags = i10 | notification.flags;
            } else {
                Notification notification2 = this.S;
                notification2.flags = (i10 ^ (-1)) & notification2.flags;
            }
        }

        public e A(long[] jArr) {
            this.S.vibrate = jArr;
            return this;
        }

        public e B(int i10) {
            this.F = i10;
            return this;
        }

        public e C(long j10) {
            this.S.when = j10;
            return this;
        }

        public e a(int i10, CharSequence charSequence, PendingIntent pendingIntent) {
            this.f2047b.add(new a(i10, charSequence, pendingIntent));
            return this;
        }

        public Notification b() {
            return new m(this).c();
        }

        public Bundle c() {
            if (this.D == null) {
                this.D = new Bundle();
            }
            return this.D;
        }

        public e f(boolean z10) {
            n(16, z10);
            return this;
        }

        public e g(String str) {
            this.K = str;
            return this;
        }

        public e h(int i10) {
            this.E = i10;
            return this;
        }

        public e i(PendingIntent pendingIntent) {
            this.f2052g = pendingIntent;
            return this;
        }

        public e j(CharSequence charSequence) {
            this.f2051f = d(charSequence);
            return this;
        }

        public e k(CharSequence charSequence) {
            this.f2050e = d(charSequence);
            return this;
        }

        public e l(int i10) {
            Notification notification = this.S;
            notification.defaults = i10;
            if ((i10 & 4) != 0) {
                notification.flags |= 1;
            }
            return this;
        }

        public e m(PendingIntent pendingIntent) {
            this.S.deleteIntent = pendingIntent;
            return this;
        }

        public e o(Bitmap bitmap) {
            this.f2055j = e(bitmap);
            return this;
        }

        public e p(int i10, int i11, int i12) {
            Notification notification = this.S;
            notification.ledARGB = i10;
            notification.ledOnMS = i11;
            notification.ledOffMS = i12;
            notification.flags = ((i11 == 0 || i12 == 0) ? 0 : 1) | (notification.flags & (-2));
            return this;
        }

        public e q(boolean z10) {
            this.f2071z = z10;
            return this;
        }

        public e r(int i10) {
            this.f2057l = i10;
            return this;
        }

        public e s(boolean z10) {
            n(2, z10);
            return this;
        }

        public e t(int i10) {
            this.f2058m = i10;
            return this;
        }

        public e u(int i10, int i11, boolean z10) {
            this.f2065t = i10;
            this.f2066u = i11;
            this.f2067v = z10;
            return this;
        }

        public e v(boolean z10) {
            this.f2059n = z10;
            return this;
        }

        public e w(int i10) {
            this.S.icon = i10;
            return this;
        }

        public e x(Uri uri) {
            Notification notification = this.S;
            notification.sound = uri;
            notification.audioStreamType = -1;
            if (Build.VERSION.SDK_INT >= 21) {
                notification.audioAttributes = new AudioAttributes.Builder().setContentType(4).setUsage(5).build();
            }
            return this;
        }

        public e y(f fVar) {
            if (this.f2061p != fVar) {
                this.f2061p = fVar;
                if (fVar != null) {
                    fVar.g(this);
                }
            }
            return this;
        }

        public e z(CharSequence charSequence) {
            this.S.tickerText = d(charSequence);
            return this;
        }

        @Deprecated
        public e(Context context) {
            this(context, null);
        }
    }
}

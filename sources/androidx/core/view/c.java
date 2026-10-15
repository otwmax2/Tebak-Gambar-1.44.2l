package androidx.core.view;

import android.content.ClipData;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.view.ContentInfo;
import com.facebook.share.internal.ShareConstants;
import com.vungle.mediation.BuildConfig;
import java.util.Objects;

/* JADX INFO: compiled from: ContentInfoCompat.java */
/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final f f2460a;

    /* JADX INFO: compiled from: ContentInfoCompat.java */
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final InterfaceC0042c f2461a;

        public a(ClipData clipData, int i10) {
            if (Build.VERSION.SDK_INT >= 31) {
                this.f2461a = new b(clipData, i10);
            } else {
                this.f2461a = new d(clipData, i10);
            }
        }

        public c a() {
            return this.f2461a.build();
        }

        public a b(Bundle bundle) {
            this.f2461a.setExtras(bundle);
            return this;
        }

        public a c(int i10) {
            this.f2461a.b(i10);
            return this;
        }

        public a d(Uri uri) {
            this.f2461a.a(uri);
            return this;
        }
    }

    /* JADX INFO: compiled from: ContentInfoCompat.java */
    private static final class b implements InterfaceC0042c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final ContentInfo.Builder f2462a;

        b(ClipData clipData, int i10) {
            this.f2462a = new ContentInfo.Builder(clipData, i10);
        }

        @Override // androidx.core.view.c.InterfaceC0042c
        public void a(Uri uri) {
            this.f2462a.setLinkUri(uri);
        }

        @Override // androidx.core.view.c.InterfaceC0042c
        public void b(int i10) {
            this.f2462a.setFlags(i10);
        }

        @Override // androidx.core.view.c.InterfaceC0042c
        public c build() {
            return new c(new e(this.f2462a.build()));
        }

        @Override // androidx.core.view.c.InterfaceC0042c
        public void setExtras(Bundle bundle) {
            this.f2462a.setExtras(bundle);
        }
    }

    /* JADX INFO: renamed from: androidx.core.view.c$c, reason: collision with other inner class name */
    /* JADX INFO: compiled from: ContentInfoCompat.java */
    private interface InterfaceC0042c {
        void a(Uri uri);

        void b(int i10);

        c build();

        void setExtras(Bundle bundle);
    }

    /* JADX INFO: compiled from: ContentInfoCompat.java */
    private static final class d implements InterfaceC0042c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        ClipData f2463a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f2464b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f2465c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        Uri f2466d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        Bundle f2467e;

        d(ClipData clipData, int i10) {
            this.f2463a = clipData;
            this.f2464b = i10;
        }

        @Override // androidx.core.view.c.InterfaceC0042c
        public void a(Uri uri) {
            this.f2466d = uri;
        }

        @Override // androidx.core.view.c.InterfaceC0042c
        public void b(int i10) {
            this.f2465c = i10;
        }

        @Override // androidx.core.view.c.InterfaceC0042c
        public c build() {
            return new c(new g(this));
        }

        @Override // androidx.core.view.c.InterfaceC0042c
        public void setExtras(Bundle bundle) {
            this.f2467e = bundle;
        }
    }

    /* JADX INFO: compiled from: ContentInfoCompat.java */
    private static final class e implements f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final ContentInfo f2468a;

        e(ContentInfo contentInfo) {
            this.f2468a = (ContentInfo) androidx.core.util.h.f(contentInfo);
        }

        @Override // androidx.core.view.c.f
        public ClipData a() {
            return this.f2468a.getClip();
        }

        @Override // androidx.core.view.c.f
        public int b() {
            return this.f2468a.getFlags();
        }

        @Override // androidx.core.view.c.f
        public ContentInfo c() {
            return this.f2468a;
        }

        @Override // androidx.core.view.c.f
        public int d() {
            return this.f2468a.getSource();
        }

        public String toString() {
            return "ContentInfoCompat{" + this.f2468a + "}";
        }
    }

    /* JADX INFO: compiled from: ContentInfoCompat.java */
    private interface f {
        ClipData a();

        int b();

        ContentInfo c();

        int d();
    }

    /* JADX INFO: compiled from: ContentInfoCompat.java */
    private static final class g implements f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final ClipData f2469a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f2470b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final int f2471c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final Uri f2472d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final Bundle f2473e;

        g(d dVar) {
            this.f2469a = (ClipData) androidx.core.util.h.f(dVar.f2463a);
            this.f2470b = androidx.core.util.h.b(dVar.f2464b, 0, 5, ShareConstants.FEED_SOURCE_PARAM);
            this.f2471c = androidx.core.util.h.e(dVar.f2465c, 1);
            this.f2472d = dVar.f2466d;
            this.f2473e = dVar.f2467e;
        }

        @Override // androidx.core.view.c.f
        public ClipData a() {
            return this.f2469a;
        }

        @Override // androidx.core.view.c.f
        public int b() {
            return this.f2471c;
        }

        @Override // androidx.core.view.c.f
        public ContentInfo c() {
            return null;
        }

        @Override // androidx.core.view.c.f
        public int d() {
            return this.f2470b;
        }

        public String toString() {
            String str;
            StringBuilder sb = new StringBuilder();
            sb.append("ContentInfoCompat{clip=");
            sb.append(this.f2469a.getDescription());
            sb.append(", source=");
            sb.append(c.e(this.f2470b));
            sb.append(", flags=");
            sb.append(c.a(this.f2471c));
            Uri uri = this.f2472d;
            String str2 = BuildConfig.FLAVOR;
            if (uri == null) {
                str = BuildConfig.FLAVOR;
            } else {
                str = ", hasLinkUri(" + this.f2472d.toString().length() + ")";
            }
            sb.append(str);
            if (this.f2473e != null) {
                str2 = ", hasExtras";
            }
            sb.append(str2);
            sb.append("}");
            return sb.toString();
        }
    }

    c(f fVar) {
        this.f2460a = fVar;
    }

    static String a(int i10) {
        return (i10 & 1) != 0 ? "FLAG_CONVERT_TO_PLAIN_TEXT" : String.valueOf(i10);
    }

    static String e(int i10) {
        return i10 != 0 ? i10 != 1 ? i10 != 2 ? i10 != 3 ? i10 != 4 ? i10 != 5 ? String.valueOf(i10) : "SOURCE_PROCESS_TEXT" : "SOURCE_AUTOFILL" : "SOURCE_DRAG_AND_DROP" : "SOURCE_INPUT_METHOD" : "SOURCE_CLIPBOARD" : "SOURCE_APP";
    }

    public static c g(ContentInfo contentInfo) {
        return new c(new e(contentInfo));
    }

    public ClipData b() {
        return this.f2460a.a();
    }

    public int c() {
        return this.f2460a.b();
    }

    public int d() {
        return this.f2460a.d();
    }

    public ContentInfo f() {
        ContentInfo contentInfoC = this.f2460a.c();
        Objects.requireNonNull(contentInfoC);
        return contentInfoC;
    }

    public String toString() {
        return this.f2460a.toString();
    }
}

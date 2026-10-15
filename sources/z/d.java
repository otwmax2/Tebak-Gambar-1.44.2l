package z;

import android.content.ClipDescription;
import android.net.Uri;
import android.os.Build;
import android.view.inputmethod.InputContentInfo;

/* JADX INFO: compiled from: InputContentInfoCompat.java */
/* JADX INFO: loaded from: classes.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final c f37157a;

    /* JADX INFO: compiled from: InputContentInfoCompat.java */
    private static final class b implements c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Uri f37159a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final ClipDescription f37160b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final Uri f37161c;

        b(Uri uri, ClipDescription clipDescription, Uri uri2) {
            this.f37159a = uri;
            this.f37160b = clipDescription;
            this.f37161c = uri2;
        }

        @Override // z.d.c
        public Uri a() {
            return this.f37159a;
        }

        @Override // z.d.c
        public void b() {
        }

        @Override // z.d.c
        public Uri c() {
            return this.f37161c;
        }

        @Override // z.d.c
        public Object d() {
            return null;
        }

        @Override // z.d.c
        public ClipDescription getDescription() {
            return this.f37160b;
        }
    }

    /* JADX INFO: compiled from: InputContentInfoCompat.java */
    private interface c {
        Uri a();

        void b();

        Uri c();

        Object d();

        ClipDescription getDescription();
    }

    public d(Uri uri, ClipDescription clipDescription, Uri uri2) {
        if (Build.VERSION.SDK_INT >= 25) {
            this.f37157a = new a(uri, clipDescription, uri2);
        } else {
            this.f37157a = new b(uri, clipDescription, uri2);
        }
    }

    public static d f(Object obj) {
        if (obj != null && Build.VERSION.SDK_INT >= 25) {
            return new d(new a(obj));
        }
        return null;
    }

    public Uri a() {
        return this.f37157a.a();
    }

    public ClipDescription b() {
        return this.f37157a.getDescription();
    }

    public Uri c() {
        return this.f37157a.c();
    }

    public void d() {
        this.f37157a.b();
    }

    public Object e() {
        return this.f37157a.d();
    }

    /* JADX INFO: compiled from: InputContentInfoCompat.java */
    private static final class a implements c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final InputContentInfo f37158a;

        a(Object obj) {
            this.f37158a = (InputContentInfo) obj;
        }

        @Override // z.d.c
        public Uri a() {
            return this.f37158a.getContentUri();
        }

        @Override // z.d.c
        public void b() {
            this.f37158a.requestPermission();
        }

        @Override // z.d.c
        public Uri c() {
            return this.f37158a.getLinkUri();
        }

        @Override // z.d.c
        public Object d() {
            return this.f37158a;
        }

        @Override // z.d.c
        public ClipDescription getDescription() {
            return this.f37158a.getDescription();
        }

        a(Uri uri, ClipDescription clipDescription, Uri uri2) {
            this.f37158a = new InputContentInfo(uri, clipDescription, uri2);
        }
    }

    private d(c cVar) {
        this.f37157a = cVar;
    }
}

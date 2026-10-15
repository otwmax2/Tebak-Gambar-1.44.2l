package i1;

import android.net.Uri;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: compiled from: ContentUriTriggers.java */
/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Set<a> f30340a = new HashSet();

    /* JADX INFO: compiled from: ContentUriTriggers.java */
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Uri f30341a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final boolean f30342b;

        a(Uri uri, boolean z10) {
            this.f30341a = uri;
            this.f30342b = z10;
        }

        public Uri a() {
            return this.f30341a;
        }

        public boolean b() {
            return this.f30342b;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || a.class != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            return this.f30342b == aVar.f30342b && this.f30341a.equals(aVar.f30341a);
        }

        public int hashCode() {
            return (this.f30341a.hashCode() * 31) + (this.f30342b ? 1 : 0);
        }
    }

    public void a(Uri uri, boolean z10) {
        this.f30340a.add(new a(uri, z10));
    }

    public Set<a> b() {
        return this.f30340a;
    }

    public int c() {
        return this.f30340a.size();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || c.class != obj.getClass()) {
            return false;
        }
        return this.f30340a.equals(((c) obj).f30340a);
    }

    public int hashCode() {
        return this.f30340a.hashCode();
    }
}

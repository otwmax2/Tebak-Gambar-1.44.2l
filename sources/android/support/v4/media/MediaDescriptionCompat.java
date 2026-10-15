package android.support.v4.media;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.media.a;
import android.support.v4.media.b;
import android.support.v4.media.session.MediaSessionCompat;
import android.text.TextUtils;

/* JADX INFO: loaded from: classes.dex */
public final class MediaDescriptionCompat implements Parcelable {
    public static final Parcelable.Creator<MediaDescriptionCompat> CREATOR = new a();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final String f114o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final CharSequence f115p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final CharSequence f116q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final CharSequence f117r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final Bitmap f118s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final Uri f119t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final Bundle f120u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final Uri f121v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private Object f122w;

    static class a implements Parcelable.Creator<MediaDescriptionCompat> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public MediaDescriptionCompat createFromParcel(Parcel parcel) {
            return Build.VERSION.SDK_INT < 21 ? new MediaDescriptionCompat(parcel) : MediaDescriptionCompat.h(android.support.v4.media.a.a(parcel));
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public MediaDescriptionCompat[] newArray(int i10) {
            return new MediaDescriptionCompat[i10];
        }
    }

    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f123a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private CharSequence f124b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private CharSequence f125c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private CharSequence f126d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private Bitmap f127e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private Uri f128f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private Bundle f129g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private Uri f130h;

        public MediaDescriptionCompat a() {
            return new MediaDescriptionCompat(this.f123a, this.f124b, this.f125c, this.f126d, this.f127e, this.f128f, this.f129g, this.f130h);
        }

        public b b(CharSequence charSequence) {
            this.f126d = charSequence;
            return this;
        }

        public b c(Bundle bundle) {
            this.f129g = bundle;
            return this;
        }

        public b d(Bitmap bitmap) {
            this.f127e = bitmap;
            return this;
        }

        public b e(Uri uri) {
            this.f128f = uri;
            return this;
        }

        public b f(String str) {
            this.f123a = str;
            return this;
        }

        public b g(Uri uri) {
            this.f130h = uri;
            return this;
        }

        public b h(CharSequence charSequence) {
            this.f125c = charSequence;
            return this;
        }

        public b i(CharSequence charSequence) {
            this.f124b = charSequence;
            return this;
        }
    }

    MediaDescriptionCompat(String str, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, Bitmap bitmap, Uri uri, Bundle bundle, Uri uri2) {
        this.f114o = str;
        this.f115p = charSequence;
        this.f116q = charSequence2;
        this.f117r = charSequence3;
        this.f118s = bitmap;
        this.f119t = uri;
        this.f120u = bundle;
        this.f121v = uri2;
    }

    public static MediaDescriptionCompat h(Object obj) {
        int i10;
        Uri uri;
        Bundle bundle = null;
        if (obj == null || (i10 = Build.VERSION.SDK_INT) < 21) {
            return null;
        }
        b bVar = new b();
        bVar.f(android.support.v4.media.a.f(obj));
        bVar.i(android.support.v4.media.a.h(obj));
        bVar.h(android.support.v4.media.a.g(obj));
        bVar.b(android.support.v4.media.a.b(obj));
        bVar.d(android.support.v4.media.a.d(obj));
        bVar.e(android.support.v4.media.a.e(obj));
        Bundle bundleC = android.support.v4.media.a.c(obj);
        if (bundleC != null) {
            MediaSessionCompat.a(bundleC);
            uri = (Uri) bundleC.getParcelable("android.support.v4.media.description.MEDIA_URI");
        } else {
            uri = null;
        }
        if (uri == null) {
            bundle = bundleC;
        } else if (!bundleC.containsKey("android.support.v4.media.description.NULL_BUNDLE_FLAG") || bundleC.size() != 2) {
            bundleC.remove("android.support.v4.media.description.MEDIA_URI");
            bundleC.remove("android.support.v4.media.description.NULL_BUNDLE_FLAG");
            bundle = bundleC;
        }
        bVar.c(bundle);
        if (uri != null) {
            bVar.g(uri);
        } else if (i10 >= 23) {
            bVar.g(android.support.v4.media.b.a(obj));
        }
        MediaDescriptionCompat mediaDescriptionCompatA = bVar.a();
        mediaDescriptionCompatA.f122w = obj;
        return mediaDescriptionCompatA;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public Object t() {
        int i10;
        Object obj = this.f122w;
        if (obj != null || (i10 = Build.VERSION.SDK_INT) < 21) {
            return obj;
        }
        Object objB = a.C0006a.b();
        a.C0006a.g(objB, this.f114o);
        a.C0006a.i(objB, this.f115p);
        a.C0006a.h(objB, this.f116q);
        a.C0006a.c(objB, this.f117r);
        a.C0006a.e(objB, this.f118s);
        a.C0006a.f(objB, this.f119t);
        Bundle bundle = this.f120u;
        if (i10 < 23 && this.f121v != null) {
            if (bundle == null) {
                bundle = new Bundle();
                bundle.putBoolean("android.support.v4.media.description.NULL_BUNDLE_FLAG", true);
            }
            bundle.putParcelable("android.support.v4.media.description.MEDIA_URI", this.f121v);
        }
        a.C0006a.d(objB, bundle);
        if (i10 >= 23) {
            b.a.a(objB, this.f121v);
        }
        Object objA = a.C0006a.a(objB);
        this.f122w = objA;
        return objA;
    }

    public String toString() {
        return ((Object) this.f115p) + ", " + ((Object) this.f116q) + ", " + ((Object) this.f117r);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        if (Build.VERSION.SDK_INT >= 21) {
            android.support.v4.media.a.i(t(), parcel, i10);
            return;
        }
        parcel.writeString(this.f114o);
        TextUtils.writeToParcel(this.f115p, parcel, i10);
        TextUtils.writeToParcel(this.f116q, parcel, i10);
        TextUtils.writeToParcel(this.f117r, parcel, i10);
        parcel.writeParcelable(this.f118s, i10);
        parcel.writeParcelable(this.f119t, i10);
        parcel.writeBundle(this.f120u);
        parcel.writeParcelable(this.f121v, i10);
    }

    MediaDescriptionCompat(Parcel parcel) {
        this.f114o = parcel.readString();
        this.f115p = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.f116q = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.f117r = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        ClassLoader classLoader = MediaDescriptionCompat.class.getClassLoader();
        this.f118s = (Bitmap) parcel.readParcelable(classLoader);
        this.f119t = (Uri) parcel.readParcelable(classLoader);
        this.f120u = parcel.readBundle(classLoader);
        this.f121v = (Uri) parcel.readParcelable(classLoader);
    }
}

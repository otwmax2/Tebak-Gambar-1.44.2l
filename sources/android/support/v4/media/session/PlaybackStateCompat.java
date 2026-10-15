package android.support.v4.media.session;

import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.media.session.g;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class PlaybackStateCompat implements Parcelable {
    public static final Parcelable.Creator<PlaybackStateCompat> CREATOR = new a();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final int f156o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final long f157p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    final long f158q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    final float f159r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    final long f160s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    final int f161t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    final CharSequence f162u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    final long f163v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    List<CustomAction> f164w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    final long f165x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    final Bundle f166y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private Object f167z;

    static class a implements Parcelable.Creator<PlaybackStateCompat> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public PlaybackStateCompat createFromParcel(Parcel parcel) {
            return new PlaybackStateCompat(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public PlaybackStateCompat[] newArray(int i10) {
            return new PlaybackStateCompat[i10];
        }
    }

    PlaybackStateCompat(int i10, long j10, long j11, float f10, long j12, int i11, CharSequence charSequence, long j13, List<CustomAction> list, long j14, Bundle bundle) {
        this.f156o = i10;
        this.f157p = j10;
        this.f158q = j11;
        this.f159r = f10;
        this.f160s = j12;
        this.f161t = i11;
        this.f162u = charSequence;
        this.f163v = j13;
        this.f164w = new ArrayList(list);
        this.f165x = j14;
        this.f166y = bundle;
    }

    public static PlaybackStateCompat h(Object obj) {
        ArrayList arrayList;
        if (obj == null || Build.VERSION.SDK_INT < 21) {
            return null;
        }
        List<Object> listD = g.d(obj);
        if (listD != null) {
            ArrayList arrayList2 = new ArrayList(listD.size());
            Iterator<Object> it = listD.iterator();
            while (it.hasNext()) {
                arrayList2.add(CustomAction.h(it.next()));
            }
            arrayList = arrayList2;
        } else {
            arrayList = null;
        }
        PlaybackStateCompat playbackStateCompat = new PlaybackStateCompat(g.i(obj), g.h(obj), g.c(obj), g.g(obj), g.a(obj), 0, g.e(obj), g.f(obj), arrayList, g.b(obj), Build.VERSION.SDK_INT >= 22 ? h.a(obj) : null);
        playbackStateCompat.f167z = obj;
        return playbackStateCompat;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        return "PlaybackState {state=" + this.f156o + ", position=" + this.f157p + ", buffered position=" + this.f158q + ", speed=" + this.f159r + ", updated=" + this.f163v + ", actions=" + this.f160s + ", error code=" + this.f161t + ", error message=" + this.f162u + ", custom actions=" + this.f164w + ", active item id=" + this.f165x + "}";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeInt(this.f156o);
        parcel.writeLong(this.f157p);
        parcel.writeFloat(this.f159r);
        parcel.writeLong(this.f163v);
        parcel.writeLong(this.f158q);
        parcel.writeLong(this.f160s);
        TextUtils.writeToParcel(this.f162u, parcel, i10);
        parcel.writeTypedList(this.f164w);
        parcel.writeLong(this.f165x);
        parcel.writeBundle(this.f166y);
        parcel.writeInt(this.f161t);
    }

    public static final class CustomAction implements Parcelable {
        public static final Parcelable.Creator<CustomAction> CREATOR = new a();

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private final String f168o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private final CharSequence f169p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private final int f170q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        private final Bundle f171r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        private Object f172s;

        static class a implements Parcelable.Creator<CustomAction> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public CustomAction createFromParcel(Parcel parcel) {
                return new CustomAction(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public CustomAction[] newArray(int i10) {
                return new CustomAction[i10];
            }
        }

        CustomAction(String str, CharSequence charSequence, int i10, Bundle bundle) {
            this.f168o = str;
            this.f169p = charSequence;
            this.f170q = i10;
            this.f171r = bundle;
        }

        public static CustomAction h(Object obj) {
            if (obj == null || Build.VERSION.SDK_INT < 21) {
                return null;
            }
            CustomAction customAction = new CustomAction(g.a.a(obj), g.a.d(obj), g.a.c(obj), g.a.b(obj));
            customAction.f172s = obj;
            return customAction;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public String toString() {
            return "Action:mName='" + ((Object) this.f169p) + ", mIcon=" + this.f170q + ", mExtras=" + this.f171r;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            parcel.writeString(this.f168o);
            TextUtils.writeToParcel(this.f169p, parcel, i10);
            parcel.writeInt(this.f170q);
            parcel.writeBundle(this.f171r);
        }

        CustomAction(Parcel parcel) {
            this.f168o = parcel.readString();
            this.f169p = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
            this.f170q = parcel.readInt();
            this.f171r = parcel.readBundle(MediaSessionCompat.class.getClassLoader());
        }
    }

    PlaybackStateCompat(Parcel parcel) {
        this.f156o = parcel.readInt();
        this.f157p = parcel.readLong();
        this.f159r = parcel.readFloat();
        this.f163v = parcel.readLong();
        this.f158q = parcel.readLong();
        this.f160s = parcel.readLong();
        this.f162u = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.f164w = parcel.createTypedArrayList(CustomAction.CREATOR);
        this.f165x = parcel.readLong();
        this.f166y = parcel.readBundle(MediaSessionCompat.class.getClassLoader());
        this.f161t = parcel.readInt();
    }
}

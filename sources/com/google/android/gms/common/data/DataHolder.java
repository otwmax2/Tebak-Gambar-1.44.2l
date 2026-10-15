package com.google.android.gms.common.data;

import android.database.CursorIndexOutOfBoundsException;
import android.database.CursorWindow;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.io.Closeable;
import java.util.ArrayList;
import java.util.HashMap;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes.dex */
@KeepForSdk
@KeepName
@SafeParcelable.Class
public final class DataHolder extends AbstractSafeParcelable implements Closeable {

    @KeepForSdk
    public static final Parcelable.Creator<DataHolder> CREATOR = new zaf();

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private static final Builder f7315y = new a(new String[0], null);

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.VersionField
    final int f7316o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    private final String[] f7317p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    Bundle f7318q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @SafeParcelable.Field
    private final CursorWindow[] f7319r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @SafeParcelable.Field
    private final int f7320s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @SafeParcelable.Field
    private final Bundle f7321t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    int[] f7322u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    int f7323v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    boolean f7324w = false;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private boolean f7325x = true;

    /* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
    @KeepForSdk
    public static class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String[] f7326a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final ArrayList<HashMap<String, Object>> f7327b = new ArrayList<>();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final HashMap<Object, Integer> f7328c = new HashMap<>();
    }

    @SafeParcelable.Constructor
    DataHolder(@SafeParcelable.Param int i10, @SafeParcelable.Param String[] strArr, @SafeParcelable.Param CursorWindow[] cursorWindowArr, @SafeParcelable.Param int i11, @SafeParcelable.Param Bundle bundle) {
        this.f7316o = i10;
        this.f7317p = strArr;
        this.f7319r = cursorWindowArr;
        this.f7320s = i11;
        this.f7321t = bundle;
    }

    private final void h4(String str, int i10) {
        Bundle bundle = this.f7318q;
        if (bundle == null || !bundle.containsKey(str)) {
            String strValueOf = String.valueOf(str);
            throw new IllegalArgumentException(strValueOf.length() != 0 ? "No such column: ".concat(strValueOf) : new String("No such column: "));
        }
        if (isClosed()) {
            throw new IllegalArgumentException("Buffer is closed.");
        }
        if (i10 < 0 || i10 >= this.f7323v) {
            throw new CursorIndexOutOfBoundsException(i10, this.f7323v);
        }
    }

    @KeepForSdk
    public boolean V3(String str, int i10, int i11) {
        h4(str, i10);
        return Long.valueOf(this.f7319r[i11].getLong(i10, this.f7318q.getInt(str))).longValue() == 1;
    }

    @KeepForSdk
    public byte[] W3(String str, int i10, int i11) {
        h4(str, i10);
        return this.f7319r[i11].getBlob(i10, this.f7318q.getInt(str));
    }

    @KeepForSdk
    public int X3(String str, int i10, int i11) {
        h4(str, i10);
        return this.f7319r[i11].getInt(i10, this.f7318q.getInt(str));
    }

    @KeepForSdk
    public long Y3(String str, int i10, int i11) {
        h4(str, i10);
        return this.f7319r[i11].getLong(i10, this.f7318q.getInt(str));
    }

    @KeepForSdk
    public Bundle Z3() {
        return this.f7321t;
    }

    @KeepForSdk
    public int a4() {
        return this.f7320s;
    }

    @KeepForSdk
    public String b4(String str, int i10, int i11) {
        h4(str, i10);
        return this.f7319r[i11].getString(i10, this.f7318q.getInt(str));
    }

    @KeepForSdk
    public int c4(int i10) {
        int length;
        int i11 = 0;
        Preconditions.n(i10 >= 0 && i10 < this.f7323v);
        while (true) {
            int[] iArr = this.f7322u;
            length = iArr.length;
            if (i11 >= length) {
                break;
            }
            if (i10 < iArr[i11]) {
                i11--;
                break;
            }
            i11++;
        }
        return i11 == length ? i11 - 1 : i11;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    @KeepForSdk
    public void close() {
        synchronized (this) {
            if (!this.f7324w) {
                this.f7324w = true;
                int i10 = 0;
                while (true) {
                    CursorWindow[] cursorWindowArr = this.f7319r;
                    if (i10 >= cursorWindowArr.length) {
                        break;
                    }
                    cursorWindowArr[i10].close();
                    i10++;
                }
            }
        }
    }

    @KeepForSdk
    public boolean d4(String str) {
        return this.f7318q.containsKey(str);
    }

    @KeepForSdk
    public boolean e4(String str, int i10, int i11) {
        h4(str, i10);
        return this.f7319r[i11].isNull(i10, this.f7318q.getInt(str));
    }

    public final float f4(String str, int i10, int i11) {
        h4(str, i10);
        return this.f7319r[i11].getFloat(i10, this.f7318q.getInt(str));
    }

    protected final void finalize() throws Throwable {
        try {
            if (this.f7325x && this.f7319r.length > 0 && !isClosed()) {
                close();
                String string = toString();
                StringBuilder sb = new StringBuilder(String.valueOf(string).length() + 178);
                sb.append("Internal data leak within a DataBuffer object detected!  Be sure to explicitly call release() on all DataBuffer extending objects when you are done with them. (internal object: ");
                sb.append(string);
                sb.append(")");
                Log.e("DataBuffer", sb.toString());
            }
        } finally {
            super.finalize();
        }
    }

    public final void g4() {
        this.f7318q = new Bundle();
        int i10 = 0;
        int i11 = 0;
        while (true) {
            String[] strArr = this.f7317p;
            if (i11 >= strArr.length) {
                break;
            }
            this.f7318q.putInt(strArr[i11], i11);
            i11++;
        }
        this.f7322u = new int[this.f7319r.length];
        int numRows = 0;
        while (true) {
            CursorWindow[] cursorWindowArr = this.f7319r;
            if (i10 >= cursorWindowArr.length) {
                this.f7323v = numRows;
                return;
            }
            this.f7322u[i10] = numRows;
            numRows += this.f7319r[i10].getNumRows() - (numRows - cursorWindowArr[i10].getStartPosition());
            i10++;
        }
    }

    @KeepForSdk
    public int getCount() {
        return this.f7323v;
    }

    @KeepForSdk
    public boolean isClosed() {
        boolean z10;
        synchronized (this) {
            z10 = this.f7324w;
        }
        return z10;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.u(parcel, 1, this.f7317p, false);
        SafeParcelWriter.w(parcel, 2, this.f7319r, i10, false);
        SafeParcelWriter.l(parcel, 3, a4());
        SafeParcelWriter.f(parcel, 4, Z3(), false);
        SafeParcelWriter.l(parcel, 1000, this.f7316o);
        SafeParcelWriter.b(parcel, iA);
        if ((i10 & 1) != 0) {
            close();
        }
    }
}

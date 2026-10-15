package com.theartofdev.edmodo.cropper;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import com.theartofdev.edmodo.cropper.CropImageView;
import com.vungle.mediation.BuildConfig;

/* JADX INFO: compiled from: CropImageOptions.java */
/* JADX INFO: loaded from: classes2.dex */
public class f implements Parcelable {
    public static final Parcelable.Creator<f> CREATOR = new a();
    public int A;
    public int B;
    public float C;
    public int D;
    public float E;
    public float F;
    public float G;
    public int H;
    public float I;
    public int J;
    public int K;
    public int L;
    public int M;
    public int N;
    public int O;
    public int P;
    public int Q;
    public CharSequence R;
    public int S;
    public Uri T;
    public Bitmap.CompressFormat U;
    public int V;
    public int W;
    public int X;
    public CropImageView.j Y;
    public boolean Z;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public Rect f27366a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public int f27367b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public boolean f27368c0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public boolean f27369d0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public boolean f27370e0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public int f27371f0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public boolean f27372g0;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public boolean f27373h0;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public CharSequence f27374i0;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public int f27375j0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public CropImageView.c f27376o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public float f27377p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public float f27378q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public CropImageView.d f27379r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public CropImageView.k f27380s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public boolean f27381t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public boolean f27382u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public boolean f27383v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public boolean f27384w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f27385x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public float f27386y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public boolean f27387z;

    /* JADX INFO: compiled from: CropImageOptions.java */
    static class a implements Parcelable.Creator<f> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public f createFromParcel(Parcel parcel) {
            return new f(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public f[] newArray(int i10) {
            return new f[i10];
        }
    }

    public f() {
        DisplayMetrics displayMetrics = Resources.getSystem().getDisplayMetrics();
        this.f27376o = CropImageView.c.RECTANGLE;
        this.f27377p = TypedValue.applyDimension(1, 3.0f, displayMetrics);
        this.f27378q = TypedValue.applyDimension(1, 24.0f, displayMetrics);
        this.f27379r = CropImageView.d.ON_TOUCH;
        this.f27380s = CropImageView.k.FIT_CENTER;
        this.f27381t = true;
        this.f27382u = true;
        this.f27383v = true;
        this.f27384w = false;
        this.f27385x = 4;
        this.f27386y = 0.1f;
        this.f27387z = false;
        this.A = 1;
        this.B = 1;
        this.C = TypedValue.applyDimension(1, 3.0f, displayMetrics);
        this.D = Color.argb(170, 255, 255, 255);
        this.E = TypedValue.applyDimension(1, 2.0f, displayMetrics);
        this.F = TypedValue.applyDimension(1, 5.0f, displayMetrics);
        this.G = TypedValue.applyDimension(1, 14.0f, displayMetrics);
        this.H = -1;
        this.I = TypedValue.applyDimension(1, 1.0f, displayMetrics);
        this.J = Color.argb(170, 255, 255, 255);
        this.K = Color.argb(119, 0, 0, 0);
        this.L = (int) TypedValue.applyDimension(1, 42.0f, displayMetrics);
        this.M = (int) TypedValue.applyDimension(1, 42.0f, displayMetrics);
        this.N = 40;
        this.O = 40;
        this.P = 99999;
        this.Q = 99999;
        this.R = BuildConfig.FLAVOR;
        this.S = 0;
        this.T = Uri.EMPTY;
        this.U = Bitmap.CompressFormat.JPEG;
        this.V = 90;
        this.W = 0;
        this.X = 0;
        this.Y = CropImageView.j.NONE;
        this.Z = false;
        this.f27366a0 = null;
        this.f27367b0 = -1;
        this.f27368c0 = true;
        this.f27369d0 = true;
        this.f27370e0 = false;
        this.f27371f0 = 90;
        this.f27372g0 = false;
        this.f27373h0 = false;
        this.f27374i0 = null;
        this.f27375j0 = 0;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public void h() {
        if (this.f27385x < 0) {
            throw new IllegalArgumentException("Cannot set max zoom to a number < 1");
        }
        if (this.f27378q < 0.0f) {
            throw new IllegalArgumentException("Cannot set touch radius value to a number <= 0 ");
        }
        float f10 = this.f27386y;
        if (f10 < 0.0f || f10 >= 0.5d) {
            throw new IllegalArgumentException("Cannot set initial crop window padding value to a number < 0 or >= 0.5");
        }
        if (this.A <= 0) {
            throw new IllegalArgumentException("Cannot set aspect ratio value to a number less than or equal to 0.");
        }
        if (this.B <= 0) {
            throw new IllegalArgumentException("Cannot set aspect ratio value to a number less than or equal to 0.");
        }
        if (this.C < 0.0f) {
            throw new IllegalArgumentException("Cannot set line thickness value to a number less than 0.");
        }
        if (this.E < 0.0f) {
            throw new IllegalArgumentException("Cannot set corner thickness value to a number less than 0.");
        }
        if (this.I < 0.0f) {
            throw new IllegalArgumentException("Cannot set guidelines thickness value to a number less than 0.");
        }
        if (this.M < 0) {
            throw new IllegalArgumentException("Cannot set min crop window height value to a number < 0 ");
        }
        int i10 = this.N;
        if (i10 < 0) {
            throw new IllegalArgumentException("Cannot set min crop result width value to a number < 0 ");
        }
        int i11 = this.O;
        if (i11 < 0) {
            throw new IllegalArgumentException("Cannot set min crop result height value to a number < 0 ");
        }
        if (this.P < i10) {
            throw new IllegalArgumentException("Cannot set max crop result width to smaller value than min crop result width");
        }
        if (this.Q < i11) {
            throw new IllegalArgumentException("Cannot set max crop result height to smaller value than min crop result height");
        }
        if (this.W < 0) {
            throw new IllegalArgumentException("Cannot set request width value to a number < 0 ");
        }
        if (this.X < 0) {
            throw new IllegalArgumentException("Cannot set request height value to a number < 0 ");
        }
        int i12 = this.f27371f0;
        if (i12 < 0 || i12 > 360) {
            throw new IllegalArgumentException("Cannot set rotation degrees value to a number < 0 or > 360");
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeInt(this.f27376o.ordinal());
        parcel.writeFloat(this.f27377p);
        parcel.writeFloat(this.f27378q);
        parcel.writeInt(this.f27379r.ordinal());
        parcel.writeInt(this.f27380s.ordinal());
        parcel.writeByte(this.f27381t ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f27382u ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f27383v ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f27384w ? (byte) 1 : (byte) 0);
        parcel.writeInt(this.f27385x);
        parcel.writeFloat(this.f27386y);
        parcel.writeByte(this.f27387z ? (byte) 1 : (byte) 0);
        parcel.writeInt(this.A);
        parcel.writeInt(this.B);
        parcel.writeFloat(this.C);
        parcel.writeInt(this.D);
        parcel.writeFloat(this.E);
        parcel.writeFloat(this.F);
        parcel.writeFloat(this.G);
        parcel.writeInt(this.H);
        parcel.writeFloat(this.I);
        parcel.writeInt(this.J);
        parcel.writeInt(this.K);
        parcel.writeInt(this.L);
        parcel.writeInt(this.M);
        parcel.writeInt(this.N);
        parcel.writeInt(this.O);
        parcel.writeInt(this.P);
        parcel.writeInt(this.Q);
        TextUtils.writeToParcel(this.R, parcel, i10);
        parcel.writeInt(this.S);
        parcel.writeParcelable(this.T, i10);
        parcel.writeString(this.U.name());
        parcel.writeInt(this.V);
        parcel.writeInt(this.W);
        parcel.writeInt(this.X);
        parcel.writeInt(this.Y.ordinal());
        parcel.writeInt(this.Z ? 1 : 0);
        parcel.writeParcelable(this.f27366a0, i10);
        parcel.writeInt(this.f27367b0);
        parcel.writeByte(this.f27368c0 ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f27369d0 ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f27370e0 ? (byte) 1 : (byte) 0);
        parcel.writeInt(this.f27371f0);
        parcel.writeByte(this.f27372g0 ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f27373h0 ? (byte) 1 : (byte) 0);
        TextUtils.writeToParcel(this.f27374i0, parcel, i10);
        parcel.writeInt(this.f27375j0);
    }

    protected f(Parcel parcel) {
        this.f27376o = CropImageView.c.values()[parcel.readInt()];
        this.f27377p = parcel.readFloat();
        this.f27378q = parcel.readFloat();
        this.f27379r = CropImageView.d.values()[parcel.readInt()];
        this.f27380s = CropImageView.k.values()[parcel.readInt()];
        this.f27381t = parcel.readByte() != 0;
        this.f27382u = parcel.readByte() != 0;
        this.f27383v = parcel.readByte() != 0;
        this.f27384w = parcel.readByte() != 0;
        this.f27385x = parcel.readInt();
        this.f27386y = parcel.readFloat();
        this.f27387z = parcel.readByte() != 0;
        this.A = parcel.readInt();
        this.B = parcel.readInt();
        this.C = parcel.readFloat();
        this.D = parcel.readInt();
        this.E = parcel.readFloat();
        this.F = parcel.readFloat();
        this.G = parcel.readFloat();
        this.H = parcel.readInt();
        this.I = parcel.readFloat();
        this.J = parcel.readInt();
        this.K = parcel.readInt();
        this.L = parcel.readInt();
        this.M = parcel.readInt();
        this.N = parcel.readInt();
        this.O = parcel.readInt();
        this.P = parcel.readInt();
        this.Q = parcel.readInt();
        this.R = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.S = parcel.readInt();
        this.T = (Uri) parcel.readParcelable(Uri.class.getClassLoader());
        this.U = Bitmap.CompressFormat.valueOf(parcel.readString());
        this.V = parcel.readInt();
        this.W = parcel.readInt();
        this.X = parcel.readInt();
        this.Y = CropImageView.j.values()[parcel.readInt()];
        this.Z = parcel.readByte() != 0;
        this.f27366a0 = (Rect) parcel.readParcelable(Rect.class.getClassLoader());
        this.f27367b0 = parcel.readInt();
        this.f27368c0 = parcel.readByte() != 0;
        this.f27369d0 = parcel.readByte() != 0;
        this.f27370e0 = parcel.readByte() != 0;
        this.f27371f0 = parcel.readInt();
        this.f27372g0 = parcel.readByte() != 0;
        this.f27373h0 = parcel.readByte() != 0;
        this.f27374i0 = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.f27375j0 = parcel.readInt();
    }
}

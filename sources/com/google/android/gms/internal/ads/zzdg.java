package com.google.android.gms.internal.ads;

import java.nio.ShortBuffer;
import java.util.Arrays;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzdg {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f14564a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f14565b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final float f14566c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final float f14567d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final float f14568e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f14569f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int f14570g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final int f14571h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final short[] f14572i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private short[] f14573j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f14574k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private short[] f14575l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f14576m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private short[] f14577n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f14578o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f14579p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f14580q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f14581r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int f14582s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f14583t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private int f14584u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private int f14585v;

    public zzdg(int i10, int i11, float f10, float f11, int i12) {
        this.f14564a = i10;
        this.f14565b = i11;
        this.f14566c = f10;
        this.f14567d = f11;
        this.f14568e = i10 / i12;
        this.f14569f = i10 / 400;
        int i13 = i10 / 65;
        this.f14570g = i13;
        int i14 = i13 + i13;
        this.f14571h = i14;
        this.f14572i = new short[i14];
        int i15 = i14 * i11;
        this.f14573j = new short[i15];
        this.f14575l = new short[i15];
        this.f14577n = new short[i15];
    }

    private final int g(short[] sArr, int i10, int i11, int i12) {
        int i13 = i10 * this.f14565b;
        int i14 = 1;
        int i15 = 255;
        int i16 = 0;
        int i17 = 0;
        while (i11 <= i12) {
            int iAbs = 0;
            for (int i18 = 0; i18 < i11; i18++) {
                iAbs += Math.abs(sArr[i13 + i18] - sArr[(i13 + i11) + i18]);
            }
            int i19 = iAbs * i16;
            int i20 = i14 * i11;
            if (i19 < i20) {
                i14 = iAbs;
            }
            if (i19 < i20) {
                i16 = i11;
            }
            int i21 = iAbs * i15;
            int i22 = i17 * i11;
            if (i21 > i22) {
                i17 = iAbs;
            }
            if (i21 > i22) {
                i15 = i11;
            }
            i11++;
        }
        this.f14584u = i14 / i16;
        this.f14585v = i17 / i15;
        return i16;
    }

    private final void h(short[] sArr, int i10, int i11) {
        short[] sArrL = l(this.f14575l, this.f14576m, i11);
        this.f14575l = sArrL;
        int i12 = this.f14565b;
        System.arraycopy(sArr, i10 * i12, sArrL, this.f14576m * i12, i12 * i11);
        this.f14576m += i11;
    }

    private final void i(short[] sArr, int i10, int i11) {
        int i12 = this.f14571h / i11;
        int i13 = this.f14565b;
        int i14 = i11 * i13;
        int i15 = i10 * i13;
        for (int i16 = 0; i16 < i12; i16++) {
            int i17 = 0;
            for (int i18 = 0; i18 < i14; i18++) {
                i17 += sArr[(i16 * i14) + i15 + i18];
            }
            this.f14572i[i16] = (short) (i17 / i14);
        }
    }

    private static void j(int i10, int i11, short[] sArr, int i12, short[] sArr2, int i13, short[] sArr3, int i14) {
        for (int i15 = 0; i15 < i11; i15++) {
            int i16 = (i13 * i11) + i15;
            int i17 = (i14 * i11) + i15;
            int i18 = (i12 * i11) + i15;
            for (int i19 = 0; i19 < i10; i19++) {
                sArr[i18] = (short) (((sArr2[i16] * (i10 - i19)) + (sArr3[i17] * i19)) / i10);
                i18 += i11;
                i16 += i11;
                i17 += i11;
            }
        }
    }

    private final void k() {
        int iG;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17 = this.f14576m;
        float f10 = this.f14566c;
        float f11 = this.f14567d;
        float f12 = f10 / f11;
        float f13 = this.f14568e * f11;
        double d10 = f12;
        float f14 = 1.0f;
        int i18 = 1;
        if (d10 > 1.00001d || d10 < 0.99999d) {
            int i19 = this.f14574k;
            if (i19 >= this.f14571h) {
                int i20 = 0;
                while (true) {
                    int i21 = this.f14581r;
                    if (i21 > 0) {
                        int iMin = Math.min(this.f14571h, i21);
                        h(this.f14573j, i20, iMin);
                        this.f14581r -= iMin;
                        i20 += iMin;
                    } else {
                        short[] sArr = this.f14573j;
                        int i22 = this.f14564a;
                        int i23 = i22 > 4000 ? i22 / 4000 : 1;
                        if (this.f14565b == i18 && i23 == i18) {
                            iG = g(sArr, i20, this.f14569f, this.f14570g);
                        } else {
                            i(sArr, i20, i23);
                            int iG2 = g(this.f14572i, 0, this.f14569f / i23, this.f14570g / i23);
                            if (i23 != i18) {
                                int i24 = iG2 * i23;
                                int i25 = i23 * 4;
                                int i26 = this.f14569f;
                                int i27 = i24 - i25;
                                if (i27 >= i26) {
                                    i26 = i27;
                                }
                                int i28 = i24 + i25;
                                int i29 = this.f14570g;
                                if (i28 > i29) {
                                    i28 = i29;
                                }
                                if (this.f14565b == i18) {
                                    iG = g(sArr, i20, i26, i28);
                                } else {
                                    i(sArr, i20, i18);
                                    iG = g(this.f14572i, 0, i26, i28);
                                }
                            } else {
                                iG = iG2;
                            }
                        }
                        int i30 = this.f14584u;
                        int i31 = (i30 == 0 || (i12 = this.f14582s) == 0 || this.f14585v > i30 * 3 || i30 + i30 <= this.f14583t * 3) ? iG : i12;
                        this.f14583t = i30;
                        this.f14582s = iG;
                        if (d10 > 1.0d) {
                            short[] sArr2 = this.f14573j;
                            if (f12 >= 2.0f) {
                                i11 = (int) (i31 / ((-1.0f) + f12));
                            } else {
                                this.f14581r = (int) ((i31 * (2.0f - f12)) / ((-1.0f) + f12));
                                i11 = i31;
                            }
                            short[] sArrL = l(this.f14575l, this.f14576m, i11);
                            this.f14575l = sArrL;
                            int i32 = i11;
                            j(i11, this.f14565b, sArrL, this.f14576m, sArr2, i20, sArr2, i20 + i31);
                            this.f14576m += i32;
                            i20 += i31 + i32;
                        } else {
                            int i33 = i31;
                            short[] sArr3 = this.f14573j;
                            if (f12 < 0.5f) {
                                i10 = (int) ((i33 * f12) / (f14 - f12));
                            } else {
                                this.f14581r = (int) ((i33 * ((f12 + f12) - 1.0f)) / (f14 - f12));
                                i10 = i33;
                            }
                            int i34 = i33 + i10;
                            short[] sArrL2 = l(this.f14575l, this.f14576m, i34);
                            this.f14575l = sArrL2;
                            int i35 = this.f14565b;
                            System.arraycopy(sArr3, i20 * i35, sArrL2, this.f14576m * i35, i35 * i33);
                            j(i10, this.f14565b, this.f14575l, this.f14576m + i33, sArr3, i20 + i33, sArr3, i20);
                            this.f14576m += i34;
                            i20 += i10;
                        }
                    }
                    if (this.f14571h + i20 > i19) {
                        break;
                    }
                    f14 = 1.0f;
                    i18 = 1;
                }
                int i36 = this.f14574k - i20;
                short[] sArr4 = this.f14573j;
                int i37 = this.f14565b;
                System.arraycopy(sArr4, i20 * i37, sArr4, 0, i37 * i36);
                this.f14574k = i36;
                f14 = 1.0f;
            }
        } else {
            h(this.f14573j, 0, this.f14574k);
            this.f14574k = 0;
        }
        if (f13 == f14 || this.f14576m == i17) {
            return;
        }
        int i38 = this.f14564a;
        int i39 = (int) (i38 / f13);
        while (true) {
            if (i39 <= 16384 && i38 <= 16384) {
                break;
            }
            i39 /= 2;
            i38 /= 2;
        }
        int i40 = this.f14576m - i17;
        short[] sArrL3 = l(this.f14577n, this.f14578o, i40);
        this.f14577n = sArrL3;
        short[] sArr5 = this.f14575l;
        int i41 = this.f14565b;
        System.arraycopy(sArr5, i17 * i41, sArrL3, this.f14578o * i41, i41 * i40);
        this.f14576m = i17;
        this.f14578o += i40;
        int i42 = 0;
        while (true) {
            i13 = this.f14578o;
            i14 = i13 - 1;
            if (i42 >= i14) {
                break;
            }
            while (true) {
                i15 = this.f14579p + 1;
                int i43 = i15 * i39;
                i16 = this.f14580q;
                if (i43 <= i16 * i38) {
                    break;
                }
                this.f14575l = l(this.f14575l, this.f14576m, 1);
                int i44 = 0;
                while (true) {
                    int i45 = this.f14565b;
                    if (i44 < i45) {
                        short[] sArr6 = this.f14575l;
                        int i46 = this.f14576m * i45;
                        short[] sArr7 = this.f14577n;
                        int i47 = (i42 * i45) + i44;
                        short s10 = sArr7[i47];
                        short s11 = sArr7[i47 + i45];
                        int i48 = this.f14580q * i38;
                        int i49 = this.f14579p;
                        int i50 = i49 * i39;
                        int i51 = (i49 + 1) * i39;
                        int i52 = i51 - i48;
                        int i53 = i51 - i50;
                        sArr6[i46 + i44] = (short) (((s10 * i52) + ((i53 - i52) * s11)) / i53);
                        i44++;
                    }
                }
                this.f14580q++;
                this.f14576m++;
            }
            this.f14579p = i15;
            if (i15 == i38) {
                this.f14579p = 0;
                zzdl.f(i16 == i39);
                this.f14580q = 0;
            }
            i42++;
        }
        if (i14 != 0) {
            short[] sArr8 = this.f14577n;
            int i54 = this.f14565b;
            System.arraycopy(sArr8, i14 * i54, sArr8, 0, (i13 - i14) * i54);
            this.f14578o -= i14;
        }
    }

    private final short[] l(short[] sArr, int i10, int i11) {
        int length = sArr.length;
        int i12 = this.f14565b;
        int i13 = length / i12;
        return i10 + i11 <= i13 ? sArr : Arrays.copyOf(sArr, (((i13 * 3) / 2) + i11) * i12);
    }

    public final int a() {
        int i10 = this.f14576m * this.f14565b;
        return i10 + i10;
    }

    public final int b() {
        int i10 = this.f14574k * this.f14565b;
        return i10 + i10;
    }

    public final void c() {
        this.f14574k = 0;
        this.f14576m = 0;
        this.f14578o = 0;
        this.f14579p = 0;
        this.f14580q = 0;
        this.f14581r = 0;
        this.f14582s = 0;
        this.f14583t = 0;
        this.f14584u = 0;
        this.f14585v = 0;
    }

    public final void d(ShortBuffer shortBuffer) {
        int iMin = Math.min(shortBuffer.remaining() / this.f14565b, this.f14576m);
        shortBuffer.put(this.f14575l, 0, this.f14565b * iMin);
        int i10 = this.f14576m - iMin;
        this.f14576m = i10;
        short[] sArr = this.f14575l;
        int i11 = this.f14565b;
        System.arraycopy(sArr, iMin * i11, sArr, 0, i10 * i11);
    }

    public final void e() {
        int i10;
        int i11 = this.f14574k;
        float f10 = this.f14566c;
        float f11 = this.f14567d;
        int i12 = this.f14576m + ((int) ((((i11 / (f10 / f11)) + this.f14578o) / (this.f14568e * f11)) + 0.5f));
        short[] sArr = this.f14573j;
        int i13 = this.f14571h;
        this.f14573j = l(sArr, i11, i13 + i13 + i11);
        int i14 = 0;
        while (true) {
            int i15 = this.f14571h;
            i10 = i15 + i15;
            int i16 = this.f14565b;
            if (i14 >= i10 * i16) {
                break;
            }
            this.f14573j[(i16 * i11) + i14] = 0;
            i14++;
        }
        this.f14574k += i10;
        k();
        if (this.f14576m > i12) {
            this.f14576m = i12;
        }
        this.f14574k = 0;
        this.f14581r = 0;
        this.f14578o = 0;
    }

    public final void f(ShortBuffer shortBuffer) {
        int iRemaining = shortBuffer.remaining();
        int i10 = this.f14565b;
        int i11 = iRemaining / i10;
        int i12 = i10 * i11;
        short[] sArrL = l(this.f14573j, this.f14574k, i11);
        this.f14573j = sArrL;
        shortBuffer.get(sArrL, this.f14574k * this.f14565b, (i12 + i12) / 2);
        this.f14574k += i11;
        k();
    }
}

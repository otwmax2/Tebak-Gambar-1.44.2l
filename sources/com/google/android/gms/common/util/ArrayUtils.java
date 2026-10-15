package com.google.android.gms.common.util;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Objects;
import java.lang.reflect.Array;
import java.util.Arrays;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.1.0 */
/* JADX INFO: loaded from: classes.dex */
@VisibleForTesting
@KeepForSdk
public final class ArrayUtils {
    private ArrayUtils() {
    }

    @KeepForSdk
    public static <T> T[] a(T[]... tArr) {
        if (tArr.length == 0) {
            return (T[]) ((Object[]) Array.newInstance(tArr.getClass(), 0));
        }
        int length = 0;
        for (T[] tArr2 : tArr) {
            length += tArr2.length;
        }
        T[] tArr3 = (T[]) Arrays.copyOf(tArr[0], length);
        int length2 = tArr[0].length;
        for (int i10 = 1; i10 < tArr.length; i10++) {
            T[] tArr4 = tArr[i10];
            int length3 = tArr4.length;
            System.arraycopy(tArr4, 0, tArr3, length2, length3);
            length2 += length3;
        }
        return tArr3;
    }

    @KeepForSdk
    public static boolean b(int[] iArr, int i10) {
        if (iArr == null) {
            return false;
        }
        for (int i11 : iArr) {
            if (i11 == i10) {
                return true;
            }
        }
        return false;
    }

    @KeepForSdk
    public static <T> boolean c(T[] tArr, T t10) {
        int length = tArr != null ? tArr.length : 0;
        int i10 = 0;
        while (true) {
            if (i10 >= length) {
                break;
            }
            if (!Objects.b(tArr[i10], t10)) {
                i10++;
            } else if (i10 >= 0) {
                return true;
            }
        }
        return false;
    }

    @KeepForSdk
    public static void d(StringBuilder sb, double[] dArr) {
        int length = dArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (i10 != 0) {
                sb.append(",");
            }
            sb.append(Double.toString(dArr[i10]));
        }
    }

    @KeepForSdk
    public static void e(StringBuilder sb, float[] fArr) {
        int length = fArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (i10 != 0) {
                sb.append(",");
            }
            sb.append(Float.toString(fArr[i10]));
        }
    }

    @KeepForSdk
    public static void f(StringBuilder sb, int[] iArr) {
        int length = iArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (i10 != 0) {
                sb.append(",");
            }
            sb.append(Integer.toString(iArr[i10]));
        }
    }

    @KeepForSdk
    public static void g(StringBuilder sb, long[] jArr) {
        int length = jArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (i10 != 0) {
                sb.append(",");
            }
            sb.append(Long.toString(jArr[i10]));
        }
    }

    @KeepForSdk
    public static <T> void h(StringBuilder sb, T[] tArr) {
        int length = tArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (i10 != 0) {
                sb.append(",");
            }
            sb.append(tArr[i10]);
        }
    }

    @KeepForSdk
    public static void i(StringBuilder sb, boolean[] zArr) {
        int length = zArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (i10 != 0) {
                sb.append(",");
            }
            sb.append(Boolean.toString(zArr[i10]));
        }
    }

    @KeepForSdk
    public static void j(StringBuilder sb, String[] strArr) {
        int length = strArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (i10 != 0) {
                sb.append(",");
            }
            sb.append("\"");
            sb.append(strArr[i10]);
            sb.append("\"");
        }
    }
}

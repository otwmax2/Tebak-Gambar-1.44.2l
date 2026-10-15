package androidx.core.graphics.drawable;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Shader;
import android.graphics.drawable.AdaptiveIconDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Icon;
import android.net.Uri;
import android.os.Build;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Log;
import androidx.versionedparcelable.CustomVersionedParcelable;
import com.facebook.internal.security.CertificateUtil;
import com.facebook.share.internal.ShareInternalUtility;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes.dex */
public class IconCompat extends CustomVersionedParcelable {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    static final PorterDuff.Mode f2205k = PorterDuff.Mode.SRC_IN;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f2206a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    Object f2207b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public byte[] f2208c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Parcelable f2209d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f2210e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f2211f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public ColorStateList f2212g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    PorterDuff.Mode f2213h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public String f2214i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public String f2215j;

    static class a {
        static IconCompat a(Object obj) {
            androidx.core.util.h.f(obj);
            int iD = d(obj);
            if (iD == 2) {
                return IconCompat.h(null, c(obj), b(obj));
            }
            if (iD == 4) {
                return IconCompat.f(e(obj));
            }
            if (iD == 6) {
                return IconCompat.c(e(obj));
            }
            IconCompat iconCompat = new IconCompat(-1);
            iconCompat.f2207b = obj;
            return iconCompat;
        }

        static int b(Object obj) {
            if (Build.VERSION.SDK_INT >= 28) {
                return c.a(obj);
            }
            try {
                return ((Integer) obj.getClass().getMethod("getResId", new Class[0]).invoke(obj, new Object[0])).intValue();
            } catch (IllegalAccessException e10) {
                Log.e("IconCompat", "Unable to get icon resource", e10);
                return 0;
            } catch (NoSuchMethodException e11) {
                Log.e("IconCompat", "Unable to get icon resource", e11);
                return 0;
            } catch (InvocationTargetException e12) {
                Log.e("IconCompat", "Unable to get icon resource", e12);
                return 0;
            }
        }

        static String c(Object obj) {
            if (Build.VERSION.SDK_INT >= 28) {
                return c.b(obj);
            }
            try {
                return (String) obj.getClass().getMethod("getResPackage", new Class[0]).invoke(obj, new Object[0]);
            } catch (IllegalAccessException e10) {
                Log.e("IconCompat", "Unable to get icon package", e10);
                return null;
            } catch (NoSuchMethodException e11) {
                Log.e("IconCompat", "Unable to get icon package", e11);
                return null;
            } catch (InvocationTargetException e12) {
                Log.e("IconCompat", "Unable to get icon package", e12);
                return null;
            }
        }

        static int d(Object obj) {
            if (Build.VERSION.SDK_INT >= 28) {
                return c.c(obj);
            }
            try {
                return ((Integer) obj.getClass().getMethod("getType", new Class[0]).invoke(obj, new Object[0])).intValue();
            } catch (IllegalAccessException e10) {
                Log.e("IconCompat", "Unable to get icon type " + obj, e10);
                return -1;
            } catch (NoSuchMethodException e11) {
                Log.e("IconCompat", "Unable to get icon type " + obj, e11);
                return -1;
            } catch (InvocationTargetException e12) {
                Log.e("IconCompat", "Unable to get icon type " + obj, e12);
                return -1;
            }
        }

        static Uri e(Object obj) {
            if (Build.VERSION.SDK_INT >= 28) {
                return c.d(obj);
            }
            try {
                return (Uri) obj.getClass().getMethod("getUri", new Class[0]).invoke(obj, new Object[0]);
            } catch (IllegalAccessException e10) {
                Log.e("IconCompat", "Unable to get icon uri", e10);
                return null;
            } catch (NoSuchMethodException e11) {
                Log.e("IconCompat", "Unable to get icon uri", e11);
                return null;
            } catch (InvocationTargetException e12) {
                Log.e("IconCompat", "Unable to get icon uri", e12);
                return null;
            }
        }

        static Drawable f(Icon icon, Context context) {
            return icon.loadDrawable(context);
        }

        static Icon g(IconCompat iconCompat, Context context) {
            Icon iconCreateWithBitmap;
            switch (iconCompat.f2206a) {
                case -1:
                    return (Icon) iconCompat.f2207b;
                case 0:
                default:
                    throw new IllegalArgumentException("Unknown type");
                case 1:
                    iconCreateWithBitmap = Icon.createWithBitmap((Bitmap) iconCompat.f2207b);
                    break;
                case 2:
                    iconCreateWithBitmap = Icon.createWithResource(iconCompat.k(), iconCompat.f2210e);
                    break;
                case 3:
                    iconCreateWithBitmap = Icon.createWithData((byte[]) iconCompat.f2207b, iconCompat.f2210e, iconCompat.f2211f);
                    break;
                case 4:
                    iconCreateWithBitmap = Icon.createWithContentUri((String) iconCompat.f2207b);
                    break;
                case 5:
                    iconCreateWithBitmap = Build.VERSION.SDK_INT < 26 ? Icon.createWithBitmap(IconCompat.b((Bitmap) iconCompat.f2207b, false)) : b.b((Bitmap) iconCompat.f2207b);
                    break;
                case 6:
                    int i10 = Build.VERSION.SDK_INT;
                    if (i10 >= 30) {
                        iconCreateWithBitmap = d.a(iconCompat.m());
                    } else {
                        if (context == null) {
                            throw new IllegalArgumentException("Context is required to resolve the file uri of the icon: " + iconCompat.m());
                        }
                        InputStream inputStreamN = iconCompat.n(context);
                        if (inputStreamN == null) {
                            throw new IllegalStateException("Cannot load adaptive icon from uri: " + iconCompat.m());
                        }
                        if (i10 < 26) {
                            iconCreateWithBitmap = Icon.createWithBitmap(IconCompat.b(BitmapFactory.decodeStream(inputStreamN), false));
                        } else {
                            iconCreateWithBitmap = b.b(BitmapFactory.decodeStream(inputStreamN));
                        }
                    }
                    break;
            }
            ColorStateList colorStateList = iconCompat.f2212g;
            if (colorStateList != null) {
                iconCreateWithBitmap.setTintList(colorStateList);
            }
            PorterDuff.Mode mode = iconCompat.f2213h;
            if (mode != IconCompat.f2205k) {
                iconCreateWithBitmap.setTintMode(mode);
            }
            return iconCreateWithBitmap;
        }
    }

    static class b {
        static Drawable a(Drawable drawable, Drawable drawable2) {
            return new AdaptiveIconDrawable(drawable, drawable2);
        }

        static Icon b(Bitmap bitmap) {
            return Icon.createWithAdaptiveBitmap(bitmap);
        }
    }

    static class c {
        static int a(Object obj) {
            return ((Icon) obj).getResId();
        }

        static String b(Object obj) {
            return ((Icon) obj).getResPackage();
        }

        static int c(Object obj) {
            return ((Icon) obj).getType();
        }

        static Uri d(Object obj) {
            return ((Icon) obj).getUri();
        }
    }

    static class d {
        static Icon a(Uri uri) {
            return Icon.createWithAdaptiveBitmapContentUri(uri);
        }
    }

    public IconCompat() {
        this.f2206a = -1;
        this.f2208c = null;
        this.f2209d = null;
        this.f2210e = 0;
        this.f2211f = 0;
        this.f2212g = null;
        this.f2213h = f2205k;
        this.f2214i = null;
    }

    public static IconCompat a(Icon icon) {
        return a.a(icon);
    }

    static Bitmap b(Bitmap bitmap, boolean z10) {
        int iMin = (int) (Math.min(bitmap.getWidth(), bitmap.getHeight()) * 0.6666667f);
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(iMin, iMin, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        Paint paint = new Paint(3);
        float f10 = iMin;
        float f11 = 0.5f * f10;
        float f12 = 0.9166667f * f11;
        if (z10) {
            float f13 = 0.010416667f * f10;
            paint.setColor(0);
            paint.setShadowLayer(f13, 0.0f, f10 * 0.020833334f, 1023410176);
            canvas.drawCircle(f11, f11, f12, paint);
            paint.setShadowLayer(f13, 0.0f, 0.0f, 503316480);
            canvas.drawCircle(f11, f11, f12, paint);
            paint.clearShadowLayer();
        }
        paint.setColor(-16777216);
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        BitmapShader bitmapShader = new BitmapShader(bitmap, tileMode, tileMode);
        Matrix matrix = new Matrix();
        matrix.setTranslate((-(bitmap.getWidth() - iMin)) / 2.0f, (-(bitmap.getHeight() - iMin)) / 2.0f);
        bitmapShader.setLocalMatrix(matrix);
        paint.setShader(bitmapShader);
        canvas.drawCircle(f11, f11, f12, paint);
        canvas.setBitmap(null);
        return bitmapCreateBitmap;
    }

    public static IconCompat c(Uri uri) {
        androidx.core.util.c.c(uri);
        return d(uri.toString());
    }

    public static IconCompat d(String str) {
        androidx.core.util.c.c(str);
        IconCompat iconCompat = new IconCompat(6);
        iconCompat.f2207b = str;
        return iconCompat;
    }

    public static IconCompat e(Bitmap bitmap) {
        androidx.core.util.c.c(bitmap);
        IconCompat iconCompat = new IconCompat(1);
        iconCompat.f2207b = bitmap;
        return iconCompat;
    }

    public static IconCompat f(Uri uri) {
        androidx.core.util.c.c(uri);
        return g(uri.toString());
    }

    public static IconCompat g(String str) {
        androidx.core.util.c.c(str);
        IconCompat iconCompat = new IconCompat(4);
        iconCompat.f2207b = str;
        return iconCompat;
    }

    public static IconCompat h(Resources resources, String str, int i10) {
        androidx.core.util.c.c(str);
        if (i10 == 0) {
            throw new IllegalArgumentException("Drawable resource ID must not be 0");
        }
        IconCompat iconCompat = new IconCompat(2);
        iconCompat.f2210e = i10;
        if (resources != null) {
            try {
                iconCompat.f2207b = resources.getResourceName(i10);
            } catch (Resources.NotFoundException unused) {
                throw new IllegalArgumentException("Icon resource cannot be found");
            }
        } else {
            iconCompat.f2207b = str;
        }
        iconCompat.f2215j = str;
        return iconCompat;
    }

    private static String s(int i10) {
        switch (i10) {
            case 1:
                return "BITMAP";
            case 2:
                return "RESOURCE";
            case 3:
                return "DATA";
            case 4:
                return "URI";
            case 5:
                return "BITMAP_MASKABLE";
            case 6:
                return "URI_MASKABLE";
            default:
                return "UNKNOWN";
        }
    }

    public Bitmap i() {
        int i10 = this.f2206a;
        if (i10 == -1 && Build.VERSION.SDK_INT >= 23) {
            Object obj = this.f2207b;
            if (obj instanceof Bitmap) {
                return (Bitmap) obj;
            }
            return null;
        }
        if (i10 == 1) {
            return (Bitmap) this.f2207b;
        }
        if (i10 == 5) {
            return b((Bitmap) this.f2207b, true);
        }
        throw new IllegalStateException("called getBitmap() on " + this);
    }

    public int j() {
        int i10 = this.f2206a;
        if (i10 == -1 && Build.VERSION.SDK_INT >= 23) {
            return a.b(this.f2207b);
        }
        if (i10 == 2) {
            return this.f2210e;
        }
        throw new IllegalStateException("called getResId() on " + this);
    }

    public String k() {
        int i10 = this.f2206a;
        if (i10 == -1 && Build.VERSION.SDK_INT >= 23) {
            return a.c(this.f2207b);
        }
        if (i10 == 2) {
            String str = this.f2215j;
            return (str == null || TextUtils.isEmpty(str)) ? ((String) this.f2207b).split(CertificateUtil.DELIMITER, -1)[0] : this.f2215j;
        }
        throw new IllegalStateException("called getResPackage() on " + this);
    }

    public int l() {
        int i10 = this.f2206a;
        return (i10 != -1 || Build.VERSION.SDK_INT < 23) ? i10 : a.d(this.f2207b);
    }

    public Uri m() {
        int i10 = this.f2206a;
        if (i10 == -1 && Build.VERSION.SDK_INT >= 23) {
            return a.e(this.f2207b);
        }
        if (i10 == 4 || i10 == 6) {
            return Uri.parse((String) this.f2207b);
        }
        throw new IllegalStateException("called getUri() on " + this);
    }

    public InputStream n(Context context) {
        Uri uriM = m();
        String scheme = uriM.getScheme();
        if ("content".equals(scheme) || ShareInternalUtility.STAGING_PARAM.equals(scheme)) {
            try {
                return context.getContentResolver().openInputStream(uriM);
            } catch (Exception e10) {
                Log.w("IconCompat", "Unable to load image from URI: " + uriM, e10);
                return null;
            }
        }
        try {
            return new FileInputStream(new File((String) this.f2207b));
        } catch (FileNotFoundException e11) {
            Log.w("IconCompat", "Unable to load image from path: " + uriM, e11);
            return null;
        }
    }

    public void o() {
        this.f2213h = PorterDuff.Mode.valueOf(this.f2214i);
        switch (this.f2206a) {
            case -1:
                Parcelable parcelable = this.f2209d;
                if (parcelable == null) {
                    throw new IllegalArgumentException("Invalid icon");
                }
                this.f2207b = parcelable;
                return;
            case 0:
            default:
                return;
            case 1:
            case 5:
                Parcelable parcelable2 = this.f2209d;
                if (parcelable2 != null) {
                    this.f2207b = parcelable2;
                    return;
                }
                byte[] bArr = this.f2208c;
                this.f2207b = bArr;
                this.f2206a = 3;
                this.f2210e = 0;
                this.f2211f = bArr.length;
                return;
            case 2:
            case 4:
            case 6:
                String str = new String(this.f2208c, Charset.forName("UTF-16"));
                this.f2207b = str;
                if (this.f2206a == 2 && this.f2215j == null) {
                    this.f2215j = str.split(CertificateUtil.DELIMITER, -1)[0];
                    return;
                }
                return;
            case 3:
                this.f2207b = this.f2208c;
                return;
        }
    }

    public void p(boolean z10) {
        this.f2214i = this.f2213h.name();
        switch (this.f2206a) {
            case -1:
                if (z10) {
                    throw new IllegalArgumentException("Can't serialize Icon created with IconCompat#createFromIcon");
                }
                this.f2209d = (Parcelable) this.f2207b;
                return;
            case 0:
            default:
                return;
            case 1:
            case 5:
                if (!z10) {
                    this.f2209d = (Parcelable) this.f2207b;
                    return;
                }
                Bitmap bitmap = (Bitmap) this.f2207b;
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                bitmap.compress(Bitmap.CompressFormat.PNG, 90, byteArrayOutputStream);
                this.f2208c = byteArrayOutputStream.toByteArray();
                return;
            case 2:
                this.f2208c = ((String) this.f2207b).getBytes(Charset.forName("UTF-16"));
                return;
            case 3:
                this.f2208c = (byte[]) this.f2207b;
                return;
            case 4:
            case 6:
                this.f2208c = this.f2207b.toString().getBytes(Charset.forName("UTF-16"));
                return;
        }
    }

    @Deprecated
    public Icon q() {
        return r(null);
    }

    public Icon r(Context context) {
        if (Build.VERSION.SDK_INT >= 23) {
            return a.g(this, context);
        }
        throw new UnsupportedOperationException("This method is only supported on API level 23+");
    }

    public String toString() {
        if (this.f2206a == -1) {
            return String.valueOf(this.f2207b);
        }
        StringBuilder sb = new StringBuilder("Icon(typ=");
        sb.append(s(this.f2206a));
        switch (this.f2206a) {
            case 1:
            case 5:
                sb.append(" size=");
                sb.append(((Bitmap) this.f2207b).getWidth());
                sb.append("x");
                sb.append(((Bitmap) this.f2207b).getHeight());
                break;
            case 2:
                sb.append(" pkg=");
                sb.append(this.f2215j);
                sb.append(" id=");
                sb.append(String.format("0x%08x", Integer.valueOf(j())));
                break;
            case 3:
                sb.append(" len=");
                sb.append(this.f2210e);
                if (this.f2211f != 0) {
                    sb.append(" off=");
                    sb.append(this.f2211f);
                }
                break;
            case 4:
            case 6:
                sb.append(" uri=");
                sb.append(this.f2207b);
                break;
        }
        if (this.f2212g != null) {
            sb.append(" tint=");
            sb.append(this.f2212g);
        }
        if (this.f2213h != f2205k) {
            sb.append(" mode=");
            sb.append(this.f2213h);
        }
        sb.append(")");
        return sb.toString();
    }

    IconCompat(int i10) {
        this.f2206a = -1;
        this.f2208c = null;
        this.f2209d = null;
        this.f2210e = 0;
        this.f2211f = 0;
        this.f2212g = null;
        this.f2213h = f2205k;
        this.f2214i = null;
        this.f2206a = i10;
    }
}

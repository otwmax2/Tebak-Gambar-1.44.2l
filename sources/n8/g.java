package n8;

import com.tebakgambar.model.ComingSoon;
import com.tebakgambar.model.Slider;
import com.tebakgambar.sticker.model.Sticker;
import java.util.List;

/* JADX INFO: compiled from: TGDataTypeConverter.java */
/* JADX INFO: loaded from: classes2.dex */
public class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static com.google.gson.f f32508a = new com.google.gson.f();

    /* JADX INFO: compiled from: TGDataTypeConverter.java */
    class a extends g7.a<List<Slider.Image>> {
        a() {
        }
    }

    /* JADX INFO: compiled from: TGDataTypeConverter.java */
    class b extends g7.a<List<Sticker>> {
        b() {
        }
    }

    public static String a(ComingSoon comingSoon) {
        return f32508a.t(comingSoon);
    }

    public static String b(int[] iArr) {
        return f32508a.t(iArr);
    }

    public static String c(List<Slider.Image> list) {
        return f32508a.t(list);
    }

    public static String d(List<Sticker> list) {
        return f32508a.t(list);
    }

    public static ComingSoon e(String str) {
        if (str == null) {
            return null;
        }
        return (ComingSoon) f32508a.k(str, ComingSoon.class);
    }

    public static int[] f(String str) {
        return str == null ? new int[0] : (int[]) f32508a.k(str, int[].class);
    }

    public static List<Slider.Image> g(String str) {
        return (List) f32508a.l(str, new a().getType());
    }

    public static List<Sticker> h(String str) {
        return (List) f32508a.l(str, new b().getType());
    }
}

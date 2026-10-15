package n8;

import android.database.Cursor;
import androidx.room.h0;
import b1.k;
import com.tebakgambar.model.Slider;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: compiled from: SliderDao_Impl.java */
/* JADX INFO: loaded from: classes2.dex */
public final class d extends c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final h0 f32502a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final x0.g<Slider> f32503b;

    /* JADX INFO: compiled from: SliderDao_Impl.java */
    class a extends x0.g<Slider> {
        a(h0 h0Var) {
            super(h0Var);
        }

        @Override // x0.l
        public String d() {
            return "INSERT OR REPLACE INTO `Slider` (`id`,`type`,`images`) VALUES (?,?,?)";
        }

        @Override // x0.g
        /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
        public void g(k kVar, Slider slider) {
            kVar.s1(1, slider.id);
            String str = slider.type;
            if (str == null) {
                kVar.z2(2);
            } else {
                kVar.k0(2, str);
            }
            String strC = g.c(slider.images);
            if (strC == null) {
                kVar.z2(3);
            } else {
                kVar.k0(3, strC);
            }
        }
    }

    public d(h0 h0Var) {
        this.f32502a = h0Var;
        this.f32503b = new a(h0Var);
    }

    public static List<Class<?>> e() {
        return Collections.emptyList();
    }

    @Override // n8.c
    public List<Slider> a() {
        x0.k kVarD = x0.k.d("SELECT * FROM Slider", 0);
        this.f32502a.d();
        Cursor cursorB = z0.c.b(this.f32502a, kVarD, false, null);
        try {
            int iE = z0.b.e(cursorB, "id");
            int iE2 = z0.b.e(cursorB, "type");
            int iE3 = z0.b.e(cursorB, "images");
            ArrayList arrayList = new ArrayList(cursorB.getCount());
            while (cursorB.moveToNext()) {
                Slider slider = new Slider();
                slider.id = cursorB.getInt(iE);
                if (cursorB.isNull(iE2)) {
                    slider.type = null;
                } else {
                    slider.type = cursorB.getString(iE2);
                }
                slider.images = g.g(cursorB.isNull(iE3) ? null : cursorB.getString(iE3));
                arrayList.add(slider);
            }
            return arrayList;
        } finally {
            cursorB.close();
            kVarD.g();
        }
    }

    @Override // n8.c
    public Slider b() {
        x0.k kVarD = x0.k.d("SELECT * FROM Slider where type = \"soalreceh\" LIMIT 1", 0);
        this.f32502a.d();
        Slider slider = null;
        String string = null;
        Cursor cursorB = z0.c.b(this.f32502a, kVarD, false, null);
        try {
            int iE = z0.b.e(cursorB, "id");
            int iE2 = z0.b.e(cursorB, "type");
            int iE3 = z0.b.e(cursorB, "images");
            if (cursorB.moveToFirst()) {
                Slider slider2 = new Slider();
                slider2.id = cursorB.getInt(iE);
                if (cursorB.isNull(iE2)) {
                    slider2.type = null;
                } else {
                    slider2.type = cursorB.getString(iE2);
                }
                if (!cursorB.isNull(iE3)) {
                    string = cursorB.getString(iE3);
                }
                slider2.images = g.g(string);
                slider = slider2;
            }
            return slider;
        } finally {
            cursorB.close();
            kVarD.g();
        }
    }

    @Override // n8.c
    public Slider c(int i10) {
        x0.k kVarD = x0.k.d("SELECT * FROM Slider where id = ? LIMIT 1", 1);
        kVarD.s1(1, i10);
        this.f32502a.d();
        Slider slider = null;
        String string = null;
        Cursor cursorB = z0.c.b(this.f32502a, kVarD, false, null);
        try {
            int iE = z0.b.e(cursorB, "id");
            int iE2 = z0.b.e(cursorB, "type");
            int iE3 = z0.b.e(cursorB, "images");
            if (cursorB.moveToFirst()) {
                Slider slider2 = new Slider();
                slider2.id = cursorB.getInt(iE);
                if (cursorB.isNull(iE2)) {
                    slider2.type = null;
                } else {
                    slider2.type = cursorB.getString(iE2);
                }
                if (!cursorB.isNull(iE3)) {
                    string = cursorB.getString(iE3);
                }
                slider2.images = g.g(string);
                slider = slider2;
            }
            return slider;
        } finally {
            cursorB.close();
            kVarD.g();
        }
    }

    @Override // n8.c
    public void d(List<Slider> list) {
        this.f32502a.d();
        this.f32502a.e();
        try {
            this.f32503b.h(list);
            this.f32502a.A();
        } finally {
            this.f32502a.i();
        }
    }
}

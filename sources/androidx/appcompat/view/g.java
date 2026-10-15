package androidx.appcompat.view;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.PorterDuff;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Xml;
import android.view.InflateException;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import androidx.appcompat.view.menu.j;
import androidx.appcompat.widget.f0;
import androidx.appcompat.widget.w0;
import androidx.core.view.l;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: compiled from: SupportMenuInflater.java */
/* JADX INFO: loaded from: classes.dex */
public class g extends MenuInflater {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    static final Class<?>[] f532e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    static final Class<?>[] f533f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final Object[] f534a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final Object[] f535b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    Context f536c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Object f537d;

    /* JADX INFO: compiled from: SupportMenuInflater.java */
    private static class a implements MenuItem.OnMenuItemClickListener {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static final Class<?>[] f538c = {MenuItem.class};

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Object f539a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private Method f540b;

        public a(Object obj, String str) {
            this.f539a = obj;
            Class<?> cls = obj.getClass();
            try {
                this.f540b = cls.getMethod(str, f538c);
            } catch (Exception e10) {
                InflateException inflateException = new InflateException("Couldn't resolve menu item onClick handler " + str + " in class " + cls.getName());
                inflateException.initCause(e10);
                throw inflateException;
            }
        }

        @Override // android.view.MenuItem.OnMenuItemClickListener
        public boolean onMenuItemClick(MenuItem menuItem) {
            try {
                if (this.f540b.getReturnType() == Boolean.TYPE) {
                    return ((Boolean) this.f540b.invoke(this.f539a, menuItem)).booleanValue();
                }
                this.f540b.invoke(this.f539a, menuItem);
                return true;
            } catch (Exception e10) {
                throw new RuntimeException(e10);
            }
        }
    }

    /* JADX INFO: compiled from: SupportMenuInflater.java */
    private class b {
        androidx.core.view.b A;
        private CharSequence B;
        private CharSequence C;
        private ColorStateList D = null;
        private PorterDuff.Mode E = null;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Menu f541a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f542b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f543c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f544d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f545e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private boolean f546f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private boolean f547g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private boolean f548h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private int f549i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private int f550j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private CharSequence f551k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private CharSequence f552l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private int f553m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private char f554n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private int f555o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private char f556p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private int f557q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        private int f558r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        private boolean f559s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        private boolean f560t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        private boolean f561u;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        private int f562v;

        /* JADX INFO: renamed from: w, reason: collision with root package name */
        private int f563w;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        private String f564x;

        /* JADX INFO: renamed from: y, reason: collision with root package name */
        private String f565y;

        /* JADX INFO: renamed from: z, reason: collision with root package name */
        private String f566z;

        public b(Menu menu) {
            this.f541a = menu;
            h();
        }

        private char c(String str) {
            if (str == null) {
                return (char) 0;
            }
            return str.charAt(0);
        }

        private <T> T e(String str, Class<?>[] clsArr, Object[] objArr) {
            try {
                Constructor<?> constructor = Class.forName(str, false, g.this.f536c.getClassLoader()).getConstructor(clsArr);
                constructor.setAccessible(true);
                return (T) constructor.newInstance(objArr);
            } catch (Exception e10) {
                Log.w("SupportMenuInflater", "Cannot instantiate class: " + str, e10);
                return null;
            }
        }

        private void i(MenuItem menuItem) {
            boolean z10 = false;
            menuItem.setChecked(this.f559s).setVisible(this.f560t).setEnabled(this.f561u).setCheckable(this.f558r >= 1).setTitleCondensed(this.f552l).setIcon(this.f553m);
            int i10 = this.f562v;
            if (i10 >= 0) {
                menuItem.setShowAsAction(i10);
            }
            if (this.f566z != null) {
                if (g.this.f536c.isRestricted()) {
                    throw new IllegalStateException("The android:onClick attribute cannot be used within a restricted context");
                }
                menuItem.setOnMenuItemClickListener(new a(g.this.b(), this.f566z));
            }
            if (this.f558r >= 2) {
                if (menuItem instanceof androidx.appcompat.view.menu.i) {
                    ((androidx.appcompat.view.menu.i) menuItem).t(true);
                } else if (menuItem instanceof j) {
                    ((j) menuItem).h(true);
                }
            }
            String str = this.f564x;
            if (str != null) {
                menuItem.setActionView((View) e(str, g.f532e, g.this.f534a));
                z10 = true;
            }
            int i11 = this.f563w;
            if (i11 > 0) {
                if (z10) {
                    Log.w("SupportMenuInflater", "Ignoring attribute 'itemActionViewLayout'. Action view already specified.");
                } else {
                    menuItem.setActionView(i11);
                }
            }
            androidx.core.view.b bVar = this.A;
            if (bVar != null) {
                l.a(menuItem, bVar);
            }
            l.c(menuItem, this.B);
            l.g(menuItem, this.C);
            l.b(menuItem, this.f554n, this.f555o);
            l.f(menuItem, this.f556p, this.f557q);
            PorterDuff.Mode mode = this.E;
            if (mode != null) {
                l.e(menuItem, mode);
            }
            ColorStateList colorStateList = this.D;
            if (colorStateList != null) {
                l.d(menuItem, colorStateList);
            }
        }

        public void a() {
            this.f548h = true;
            i(this.f541a.add(this.f542b, this.f549i, this.f550j, this.f551k));
        }

        public SubMenu b() {
            this.f548h = true;
            SubMenu subMenuAddSubMenu = this.f541a.addSubMenu(this.f542b, this.f549i, this.f550j, this.f551k);
            i(subMenuAddSubMenu.getItem());
            return subMenuAddSubMenu;
        }

        public boolean d() {
            return this.f548h;
        }

        public void f(AttributeSet attributeSet) {
            TypedArray typedArrayObtainStyledAttributes = g.this.f536c.obtainStyledAttributes(attributeSet, f.j.f29187o1);
            this.f542b = typedArrayObtainStyledAttributes.getResourceId(f.j.f29197q1, 0);
            this.f543c = typedArrayObtainStyledAttributes.getInt(f.j.f29207s1, 0);
            this.f544d = typedArrayObtainStyledAttributes.getInt(f.j.f29212t1, 0);
            this.f545e = typedArrayObtainStyledAttributes.getInt(f.j.f29217u1, 0);
            this.f546f = typedArrayObtainStyledAttributes.getBoolean(f.j.f29202r1, true);
            this.f547g = typedArrayObtainStyledAttributes.getBoolean(f.j.f29192p1, true);
            typedArrayObtainStyledAttributes.recycle();
        }

        public void g(AttributeSet attributeSet) {
            w0 w0VarU = w0.u(g.this.f536c, attributeSet, f.j.f29222v1);
            this.f549i = w0VarU.n(f.j.f29237y1, 0);
            this.f550j = (w0VarU.k(f.j.B1, this.f543c) & (-65536)) | (w0VarU.k(f.j.C1, this.f544d) & 65535);
            this.f551k = w0VarU.p(f.j.D1);
            this.f552l = w0VarU.p(f.j.E1);
            this.f553m = w0VarU.n(f.j.f29227w1, 0);
            this.f554n = c(w0VarU.o(f.j.F1));
            this.f555o = w0VarU.k(f.j.M1, 4096);
            this.f556p = c(w0VarU.o(f.j.G1));
            this.f557q = w0VarU.k(f.j.Q1, 4096);
            int i10 = f.j.H1;
            if (w0VarU.s(i10)) {
                this.f558r = w0VarU.a(i10, false) ? 1 : 0;
            } else {
                this.f558r = this.f545e;
            }
            this.f559s = w0VarU.a(f.j.f29242z1, false);
            this.f560t = w0VarU.a(f.j.A1, this.f546f);
            this.f561u = w0VarU.a(f.j.f29232x1, this.f547g);
            this.f562v = w0VarU.k(f.j.R1, -1);
            this.f566z = w0VarU.o(f.j.I1);
            this.f563w = w0VarU.n(f.j.J1, 0);
            this.f564x = w0VarU.o(f.j.L1);
            String strO = w0VarU.o(f.j.K1);
            this.f565y = strO;
            boolean z10 = strO != null;
            if (z10 && this.f563w == 0 && this.f564x == null) {
                this.A = (androidx.core.view.b) e(strO, g.f533f, g.this.f535b);
            } else {
                if (z10) {
                    Log.w("SupportMenuInflater", "Ignoring attribute 'actionProviderClass'. Action view already specified.");
                }
                this.A = null;
            }
            this.B = w0VarU.p(f.j.N1);
            this.C = w0VarU.p(f.j.S1);
            int i11 = f.j.P1;
            if (w0VarU.s(i11)) {
                this.E = f0.d(w0VarU.k(i11, -1), this.E);
            } else {
                this.E = null;
            }
            int i12 = f.j.O1;
            if (w0VarU.s(i12)) {
                this.D = w0VarU.c(i12);
            } else {
                this.D = null;
            }
            w0VarU.w();
            this.f548h = false;
        }

        public void h() {
            this.f542b = 0;
            this.f543c = 0;
            this.f544d = 0;
            this.f545e = 0;
            this.f546f = true;
            this.f547g = true;
        }
    }

    static {
        Class<?>[] clsArr = {Context.class};
        f532e = clsArr;
        f533f = clsArr;
    }

    public g(Context context) {
        super(context);
        this.f536c = context;
        Object[] objArr = {context};
        this.f534a = objArr;
        this.f535b = objArr;
    }

    private Object a(Object obj) {
        return (!(obj instanceof Activity) && (obj instanceof ContextWrapper)) ? a(((ContextWrapper) obj).getBaseContext()) : obj;
    }

    private void c(XmlPullParser xmlPullParser, AttributeSet attributeSet, Menu menu) throws XmlPullParserException, IOException {
        b bVar = new b(menu);
        int eventType = xmlPullParser.getEventType();
        while (true) {
            if (eventType == 2) {
                String name = xmlPullParser.getName();
                if (!name.equals("menu")) {
                    throw new RuntimeException("Expecting menu, got " + name);
                }
                eventType = xmlPullParser.next();
            } else {
                eventType = xmlPullParser.next();
                if (eventType == 1) {
                    break;
                }
            }
        }
        String str = null;
        boolean z10 = false;
        boolean z11 = false;
        while (!z10) {
            if (eventType == 1) {
                throw new RuntimeException("Unexpected end of document");
            }
            if (eventType != 2) {
                if (eventType == 3) {
                    String name2 = xmlPullParser.getName();
                    if (z11 && name2.equals(str)) {
                        str = null;
                        z11 = false;
                    } else if (name2.equals("group")) {
                        bVar.h();
                    } else if (name2.equals("item")) {
                        if (!bVar.d()) {
                            androidx.core.view.b bVar2 = bVar.A;
                            if (bVar2 == null || !bVar2.a()) {
                                bVar.a();
                            } else {
                                bVar.b();
                            }
                        }
                    } else if (name2.equals("menu")) {
                        z10 = true;
                    }
                }
            } else if (!z11) {
                String name3 = xmlPullParser.getName();
                if (name3.equals("group")) {
                    bVar.f(attributeSet);
                } else if (name3.equals("item")) {
                    bVar.g(attributeSet);
                } else if (name3.equals("menu")) {
                    c(xmlPullParser, attributeSet, bVar.b());
                } else {
                    str = name3;
                    z11 = true;
                }
            }
            eventType = xmlPullParser.next();
        }
    }

    Object b() {
        if (this.f537d == null) {
            this.f537d = a(this.f536c);
        }
        return this.f537d;
    }

    @Override // android.view.MenuInflater
    public void inflate(int i10, Menu menu) {
        if (!(menu instanceof x.a)) {
            super.inflate(i10, menu);
            return;
        }
        XmlResourceParser layout = null;
        try {
            try {
                try {
                    layout = this.f536c.getResources().getLayout(i10);
                    c(layout, Xml.asAttributeSet(layout), menu);
                } catch (XmlPullParserException e10) {
                    throw new InflateException("Error inflating menu XML", e10);
                }
            } catch (IOException e11) {
                throw new InflateException("Error inflating menu XML", e11);
            }
        } finally {
            if (layout != null) {
                layout.close();
            }
        }
    }
}

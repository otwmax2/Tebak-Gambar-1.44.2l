package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import android.util.Xml;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.e;
import com.vungle.mediation.BuildConfig;
import java.io.IOException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: compiled from: ConstraintSet.java */
/* JADX INFO: loaded from: classes.dex */
public class d {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final int[] f1572f = {0, 4, 8};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static SparseIntArray f1573g = new SparseIntArray();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static SparseIntArray f1574h = new SparseIntArray();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f1575a = BuildConfig.FLAVOR;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f1576b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private HashMap<String, androidx.constraintlayout.widget.a> f1577c = new HashMap<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f1578d = true;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private HashMap<Integer, a> f1579e = new HashMap<>();

    /* JADX INFO: compiled from: ConstraintSet.java */
    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f1580a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        String f1581b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final C0022d f1582c = new C0022d();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final c f1583d = new c();

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final b f1584e = new b();

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final e f1585f = new e();

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public HashMap<String, androidx.constraintlayout.widget.a> f1586g = new HashMap<>();

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        C0021a f1587h;

        /* JADX INFO: renamed from: androidx.constraintlayout.widget.d$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: ConstraintSet.java */
        static class C0021a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            int[] f1588a = new int[10];

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            int[] f1589b = new int[10];

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            int f1590c = 0;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            int[] f1591d = new int[10];

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            float[] f1592e = new float[10];

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            int f1593f = 0;

            /* JADX INFO: renamed from: g, reason: collision with root package name */
            int[] f1594g = new int[5];

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            String[] f1595h = new String[5];

            /* JADX INFO: renamed from: i, reason: collision with root package name */
            int f1596i = 0;

            /* JADX INFO: renamed from: j, reason: collision with root package name */
            int[] f1597j = new int[4];

            /* JADX INFO: renamed from: k, reason: collision with root package name */
            boolean[] f1598k = new boolean[4];

            /* JADX INFO: renamed from: l, reason: collision with root package name */
            int f1599l = 0;

            C0021a() {
            }

            void a(int i10, float f10) {
                int i11 = this.f1593f;
                int[] iArr = this.f1591d;
                if (i11 >= iArr.length) {
                    this.f1591d = Arrays.copyOf(iArr, iArr.length * 2);
                    float[] fArr = this.f1592e;
                    this.f1592e = Arrays.copyOf(fArr, fArr.length * 2);
                }
                int[] iArr2 = this.f1591d;
                int i12 = this.f1593f;
                iArr2[i12] = i10;
                float[] fArr2 = this.f1592e;
                this.f1593f = i12 + 1;
                fArr2[i12] = f10;
            }

            void b(int i10, int i11) {
                int i12 = this.f1590c;
                int[] iArr = this.f1588a;
                if (i12 >= iArr.length) {
                    this.f1588a = Arrays.copyOf(iArr, iArr.length * 2);
                    int[] iArr2 = this.f1589b;
                    this.f1589b = Arrays.copyOf(iArr2, iArr2.length * 2);
                }
                int[] iArr3 = this.f1588a;
                int i13 = this.f1590c;
                iArr3[i13] = i10;
                int[] iArr4 = this.f1589b;
                this.f1590c = i13 + 1;
                iArr4[i13] = i11;
            }

            void c(int i10, String str) {
                int i11 = this.f1596i;
                int[] iArr = this.f1594g;
                if (i11 >= iArr.length) {
                    this.f1594g = Arrays.copyOf(iArr, iArr.length * 2);
                    String[] strArr = this.f1595h;
                    this.f1595h = (String[]) Arrays.copyOf(strArr, strArr.length * 2);
                }
                int[] iArr2 = this.f1594g;
                int i12 = this.f1596i;
                iArr2[i12] = i10;
                String[] strArr2 = this.f1595h;
                this.f1596i = i12 + 1;
                strArr2[i12] = str;
            }

            void d(int i10, boolean z10) {
                int i11 = this.f1599l;
                int[] iArr = this.f1597j;
                if (i11 >= iArr.length) {
                    this.f1597j = Arrays.copyOf(iArr, iArr.length * 2);
                    boolean[] zArr = this.f1598k;
                    this.f1598k = Arrays.copyOf(zArr, zArr.length * 2);
                }
                int[] iArr2 = this.f1597j;
                int i12 = this.f1599l;
                iArr2[i12] = i10;
                boolean[] zArr2 = this.f1598k;
                this.f1599l = i12 + 1;
                zArr2[i12] = z10;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void f(int i10, ConstraintLayout.b bVar) {
            this.f1580a = i10;
            b bVar2 = this.f1584e;
            bVar2.f1619j = bVar.f1479e;
            bVar2.f1621k = bVar.f1481f;
            bVar2.f1623l = bVar.f1483g;
            bVar2.f1625m = bVar.f1485h;
            bVar2.f1627n = bVar.f1487i;
            bVar2.f1629o = bVar.f1489j;
            bVar2.f1631p = bVar.f1491k;
            bVar2.f1633q = bVar.f1493l;
            bVar2.f1635r = bVar.f1495m;
            bVar2.f1636s = bVar.f1497n;
            bVar2.f1637t = bVar.f1499o;
            bVar2.f1638u = bVar.f1507s;
            bVar2.f1639v = bVar.f1509t;
            bVar2.f1640w = bVar.f1511u;
            bVar2.f1641x = bVar.f1513v;
            bVar2.f1642y = bVar.G;
            bVar2.f1643z = bVar.H;
            bVar2.A = bVar.I;
            bVar2.B = bVar.f1501p;
            bVar2.C = bVar.f1503q;
            bVar2.D = bVar.f1505r;
            bVar2.E = bVar.X;
            bVar2.F = bVar.Y;
            bVar2.G = bVar.Z;
            bVar2.f1615h = bVar.f1475c;
            bVar2.f1611f = bVar.f1471a;
            bVar2.f1613g = bVar.f1473b;
            bVar2.f1607d = ((ViewGroup.MarginLayoutParams) bVar).width;
            bVar2.f1609e = ((ViewGroup.MarginLayoutParams) bVar).height;
            bVar2.H = ((ViewGroup.MarginLayoutParams) bVar).leftMargin;
            bVar2.I = ((ViewGroup.MarginLayoutParams) bVar).rightMargin;
            bVar2.J = ((ViewGroup.MarginLayoutParams) bVar).topMargin;
            bVar2.K = ((ViewGroup.MarginLayoutParams) bVar).bottomMargin;
            bVar2.N = bVar.D;
            bVar2.V = bVar.M;
            bVar2.W = bVar.L;
            bVar2.Y = bVar.O;
            bVar2.X = bVar.N;
            bVar2.f1628n0 = bVar.f1472a0;
            bVar2.f1630o0 = bVar.f1474b0;
            bVar2.Z = bVar.P;
            bVar2.f1602a0 = bVar.Q;
            bVar2.f1604b0 = bVar.T;
            bVar2.f1606c0 = bVar.U;
            bVar2.f1608d0 = bVar.R;
            bVar2.f1610e0 = bVar.S;
            bVar2.f1612f0 = bVar.V;
            bVar2.f1614g0 = bVar.W;
            bVar2.f1626m0 = bVar.f1476c0;
            bVar2.P = bVar.f1517x;
            bVar2.R = bVar.f1519z;
            bVar2.O = bVar.f1515w;
            bVar2.Q = bVar.f1518y;
            bVar2.T = bVar.A;
            bVar2.S = bVar.B;
            bVar2.U = bVar.C;
            bVar2.f1634q0 = bVar.f1478d0;
            if (Build.VERSION.SDK_INT >= 17) {
                bVar2.L = bVar.getMarginEnd();
                this.f1584e.M = bVar.getMarginStart();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void g(int i10, e.a aVar) {
            f(i10, aVar);
            this.f1582c.f1662d = aVar.f1680x0;
            e eVar = this.f1585f;
            eVar.f1666b = aVar.A0;
            eVar.f1667c = aVar.B0;
            eVar.f1668d = aVar.C0;
            eVar.f1669e = aVar.D0;
            eVar.f1670f = aVar.E0;
            eVar.f1671g = aVar.F0;
            eVar.f1672h = aVar.G0;
            eVar.f1674j = aVar.H0;
            eVar.f1675k = aVar.I0;
            eVar.f1676l = aVar.J0;
            eVar.f1678n = aVar.f1682z0;
            eVar.f1677m = aVar.f1681y0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void h(androidx.constraintlayout.widget.b bVar, int i10, e.a aVar) {
            g(i10, aVar);
            if (bVar instanceof Barrier) {
                b bVar2 = this.f1584e;
                bVar2.f1620j0 = 1;
                Barrier barrier = (Barrier) bVar;
                bVar2.f1616h0 = barrier.getType();
                this.f1584e.f1622k0 = barrier.getReferencedIds();
                this.f1584e.f1618i0 = barrier.getMargin();
            }
        }

        public void d(ConstraintLayout.b bVar) {
            b bVar2 = this.f1584e;
            bVar.f1479e = bVar2.f1619j;
            bVar.f1481f = bVar2.f1621k;
            bVar.f1483g = bVar2.f1623l;
            bVar.f1485h = bVar2.f1625m;
            bVar.f1487i = bVar2.f1627n;
            bVar.f1489j = bVar2.f1629o;
            bVar.f1491k = bVar2.f1631p;
            bVar.f1493l = bVar2.f1633q;
            bVar.f1495m = bVar2.f1635r;
            bVar.f1497n = bVar2.f1636s;
            bVar.f1499o = bVar2.f1637t;
            bVar.f1507s = bVar2.f1638u;
            bVar.f1509t = bVar2.f1639v;
            bVar.f1511u = bVar2.f1640w;
            bVar.f1513v = bVar2.f1641x;
            ((ViewGroup.MarginLayoutParams) bVar).leftMargin = bVar2.H;
            ((ViewGroup.MarginLayoutParams) bVar).rightMargin = bVar2.I;
            ((ViewGroup.MarginLayoutParams) bVar).topMargin = bVar2.J;
            ((ViewGroup.MarginLayoutParams) bVar).bottomMargin = bVar2.K;
            bVar.A = bVar2.T;
            bVar.B = bVar2.S;
            bVar.f1517x = bVar2.P;
            bVar.f1519z = bVar2.R;
            bVar.G = bVar2.f1642y;
            bVar.H = bVar2.f1643z;
            bVar.f1501p = bVar2.B;
            bVar.f1503q = bVar2.C;
            bVar.f1505r = bVar2.D;
            bVar.I = bVar2.A;
            bVar.X = bVar2.E;
            bVar.Y = bVar2.F;
            bVar.M = bVar2.V;
            bVar.L = bVar2.W;
            bVar.O = bVar2.Y;
            bVar.N = bVar2.X;
            bVar.f1472a0 = bVar2.f1628n0;
            bVar.f1474b0 = bVar2.f1630o0;
            bVar.P = bVar2.Z;
            bVar.Q = bVar2.f1602a0;
            bVar.T = bVar2.f1604b0;
            bVar.U = bVar2.f1606c0;
            bVar.R = bVar2.f1608d0;
            bVar.S = bVar2.f1610e0;
            bVar.V = bVar2.f1612f0;
            bVar.W = bVar2.f1614g0;
            bVar.Z = bVar2.G;
            bVar.f1475c = bVar2.f1615h;
            bVar.f1471a = bVar2.f1611f;
            bVar.f1473b = bVar2.f1613g;
            ((ViewGroup.MarginLayoutParams) bVar).width = bVar2.f1607d;
            ((ViewGroup.MarginLayoutParams) bVar).height = bVar2.f1609e;
            String str = bVar2.f1626m0;
            if (str != null) {
                bVar.f1476c0 = str;
            }
            bVar.f1478d0 = bVar2.f1634q0;
            if (Build.VERSION.SDK_INT >= 17) {
                bVar.setMarginStart(bVar2.M);
                bVar.setMarginEnd(this.f1584e.L);
            }
            bVar.a();
        }

        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public a clone() {
            a aVar = new a();
            aVar.f1584e.a(this.f1584e);
            aVar.f1583d.a(this.f1583d);
            aVar.f1582c.a(this.f1582c);
            aVar.f1585f.a(this.f1585f);
            aVar.f1580a = this.f1580a;
            aVar.f1587h = this.f1587h;
            return aVar;
        }
    }

    /* JADX INFO: compiled from: ConstraintSet.java */
    public static class b {

        /* JADX INFO: renamed from: r0, reason: collision with root package name */
        private static SparseIntArray f1600r0;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f1607d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f1609e;

        /* JADX INFO: renamed from: k0, reason: collision with root package name */
        public int[] f1622k0;

        /* JADX INFO: renamed from: l0, reason: collision with root package name */
        public String f1624l0;

        /* JADX INFO: renamed from: m0, reason: collision with root package name */
        public String f1626m0;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f1601a = false;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f1603b = false;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f1605c = false;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f1611f = -1;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public int f1613g = -1;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public float f1615h = -1.0f;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public boolean f1617i = true;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public int f1619j = -1;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public int f1621k = -1;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public int f1623l = -1;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public int f1625m = -1;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public int f1627n = -1;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public int f1629o = -1;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        public int f1631p = -1;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        public int f1633q = -1;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        public int f1635r = -1;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        public int f1636s = -1;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        public int f1637t = -1;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        public int f1638u = -1;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        public int f1639v = -1;

        /* JADX INFO: renamed from: w, reason: collision with root package name */
        public int f1640w = -1;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        public int f1641x = -1;

        /* JADX INFO: renamed from: y, reason: collision with root package name */
        public float f1642y = 0.5f;

        /* JADX INFO: renamed from: z, reason: collision with root package name */
        public float f1643z = 0.5f;
        public String A = null;
        public int B = -1;
        public int C = 0;
        public float D = 0.0f;
        public int E = -1;
        public int F = -1;
        public int G = -1;
        public int H = 0;
        public int I = 0;
        public int J = 0;
        public int K = 0;
        public int L = 0;
        public int M = 0;
        public int N = 0;
        public int O = Integer.MIN_VALUE;
        public int P = Integer.MIN_VALUE;
        public int Q = Integer.MIN_VALUE;
        public int R = Integer.MIN_VALUE;
        public int S = Integer.MIN_VALUE;
        public int T = Integer.MIN_VALUE;
        public int U = Integer.MIN_VALUE;
        public float V = -1.0f;
        public float W = -1.0f;
        public int X = 0;
        public int Y = 0;
        public int Z = 0;

        /* JADX INFO: renamed from: a0, reason: collision with root package name */
        public int f1602a0 = 0;

        /* JADX INFO: renamed from: b0, reason: collision with root package name */
        public int f1604b0 = 0;

        /* JADX INFO: renamed from: c0, reason: collision with root package name */
        public int f1606c0 = 0;

        /* JADX INFO: renamed from: d0, reason: collision with root package name */
        public int f1608d0 = 0;

        /* JADX INFO: renamed from: e0, reason: collision with root package name */
        public int f1610e0 = 0;

        /* JADX INFO: renamed from: f0, reason: collision with root package name */
        public float f1612f0 = 1.0f;

        /* JADX INFO: renamed from: g0, reason: collision with root package name */
        public float f1614g0 = 1.0f;

        /* JADX INFO: renamed from: h0, reason: collision with root package name */
        public int f1616h0 = -1;

        /* JADX INFO: renamed from: i0, reason: collision with root package name */
        public int f1618i0 = 0;

        /* JADX INFO: renamed from: j0, reason: collision with root package name */
        public int f1620j0 = -1;

        /* JADX INFO: renamed from: n0, reason: collision with root package name */
        public boolean f1628n0 = false;

        /* JADX INFO: renamed from: o0, reason: collision with root package name */
        public boolean f1630o0 = false;

        /* JADX INFO: renamed from: p0, reason: collision with root package name */
        public boolean f1632p0 = true;

        /* JADX INFO: renamed from: q0, reason: collision with root package name */
        public int f1634q0 = 0;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            f1600r0 = sparseIntArray;
            sparseIntArray.append(i.K5, 24);
            f1600r0.append(i.L5, 25);
            f1600r0.append(i.N5, 28);
            f1600r0.append(i.O5, 29);
            f1600r0.append(i.T5, 35);
            f1600r0.append(i.S5, 34);
            f1600r0.append(i.f1872u5, 4);
            f1600r0.append(i.f1863t5, 3);
            f1600r0.append(i.f1845r5, 1);
            f1600r0.append(i.Z5, 6);
            f1600r0.append(i.f1693a6, 7);
            f1600r0.append(i.B5, 17);
            f1600r0.append(i.C5, 18);
            f1600r0.append(i.D5, 19);
            f1600r0.append(i.f1809n5, 90);
            f1600r0.append(i.Z4, 26);
            f1600r0.append(i.P5, 31);
            f1600r0.append(i.Q5, 32);
            f1600r0.append(i.A5, 10);
            f1600r0.append(i.f1917z5, 9);
            f1600r0.append(i.f1720d6, 13);
            f1600r0.append(i.f1747g6, 16);
            f1600r0.append(i.f1729e6, 14);
            f1600r0.append(i.f1702b6, 11);
            f1600r0.append(i.f1738f6, 15);
            f1600r0.append(i.f1711c6, 12);
            f1600r0.append(i.W5, 38);
            f1600r0.append(i.I5, 37);
            f1600r0.append(i.H5, 39);
            f1600r0.append(i.V5, 40);
            f1600r0.append(i.G5, 20);
            f1600r0.append(i.U5, 36);
            f1600r0.append(i.f1908y5, 5);
            f1600r0.append(i.J5, 91);
            f1600r0.append(i.R5, 91);
            f1600r0.append(i.M5, 91);
            f1600r0.append(i.f1854s5, 91);
            f1600r0.append(i.f1836q5, 91);
            f1600r0.append(i.f1710c5, 23);
            f1600r0.append(i.f1728e5, 27);
            f1600r0.append(i.f1746g5, 30);
            f1600r0.append(i.f1755h5, 8);
            f1600r0.append(i.f1719d5, 33);
            f1600r0.append(i.f1737f5, 2);
            f1600r0.append(i.f1692a5, 22);
            f1600r0.append(i.f1701b5, 21);
            f1600r0.append(i.X5, 41);
            f1600r0.append(i.E5, 42);
            f1600r0.append(i.f1827p5, 41);
            f1600r0.append(i.f1818o5, 42);
            f1600r0.append(i.f1756h6, 76);
            f1600r0.append(i.f1881v5, 61);
            f1600r0.append(i.f1899x5, 62);
            f1600r0.append(i.f1890w5, 63);
            f1600r0.append(i.Y5, 69);
            f1600r0.append(i.F5, 70);
            f1600r0.append(i.f1791l5, 71);
            f1600r0.append(i.f1773j5, 72);
            f1600r0.append(i.f1782k5, 73);
            f1600r0.append(i.f1800m5, 74);
            f1600r0.append(i.f1764i5, 75);
        }

        public void a(b bVar) {
            this.f1601a = bVar.f1601a;
            this.f1607d = bVar.f1607d;
            this.f1603b = bVar.f1603b;
            this.f1609e = bVar.f1609e;
            this.f1611f = bVar.f1611f;
            this.f1613g = bVar.f1613g;
            this.f1615h = bVar.f1615h;
            this.f1617i = bVar.f1617i;
            this.f1619j = bVar.f1619j;
            this.f1621k = bVar.f1621k;
            this.f1623l = bVar.f1623l;
            this.f1625m = bVar.f1625m;
            this.f1627n = bVar.f1627n;
            this.f1629o = bVar.f1629o;
            this.f1631p = bVar.f1631p;
            this.f1633q = bVar.f1633q;
            this.f1635r = bVar.f1635r;
            this.f1636s = bVar.f1636s;
            this.f1637t = bVar.f1637t;
            this.f1638u = bVar.f1638u;
            this.f1639v = bVar.f1639v;
            this.f1640w = bVar.f1640w;
            this.f1641x = bVar.f1641x;
            this.f1642y = bVar.f1642y;
            this.f1643z = bVar.f1643z;
            this.A = bVar.A;
            this.B = bVar.B;
            this.C = bVar.C;
            this.D = bVar.D;
            this.E = bVar.E;
            this.F = bVar.F;
            this.G = bVar.G;
            this.H = bVar.H;
            this.I = bVar.I;
            this.J = bVar.J;
            this.K = bVar.K;
            this.L = bVar.L;
            this.M = bVar.M;
            this.N = bVar.N;
            this.O = bVar.O;
            this.P = bVar.P;
            this.Q = bVar.Q;
            this.R = bVar.R;
            this.S = bVar.S;
            this.T = bVar.T;
            this.U = bVar.U;
            this.V = bVar.V;
            this.W = bVar.W;
            this.X = bVar.X;
            this.Y = bVar.Y;
            this.Z = bVar.Z;
            this.f1602a0 = bVar.f1602a0;
            this.f1604b0 = bVar.f1604b0;
            this.f1606c0 = bVar.f1606c0;
            this.f1608d0 = bVar.f1608d0;
            this.f1610e0 = bVar.f1610e0;
            this.f1612f0 = bVar.f1612f0;
            this.f1614g0 = bVar.f1614g0;
            this.f1616h0 = bVar.f1616h0;
            this.f1618i0 = bVar.f1618i0;
            this.f1620j0 = bVar.f1620j0;
            this.f1626m0 = bVar.f1626m0;
            int[] iArr = bVar.f1622k0;
            if (iArr == null || bVar.f1624l0 != null) {
                this.f1622k0 = null;
            } else {
                this.f1622k0 = Arrays.copyOf(iArr, iArr.length);
            }
            this.f1624l0 = bVar.f1624l0;
            this.f1628n0 = bVar.f1628n0;
            this.f1630o0 = bVar.f1630o0;
            this.f1632p0 = bVar.f1632p0;
            this.f1634q0 = bVar.f1634q0;
        }

        void b(Context context, AttributeSet attributeSet) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, i.Y4);
            this.f1603b = true;
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i10 = 0; i10 < indexCount; i10++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i10);
                int i11 = f1600r0.get(index);
                switch (i11) {
                    case 1:
                        this.f1635r = d.o(typedArrayObtainStyledAttributes, index, this.f1635r);
                        break;
                    case 2:
                        this.K = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.K);
                        break;
                    case 3:
                        this.f1633q = d.o(typedArrayObtainStyledAttributes, index, this.f1633q);
                        break;
                    case 4:
                        this.f1631p = d.o(typedArrayObtainStyledAttributes, index, this.f1631p);
                        break;
                    case 5:
                        this.A = typedArrayObtainStyledAttributes.getString(index);
                        break;
                    case 6:
                        this.E = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.E);
                        break;
                    case 7:
                        this.F = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.F);
                        break;
                    case 8:
                        if (Build.VERSION.SDK_INT >= 17) {
                            this.L = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.L);
                        }
                        break;
                    case 9:
                        this.f1641x = d.o(typedArrayObtainStyledAttributes, index, this.f1641x);
                        break;
                    case 10:
                        this.f1640w = d.o(typedArrayObtainStyledAttributes, index, this.f1640w);
                        break;
                    case 11:
                        this.R = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.R);
                        break;
                    case 12:
                        this.S = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.S);
                        break;
                    case 13:
                        this.O = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.O);
                        break;
                    case 14:
                        this.Q = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.Q);
                        break;
                    case 15:
                        this.T = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.T);
                        break;
                    case 16:
                        this.P = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.P);
                        break;
                    case 17:
                        this.f1611f = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.f1611f);
                        break;
                    case 18:
                        this.f1613g = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.f1613g);
                        break;
                    case 19:
                        this.f1615h = typedArrayObtainStyledAttributes.getFloat(index, this.f1615h);
                        break;
                    case 20:
                        this.f1642y = typedArrayObtainStyledAttributes.getFloat(index, this.f1642y);
                        break;
                    case 21:
                        this.f1609e = typedArrayObtainStyledAttributes.getLayoutDimension(index, this.f1609e);
                        break;
                    case 22:
                        this.f1607d = typedArrayObtainStyledAttributes.getLayoutDimension(index, this.f1607d);
                        break;
                    case 23:
                        this.H = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.H);
                        break;
                    case 24:
                        this.f1619j = d.o(typedArrayObtainStyledAttributes, index, this.f1619j);
                        break;
                    case 25:
                        this.f1621k = d.o(typedArrayObtainStyledAttributes, index, this.f1621k);
                        break;
                    case 26:
                        this.G = typedArrayObtainStyledAttributes.getInt(index, this.G);
                        break;
                    case 27:
                        this.I = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.I);
                        break;
                    case 28:
                        this.f1623l = d.o(typedArrayObtainStyledAttributes, index, this.f1623l);
                        break;
                    case 29:
                        this.f1625m = d.o(typedArrayObtainStyledAttributes, index, this.f1625m);
                        break;
                    case 30:
                        if (Build.VERSION.SDK_INT >= 17) {
                            this.M = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.M);
                        }
                        break;
                    case 31:
                        this.f1638u = d.o(typedArrayObtainStyledAttributes, index, this.f1638u);
                        break;
                    case 32:
                        this.f1639v = d.o(typedArrayObtainStyledAttributes, index, this.f1639v);
                        break;
                    case 33:
                        this.J = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.J);
                        break;
                    case 34:
                        this.f1629o = d.o(typedArrayObtainStyledAttributes, index, this.f1629o);
                        break;
                    case 35:
                        this.f1627n = d.o(typedArrayObtainStyledAttributes, index, this.f1627n);
                        break;
                    case 36:
                        this.f1643z = typedArrayObtainStyledAttributes.getFloat(index, this.f1643z);
                        break;
                    case 37:
                        this.W = typedArrayObtainStyledAttributes.getFloat(index, this.W);
                        break;
                    case 38:
                        this.V = typedArrayObtainStyledAttributes.getFloat(index, this.V);
                        break;
                    case 39:
                        this.X = typedArrayObtainStyledAttributes.getInt(index, this.X);
                        break;
                    case 40:
                        this.Y = typedArrayObtainStyledAttributes.getInt(index, this.Y);
                        break;
                    case 41:
                        d.p(this, typedArrayObtainStyledAttributes, index, 0);
                        break;
                    case 42:
                        d.p(this, typedArrayObtainStyledAttributes, index, 1);
                        break;
                    default:
                        switch (i11) {
                            case 61:
                                this.B = d.o(typedArrayObtainStyledAttributes, index, this.B);
                                break;
                            case 62:
                                this.C = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.C);
                                break;
                            case 63:
                                this.D = typedArrayObtainStyledAttributes.getFloat(index, this.D);
                                break;
                            default:
                                switch (i11) {
                                    case 69:
                                        this.f1612f0 = typedArrayObtainStyledAttributes.getFloat(index, 1.0f);
                                        break;
                                    case 70:
                                        this.f1614g0 = typedArrayObtainStyledAttributes.getFloat(index, 1.0f);
                                        break;
                                    case 71:
                                        Log.e("ConstraintSet", "CURRENTLY UNSUPPORTED");
                                        break;
                                    case 72:
                                        this.f1616h0 = typedArrayObtainStyledAttributes.getInt(index, this.f1616h0);
                                        break;
                                    case 73:
                                        this.f1618i0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f1618i0);
                                        break;
                                    case 74:
                                        this.f1624l0 = typedArrayObtainStyledAttributes.getString(index);
                                        break;
                                    case 75:
                                        this.f1632p0 = typedArrayObtainStyledAttributes.getBoolean(index, this.f1632p0);
                                        break;
                                    case 76:
                                        this.f1634q0 = typedArrayObtainStyledAttributes.getInt(index, this.f1634q0);
                                        break;
                                    case 77:
                                        this.f1636s = d.o(typedArrayObtainStyledAttributes, index, this.f1636s);
                                        break;
                                    case 78:
                                        this.f1637t = d.o(typedArrayObtainStyledAttributes, index, this.f1637t);
                                        break;
                                    case 79:
                                        this.U = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.U);
                                        break;
                                    case 80:
                                        this.N = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.N);
                                        break;
                                    case 81:
                                        this.Z = typedArrayObtainStyledAttributes.getInt(index, this.Z);
                                        break;
                                    case 82:
                                        this.f1602a0 = typedArrayObtainStyledAttributes.getInt(index, this.f1602a0);
                                        break;
                                    case 83:
                                        this.f1606c0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f1606c0);
                                        break;
                                    case 84:
                                        this.f1604b0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f1604b0);
                                        break;
                                    case 85:
                                        this.f1610e0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f1610e0);
                                        break;
                                    case 86:
                                        this.f1608d0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f1608d0);
                                        break;
                                    case 87:
                                        this.f1628n0 = typedArrayObtainStyledAttributes.getBoolean(index, this.f1628n0);
                                        break;
                                    case 88:
                                        this.f1630o0 = typedArrayObtainStyledAttributes.getBoolean(index, this.f1630o0);
                                        break;
                                    case 89:
                                        this.f1626m0 = typedArrayObtainStyledAttributes.getString(index);
                                        break;
                                    case 90:
                                        this.f1617i = typedArrayObtainStyledAttributes.getBoolean(index, this.f1617i);
                                        break;
                                    case 91:
                                        Log.w("ConstraintSet", "unused attribute 0x" + Integer.toHexString(index) + "   " + f1600r0.get(index));
                                        break;
                                    default:
                                        Log.w("ConstraintSet", "Unknown attribute 0x" + Integer.toHexString(index) + "   " + f1600r0.get(index));
                                        break;
                                }
                                break;
                        }
                        break;
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    /* JADX INFO: compiled from: ConstraintSet.java */
    public static class c {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private static SparseIntArray f1644o;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f1645a = false;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f1646b = -1;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f1647c = 0;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public String f1648d = null;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f1649e = -1;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f1650f = 0;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public float f1651g = Float.NaN;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f1652h = -1;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public float f1653i = Float.NaN;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public float f1654j = Float.NaN;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public int f1655k = -1;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public String f1656l = null;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public int f1657m = -3;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public int f1658n = -1;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            f1644o = sparseIntArray;
            sparseIntArray.append(i.f1864t6, 1);
            f1644o.append(i.f1882v6, 2);
            f1644o.append(i.f1918z6, 3);
            f1644o.append(i.f1855s6, 4);
            f1644o.append(i.f1846r6, 5);
            f1644o.append(i.f1837q6, 6);
            f1644o.append(i.f1873u6, 7);
            f1644o.append(i.f1909y6, 8);
            f1644o.append(i.f1900x6, 9);
            f1644o.append(i.f1891w6, 10);
        }

        public void a(c cVar) {
            this.f1645a = cVar.f1645a;
            this.f1646b = cVar.f1646b;
            this.f1648d = cVar.f1648d;
            this.f1649e = cVar.f1649e;
            this.f1650f = cVar.f1650f;
            this.f1653i = cVar.f1653i;
            this.f1651g = cVar.f1651g;
            this.f1652h = cVar.f1652h;
        }

        void b(Context context, AttributeSet attributeSet) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, i.f1828p6);
            this.f1645a = true;
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i10 = 0; i10 < indexCount; i10++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i10);
                switch (f1644o.get(index)) {
                    case 1:
                        this.f1653i = typedArrayObtainStyledAttributes.getFloat(index, this.f1653i);
                        break;
                    case 2:
                        this.f1649e = typedArrayObtainStyledAttributes.getInt(index, this.f1649e);
                        break;
                    case 3:
                        if (typedArrayObtainStyledAttributes.peekValue(index).type == 3) {
                            this.f1648d = typedArrayObtainStyledAttributes.getString(index);
                        } else {
                            this.f1648d = q.b.f33718c[typedArrayObtainStyledAttributes.getInteger(index, 0)];
                        }
                        break;
                    case 4:
                        this.f1650f = typedArrayObtainStyledAttributes.getInt(index, 0);
                        break;
                    case 5:
                        this.f1646b = d.o(typedArrayObtainStyledAttributes, index, this.f1646b);
                        break;
                    case 6:
                        this.f1647c = typedArrayObtainStyledAttributes.getInteger(index, this.f1647c);
                        break;
                    case 7:
                        this.f1651g = typedArrayObtainStyledAttributes.getFloat(index, this.f1651g);
                        break;
                    case 8:
                        this.f1655k = typedArrayObtainStyledAttributes.getInteger(index, this.f1655k);
                        break;
                    case 9:
                        this.f1654j = typedArrayObtainStyledAttributes.getFloat(index, this.f1654j);
                        break;
                    case 10:
                        int i11 = typedArrayObtainStyledAttributes.peekValue(index).type;
                        if (i11 == 1) {
                            int resourceId = typedArrayObtainStyledAttributes.getResourceId(index, -1);
                            this.f1658n = resourceId;
                            if (resourceId != -1) {
                                this.f1657m = -2;
                            }
                        } else if (i11 == 3) {
                            String string = typedArrayObtainStyledAttributes.getString(index);
                            this.f1656l = string;
                            if (string.indexOf("/") > 0) {
                                this.f1658n = typedArrayObtainStyledAttributes.getResourceId(index, -1);
                                this.f1657m = -2;
                            } else {
                                this.f1657m = -1;
                            }
                        } else {
                            this.f1657m = typedArrayObtainStyledAttributes.getInteger(index, this.f1658n);
                        }
                        break;
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    /* JADX INFO: renamed from: androidx.constraintlayout.widget.d$d, reason: collision with other inner class name */
    /* JADX INFO: compiled from: ConstraintSet.java */
    public static class C0022d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f1659a = false;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f1660b = 0;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f1661c = 0;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public float f1662d = 1.0f;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public float f1663e = Float.NaN;

        public void a(C0022d c0022d) {
            this.f1659a = c0022d.f1659a;
            this.f1660b = c0022d.f1660b;
            this.f1662d = c0022d.f1662d;
            this.f1663e = c0022d.f1663e;
            this.f1661c = c0022d.f1661c;
        }

        void b(Context context, AttributeSet attributeSet) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, i.M6);
            this.f1659a = true;
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i10 = 0; i10 < indexCount; i10++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i10);
                if (index == i.O6) {
                    this.f1662d = typedArrayObtainStyledAttributes.getFloat(index, this.f1662d);
                } else if (index == i.N6) {
                    this.f1660b = typedArrayObtainStyledAttributes.getInt(index, this.f1660b);
                    this.f1660b = d.f1572f[this.f1660b];
                } else if (index == i.Q6) {
                    this.f1661c = typedArrayObtainStyledAttributes.getInt(index, this.f1661c);
                } else if (index == i.P6) {
                    this.f1663e = typedArrayObtainStyledAttributes.getFloat(index, this.f1663e);
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    /* JADX INFO: compiled from: ConstraintSet.java */
    public static class e {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private static SparseIntArray f1664o;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f1665a = false;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public float f1666b = 0.0f;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public float f1667c = 0.0f;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public float f1668d = 0.0f;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public float f1669e = 1.0f;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public float f1670f = 1.0f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public float f1671g = Float.NaN;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public float f1672h = Float.NaN;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public int f1673i = -1;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public float f1674j = 0.0f;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public float f1675k = 0.0f;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public float f1676l = 0.0f;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public boolean f1677m = false;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public float f1678n = 0.0f;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            f1664o = sparseIntArray;
            sparseIntArray.append(i.f1793l7, 1);
            f1664o.append(i.f1802m7, 2);
            f1664o.append(i.f1811n7, 3);
            f1664o.append(i.f1775j7, 4);
            f1664o.append(i.f1784k7, 5);
            f1664o.append(i.f1739f7, 6);
            f1664o.append(i.f1748g7, 7);
            f1664o.append(i.f1757h7, 8);
            f1664o.append(i.f1766i7, 9);
            f1664o.append(i.f1820o7, 10);
            f1664o.append(i.f1829p7, 11);
            f1664o.append(i.f1838q7, 12);
        }

        public void a(e eVar) {
            this.f1665a = eVar.f1665a;
            this.f1666b = eVar.f1666b;
            this.f1667c = eVar.f1667c;
            this.f1668d = eVar.f1668d;
            this.f1669e = eVar.f1669e;
            this.f1670f = eVar.f1670f;
            this.f1671g = eVar.f1671g;
            this.f1672h = eVar.f1672h;
            this.f1673i = eVar.f1673i;
            this.f1674j = eVar.f1674j;
            this.f1675k = eVar.f1675k;
            this.f1676l = eVar.f1676l;
            this.f1677m = eVar.f1677m;
            this.f1678n = eVar.f1678n;
        }

        void b(Context context, AttributeSet attributeSet) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, i.f1730e7);
            this.f1665a = true;
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i10 = 0; i10 < indexCount; i10++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i10);
                switch (f1664o.get(index)) {
                    case 1:
                        this.f1666b = typedArrayObtainStyledAttributes.getFloat(index, this.f1666b);
                        break;
                    case 2:
                        this.f1667c = typedArrayObtainStyledAttributes.getFloat(index, this.f1667c);
                        break;
                    case 3:
                        this.f1668d = typedArrayObtainStyledAttributes.getFloat(index, this.f1668d);
                        break;
                    case 4:
                        this.f1669e = typedArrayObtainStyledAttributes.getFloat(index, this.f1669e);
                        break;
                    case 5:
                        this.f1670f = typedArrayObtainStyledAttributes.getFloat(index, this.f1670f);
                        break;
                    case 6:
                        this.f1671g = typedArrayObtainStyledAttributes.getDimension(index, this.f1671g);
                        break;
                    case 7:
                        this.f1672h = typedArrayObtainStyledAttributes.getDimension(index, this.f1672h);
                        break;
                    case 8:
                        this.f1674j = typedArrayObtainStyledAttributes.getDimension(index, this.f1674j);
                        break;
                    case 9:
                        this.f1675k = typedArrayObtainStyledAttributes.getDimension(index, this.f1675k);
                        break;
                    case 10:
                        if (Build.VERSION.SDK_INT >= 21) {
                            this.f1676l = typedArrayObtainStyledAttributes.getDimension(index, this.f1676l);
                        }
                        break;
                    case 11:
                        if (Build.VERSION.SDK_INT >= 21) {
                            this.f1677m = true;
                            this.f1678n = typedArrayObtainStyledAttributes.getDimension(index, this.f1678n);
                        }
                        break;
                    case 12:
                        this.f1673i = d.o(typedArrayObtainStyledAttributes, index, this.f1673i);
                        break;
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    static {
        f1573g.append(i.A0, 25);
        f1573g.append(i.B0, 26);
        f1573g.append(i.D0, 29);
        f1573g.append(i.E0, 30);
        f1573g.append(i.K0, 36);
        f1573g.append(i.J0, 35);
        f1573g.append(i.f1750h0, 4);
        f1573g.append(i.f1741g0, 3);
        f1573g.append(i.f1705c0, 1);
        f1573g.append(i.f1723e0, 91);
        f1573g.append(i.f1714d0, 92);
        f1573g.append(i.T0, 6);
        f1573g.append(i.U0, 7);
        f1573g.append(i.f1813o0, 17);
        f1573g.append(i.f1822p0, 18);
        f1573g.append(i.f1831q0, 19);
        f1573g.append(i.Y, 99);
        f1573g.append(i.f1866u, 27);
        f1573g.append(i.F0, 32);
        f1573g.append(i.G0, 33);
        f1573g.append(i.f1804n0, 10);
        f1573g.append(i.f1795m0, 9);
        f1573g.append(i.X0, 13);
        f1573g.append(i.f1688a1, 16);
        f1573g.append(i.Y0, 14);
        f1573g.append(i.V0, 11);
        f1573g.append(i.Z0, 15);
        f1573g.append(i.W0, 12);
        f1573g.append(i.N0, 40);
        f1573g.append(i.f1903y0, 39);
        f1573g.append(i.f1894x0, 41);
        f1573g.append(i.M0, 42);
        f1573g.append(i.f1885w0, 20);
        f1573g.append(i.L0, 37);
        f1573g.append(i.f1786l0, 5);
        f1573g.append(i.f1912z0, 87);
        f1573g.append(i.I0, 87);
        f1573g.append(i.C0, 87);
        f1573g.append(i.f1732f0, 87);
        f1573g.append(i.f1696b0, 87);
        f1573g.append(i.f1911z, 24);
        f1573g.append(i.B, 28);
        f1573g.append(i.N, 31);
        f1573g.append(i.O, 8);
        f1573g.append(i.A, 34);
        f1573g.append(i.C, 2);
        f1573g.append(i.f1893x, 23);
        f1573g.append(i.f1902y, 21);
        f1573g.append(i.O0, 95);
        f1573g.append(i.f1840r0, 96);
        f1573g.append(i.f1884w, 22);
        f1573g.append(i.D, 43);
        f1573g.append(i.Q, 44);
        f1573g.append(i.L, 45);
        f1573g.append(i.M, 46);
        f1573g.append(i.K, 60);
        f1573g.append(i.I, 47);
        f1573g.append(i.J, 48);
        f1573g.append(i.E, 49);
        f1573g.append(i.F, 50);
        f1573g.append(i.G, 51);
        f1573g.append(i.H, 52);
        f1573g.append(i.P, 53);
        f1573g.append(i.P0, 54);
        f1573g.append(i.f1849s0, 55);
        f1573g.append(i.Q0, 56);
        f1573g.append(i.f1858t0, 57);
        f1573g.append(i.R0, 58);
        f1573g.append(i.f1867u0, 59);
        f1573g.append(i.f1759i0, 61);
        f1573g.append(i.f1777k0, 62);
        f1573g.append(i.f1768j0, 63);
        f1573g.append(i.R, 64);
        f1573g.append(i.f1778k1, 65);
        f1573g.append(i.X, 66);
        f1573g.append(i.f1787l1, 67);
        f1573g.append(i.f1715d1, 79);
        f1573g.append(i.f1875v, 38);
        f1573g.append(i.f1706c1, 68);
        f1573g.append(i.S0, 69);
        f1573g.append(i.f1876v0, 70);
        f1573g.append(i.f1697b1, 97);
        f1573g.append(i.V, 71);
        f1573g.append(i.T, 72);
        f1573g.append(i.U, 73);
        f1573g.append(i.W, 74);
        f1573g.append(i.S, 75);
        f1573g.append(i.f1724e1, 76);
        f1573g.append(i.H0, 77);
        f1573g.append(i.f1796m1, 78);
        f1573g.append(i.f1687a0, 80);
        f1573g.append(i.Z, 81);
        f1573g.append(i.f1733f1, 82);
        f1573g.append(i.f1769j1, 83);
        f1573g.append(i.f1760i1, 84);
        f1573g.append(i.f1751h1, 85);
        f1573g.append(i.f1742g1, 86);
        SparseIntArray sparseIntArray = f1574h;
        int i10 = i.R3;
        sparseIntArray.append(i10, 6);
        f1574h.append(i10, 7);
        f1574h.append(i.M2, 27);
        f1574h.append(i.U3, 13);
        f1574h.append(i.X3, 16);
        f1574h.append(i.V3, 14);
        f1574h.append(i.S3, 11);
        f1574h.append(i.W3, 15);
        f1574h.append(i.T3, 12);
        f1574h.append(i.L3, 40);
        f1574h.append(i.E3, 39);
        f1574h.append(i.D3, 41);
        f1574h.append(i.K3, 42);
        f1574h.append(i.C3, 20);
        f1574h.append(i.J3, 37);
        f1574h.append(i.f1888w3, 5);
        f1574h.append(i.F3, 87);
        f1574h.append(i.I3, 87);
        f1574h.append(i.G3, 87);
        f1574h.append(i.f1861t3, 87);
        f1574h.append(i.f1852s3, 87);
        f1574h.append(i.R2, 24);
        f1574h.append(i.T2, 28);
        f1574h.append(i.f1735f3, 31);
        f1574h.append(i.f1744g3, 8);
        f1574h.append(i.S2, 34);
        f1574h.append(i.U2, 2);
        f1574h.append(i.P2, 23);
        f1574h.append(i.Q2, 21);
        f1574h.append(i.M3, 95);
        f1574h.append(i.f1897x3, 96);
        f1574h.append(i.O2, 22);
        f1574h.append(i.V2, 43);
        f1574h.append(i.f1762i3, 44);
        f1574h.append(i.f1717d3, 45);
        f1574h.append(i.f1726e3, 46);
        f1574h.append(i.f1708c3, 60);
        f1574h.append(i.f1690a3, 47);
        f1574h.append(i.f1699b3, 48);
        f1574h.append(i.W2, 49);
        f1574h.append(i.X2, 50);
        f1574h.append(i.Y2, 51);
        f1574h.append(i.Z2, 52);
        f1574h.append(i.f1753h3, 53);
        f1574h.append(i.N3, 54);
        f1574h.append(i.f1906y3, 55);
        f1574h.append(i.O3, 56);
        f1574h.append(i.f1915z3, 57);
        f1574h.append(i.P3, 58);
        f1574h.append(i.A3, 59);
        f1574h.append(i.f1879v3, 62);
        f1574h.append(i.f1870u3, 63);
        f1574h.append(i.f1771j3, 64);
        f1574h.append(i.f1763i4, 65);
        f1574h.append(i.f1825p3, 66);
        f1574h.append(i.f1772j4, 67);
        f1574h.append(i.f1691a4, 79);
        f1574h.append(i.N2, 38);
        f1574h.append(i.f1700b4, 98);
        f1574h.append(i.Z3, 68);
        f1574h.append(i.Q3, 69);
        f1574h.append(i.B3, 70);
        f1574h.append(i.f1807n3, 71);
        f1574h.append(i.f1789l3, 72);
        f1574h.append(i.f1798m3, 73);
        f1574h.append(i.f1816o3, 74);
        f1574h.append(i.f1780k3, 75);
        f1574h.append(i.f1709c4, 76);
        f1574h.append(i.H3, 77);
        f1574h.append(i.f1781k4, 78);
        f1574h.append(i.f1843r3, 80);
        f1574h.append(i.f1834q3, 81);
        f1574h.append(i.f1718d4, 82);
        f1574h.append(i.f1754h4, 83);
        f1574h.append(i.f1745g4, 84);
        f1574h.append(i.f1736f4, 85);
        f1574h.append(i.f1727e4, 86);
        f1574h.append(i.Y3, 97);
    }

    private int[] j(View view, String str) {
        int iIntValue;
        Object objG;
        String[] strArrSplit = str.split(",");
        Context context = view.getContext();
        int[] iArr = new int[strArrSplit.length];
        int i10 = 0;
        int i11 = 0;
        while (i10 < strArrSplit.length) {
            String strTrim = strArrSplit[i10].trim();
            try {
                iIntValue = h.class.getField(strTrim).getInt(null);
            } catch (Exception unused) {
                iIntValue = 0;
            }
            if (iIntValue == 0) {
                iIntValue = context.getResources().getIdentifier(strTrim, "id", context.getPackageName());
            }
            if (iIntValue == 0 && view.isInEditMode() && (view.getParent() instanceof ConstraintLayout) && (objG = ((ConstraintLayout) view.getParent()).g(0, strTrim)) != null && (objG instanceof Integer)) {
                iIntValue = ((Integer) objG).intValue();
            }
            iArr[i11] = iIntValue;
            i10++;
            i11++;
        }
        return i11 != strArrSplit.length ? Arrays.copyOf(iArr, i11) : iArr;
    }

    private a k(Context context, AttributeSet attributeSet, boolean z10) {
        a aVar = new a();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, z10 ? i.L2 : i.f1857t);
        s(context, aVar, typedArrayObtainStyledAttributes, z10);
        typedArrayObtainStyledAttributes.recycle();
        return aVar;
    }

    private a l(int i10) {
        if (!this.f1579e.containsKey(Integer.valueOf(i10))) {
            this.f1579e.put(Integer.valueOf(i10), new a());
        }
        return this.f1579e.get(Integer.valueOf(i10));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int o(TypedArray typedArray, int i10, int i11) {
        int resourceId = typedArray.getResourceId(i10, i11);
        return resourceId == -1 ? typedArray.getInt(i10, -1) : resourceId;
    }

    static void p(Object obj, TypedArray typedArray, int i10, int i11) {
        if (obj == null) {
            return;
        }
        int i12 = typedArray.peekValue(i10).type;
        if (i12 == 3) {
            q(obj, typedArray.getString(i10), i11);
            return;
        }
        int dimensionPixelSize = -2;
        boolean z10 = false;
        if (i12 != 5) {
            int i13 = typedArray.getInt(i10, 0);
            if (i13 != -4) {
                dimensionPixelSize = (i13 == -3 || !(i13 == -2 || i13 == -1)) ? 0 : i13;
            } else {
                z10 = true;
            }
        } else {
            dimensionPixelSize = typedArray.getDimensionPixelSize(i10, 0);
        }
        if (obj instanceof ConstraintLayout.b) {
            ConstraintLayout.b bVar = (ConstraintLayout.b) obj;
            if (i11 == 0) {
                ((ViewGroup.MarginLayoutParams) bVar).width = dimensionPixelSize;
                bVar.f1472a0 = z10;
                return;
            } else {
                ((ViewGroup.MarginLayoutParams) bVar).height = dimensionPixelSize;
                bVar.f1474b0 = z10;
                return;
            }
        }
        if (obj instanceof b) {
            b bVar2 = (b) obj;
            if (i11 == 0) {
                bVar2.f1607d = dimensionPixelSize;
                bVar2.f1628n0 = z10;
                return;
            } else {
                bVar2.f1609e = dimensionPixelSize;
                bVar2.f1630o0 = z10;
                return;
            }
        }
        if (obj instanceof a.C0021a) {
            a.C0021a c0021a = (a.C0021a) obj;
            if (i11 == 0) {
                c0021a.b(23, dimensionPixelSize);
                c0021a.d(80, z10);
            } else {
                c0021a.b(21, dimensionPixelSize);
                c0021a.d(81, z10);
            }
        }
    }

    static void q(Object obj, String str, int i10) {
        if (str == null) {
            return;
        }
        int iIndexOf = str.indexOf(61);
        int length = str.length();
        if (iIndexOf <= 0 || iIndexOf >= length - 1) {
            return;
        }
        String strSubstring = str.substring(0, iIndexOf);
        String strSubstring2 = str.substring(iIndexOf + 1);
        if (strSubstring2.length() > 0) {
            String strTrim = strSubstring.trim();
            String strTrim2 = strSubstring2.trim();
            if ("ratio".equalsIgnoreCase(strTrim)) {
                if (obj instanceof ConstraintLayout.b) {
                    ConstraintLayout.b bVar = (ConstraintLayout.b) obj;
                    if (i10 == 0) {
                        ((ViewGroup.MarginLayoutParams) bVar).width = 0;
                    } else {
                        ((ViewGroup.MarginLayoutParams) bVar).height = 0;
                    }
                    r(bVar, strTrim2);
                    return;
                }
                if (obj instanceof b) {
                    ((b) obj).A = strTrim2;
                    return;
                } else {
                    if (obj instanceof a.C0021a) {
                        ((a.C0021a) obj).c(5, strTrim2);
                        return;
                    }
                    return;
                }
            }
            try {
                if ("weight".equalsIgnoreCase(strTrim)) {
                    float f10 = Float.parseFloat(strTrim2);
                    if (obj instanceof ConstraintLayout.b) {
                        ConstraintLayout.b bVar2 = (ConstraintLayout.b) obj;
                        if (i10 == 0) {
                            ((ViewGroup.MarginLayoutParams) bVar2).width = 0;
                            bVar2.L = f10;
                        } else {
                            ((ViewGroup.MarginLayoutParams) bVar2).height = 0;
                            bVar2.M = f10;
                        }
                    } else if (obj instanceof b) {
                        b bVar3 = (b) obj;
                        if (i10 == 0) {
                            bVar3.f1607d = 0;
                            bVar3.W = f10;
                        } else {
                            bVar3.f1609e = 0;
                            bVar3.V = f10;
                        }
                    } else if (obj instanceof a.C0021a) {
                        a.C0021a c0021a = (a.C0021a) obj;
                        if (i10 == 0) {
                            c0021a.b(23, 0);
                            c0021a.a(39, f10);
                        } else {
                            c0021a.b(21, 0);
                            c0021a.a(40, f10);
                        }
                    }
                } else {
                    if (!"parent".equalsIgnoreCase(strTrim)) {
                        return;
                    }
                    float fMax = Math.max(0.0f, Math.min(1.0f, Float.parseFloat(strTrim2)));
                    if (obj instanceof ConstraintLayout.b) {
                        ConstraintLayout.b bVar4 = (ConstraintLayout.b) obj;
                        if (i10 == 0) {
                            ((ViewGroup.MarginLayoutParams) bVar4).width = 0;
                            bVar4.V = fMax;
                            bVar4.P = 2;
                        } else {
                            ((ViewGroup.MarginLayoutParams) bVar4).height = 0;
                            bVar4.W = fMax;
                            bVar4.Q = 2;
                        }
                    } else if (obj instanceof b) {
                        b bVar5 = (b) obj;
                        if (i10 == 0) {
                            bVar5.f1607d = 0;
                            bVar5.f1612f0 = fMax;
                            bVar5.Z = 2;
                        } else {
                            bVar5.f1609e = 0;
                            bVar5.f1614g0 = fMax;
                            bVar5.f1602a0 = 2;
                        }
                    } else if (obj instanceof a.C0021a) {
                        a.C0021a c0021a2 = (a.C0021a) obj;
                        if (i10 == 0) {
                            c0021a2.b(23, 0);
                            c0021a2.b(54, 2);
                        } else {
                            c0021a2.b(21, 0);
                            c0021a2.b(55, 2);
                        }
                    }
                }
            } catch (NumberFormatException unused) {
            }
        }
    }

    static void r(ConstraintLayout.b bVar, String str) {
        float fAbs = Float.NaN;
        int i10 = -1;
        if (str != null) {
            int length = str.length();
            int iIndexOf = str.indexOf(44);
            int i11 = 0;
            if (iIndexOf > 0 && iIndexOf < length - 1) {
                String strSubstring = str.substring(0, iIndexOf);
                if (strSubstring.equalsIgnoreCase("W")) {
                    i10 = 0;
                } else if (strSubstring.equalsIgnoreCase("H")) {
                    i10 = 1;
                }
                i11 = iIndexOf + 1;
            }
            int iIndexOf2 = str.indexOf(58);
            try {
                if (iIndexOf2 < 0 || iIndexOf2 >= length - 1) {
                    String strSubstring2 = str.substring(i11);
                    if (strSubstring2.length() > 0) {
                        fAbs = Float.parseFloat(strSubstring2);
                    }
                } else {
                    String strSubstring3 = str.substring(i11, iIndexOf2);
                    String strSubstring4 = str.substring(iIndexOf2 + 1);
                    if (strSubstring3.length() > 0 && strSubstring4.length() > 0) {
                        float f10 = Float.parseFloat(strSubstring3);
                        float f11 = Float.parseFloat(strSubstring4);
                        if (f10 > 0.0f && f11 > 0.0f) {
                            fAbs = i10 == 1 ? Math.abs(f11 / f10) : Math.abs(f10 / f11);
                        }
                    }
                }
            } catch (NumberFormatException unused) {
            }
        }
        bVar.I = str;
        bVar.J = fAbs;
        bVar.K = i10;
    }

    private void s(Context context, a aVar, TypedArray typedArray, boolean z10) {
        if (z10) {
            t(context, aVar, typedArray);
            return;
        }
        int indexCount = typedArray.getIndexCount();
        for (int i10 = 0; i10 < indexCount; i10++) {
            int index = typedArray.getIndex(i10);
            if (index != i.f1875v && i.N != index && i.O != index) {
                aVar.f1583d.f1645a = true;
                aVar.f1584e.f1603b = true;
                aVar.f1582c.f1659a = true;
                aVar.f1585f.f1665a = true;
            }
            switch (f1573g.get(index)) {
                case 1:
                    b bVar = aVar.f1584e;
                    bVar.f1635r = o(typedArray, index, bVar.f1635r);
                    break;
                case 2:
                    b bVar2 = aVar.f1584e;
                    bVar2.K = typedArray.getDimensionPixelSize(index, bVar2.K);
                    break;
                case 3:
                    b bVar3 = aVar.f1584e;
                    bVar3.f1633q = o(typedArray, index, bVar3.f1633q);
                    break;
                case 4:
                    b bVar4 = aVar.f1584e;
                    bVar4.f1631p = o(typedArray, index, bVar4.f1631p);
                    break;
                case 5:
                    aVar.f1584e.A = typedArray.getString(index);
                    break;
                case 6:
                    b bVar5 = aVar.f1584e;
                    bVar5.E = typedArray.getDimensionPixelOffset(index, bVar5.E);
                    break;
                case 7:
                    b bVar6 = aVar.f1584e;
                    bVar6.F = typedArray.getDimensionPixelOffset(index, bVar6.F);
                    break;
                case 8:
                    if (Build.VERSION.SDK_INT >= 17) {
                        b bVar7 = aVar.f1584e;
                        bVar7.L = typedArray.getDimensionPixelSize(index, bVar7.L);
                    }
                    break;
                case 9:
                    b bVar8 = aVar.f1584e;
                    bVar8.f1641x = o(typedArray, index, bVar8.f1641x);
                    break;
                case 10:
                    b bVar9 = aVar.f1584e;
                    bVar9.f1640w = o(typedArray, index, bVar9.f1640w);
                    break;
                case 11:
                    b bVar10 = aVar.f1584e;
                    bVar10.R = typedArray.getDimensionPixelSize(index, bVar10.R);
                    break;
                case 12:
                    b bVar11 = aVar.f1584e;
                    bVar11.S = typedArray.getDimensionPixelSize(index, bVar11.S);
                    break;
                case 13:
                    b bVar12 = aVar.f1584e;
                    bVar12.O = typedArray.getDimensionPixelSize(index, bVar12.O);
                    break;
                case 14:
                    b bVar13 = aVar.f1584e;
                    bVar13.Q = typedArray.getDimensionPixelSize(index, bVar13.Q);
                    break;
                case 15:
                    b bVar14 = aVar.f1584e;
                    bVar14.T = typedArray.getDimensionPixelSize(index, bVar14.T);
                    break;
                case 16:
                    b bVar15 = aVar.f1584e;
                    bVar15.P = typedArray.getDimensionPixelSize(index, bVar15.P);
                    break;
                case 17:
                    b bVar16 = aVar.f1584e;
                    bVar16.f1611f = typedArray.getDimensionPixelOffset(index, bVar16.f1611f);
                    break;
                case 18:
                    b bVar17 = aVar.f1584e;
                    bVar17.f1613g = typedArray.getDimensionPixelOffset(index, bVar17.f1613g);
                    break;
                case 19:
                    b bVar18 = aVar.f1584e;
                    bVar18.f1615h = typedArray.getFloat(index, bVar18.f1615h);
                    break;
                case 20:
                    b bVar19 = aVar.f1584e;
                    bVar19.f1642y = typedArray.getFloat(index, bVar19.f1642y);
                    break;
                case 21:
                    b bVar20 = aVar.f1584e;
                    bVar20.f1609e = typedArray.getLayoutDimension(index, bVar20.f1609e);
                    break;
                case 22:
                    C0022d c0022d = aVar.f1582c;
                    c0022d.f1660b = typedArray.getInt(index, c0022d.f1660b);
                    C0022d c0022d2 = aVar.f1582c;
                    c0022d2.f1660b = f1572f[c0022d2.f1660b];
                    break;
                case 23:
                    b bVar21 = aVar.f1584e;
                    bVar21.f1607d = typedArray.getLayoutDimension(index, bVar21.f1607d);
                    break;
                case 24:
                    b bVar22 = aVar.f1584e;
                    bVar22.H = typedArray.getDimensionPixelSize(index, bVar22.H);
                    break;
                case 25:
                    b bVar23 = aVar.f1584e;
                    bVar23.f1619j = o(typedArray, index, bVar23.f1619j);
                    break;
                case 26:
                    b bVar24 = aVar.f1584e;
                    bVar24.f1621k = o(typedArray, index, bVar24.f1621k);
                    break;
                case 27:
                    b bVar25 = aVar.f1584e;
                    bVar25.G = typedArray.getInt(index, bVar25.G);
                    break;
                case 28:
                    b bVar26 = aVar.f1584e;
                    bVar26.I = typedArray.getDimensionPixelSize(index, bVar26.I);
                    break;
                case 29:
                    b bVar27 = aVar.f1584e;
                    bVar27.f1623l = o(typedArray, index, bVar27.f1623l);
                    break;
                case 30:
                    b bVar28 = aVar.f1584e;
                    bVar28.f1625m = o(typedArray, index, bVar28.f1625m);
                    break;
                case 31:
                    if (Build.VERSION.SDK_INT >= 17) {
                        b bVar29 = aVar.f1584e;
                        bVar29.M = typedArray.getDimensionPixelSize(index, bVar29.M);
                    }
                    break;
                case 32:
                    b bVar30 = aVar.f1584e;
                    bVar30.f1638u = o(typedArray, index, bVar30.f1638u);
                    break;
                case 33:
                    b bVar31 = aVar.f1584e;
                    bVar31.f1639v = o(typedArray, index, bVar31.f1639v);
                    break;
                case 34:
                    b bVar32 = aVar.f1584e;
                    bVar32.J = typedArray.getDimensionPixelSize(index, bVar32.J);
                    break;
                case 35:
                    b bVar33 = aVar.f1584e;
                    bVar33.f1629o = o(typedArray, index, bVar33.f1629o);
                    break;
                case 36:
                    b bVar34 = aVar.f1584e;
                    bVar34.f1627n = o(typedArray, index, bVar34.f1627n);
                    break;
                case 37:
                    b bVar35 = aVar.f1584e;
                    bVar35.f1643z = typedArray.getFloat(index, bVar35.f1643z);
                    break;
                case 38:
                    aVar.f1580a = typedArray.getResourceId(index, aVar.f1580a);
                    break;
                case 39:
                    b bVar36 = aVar.f1584e;
                    bVar36.W = typedArray.getFloat(index, bVar36.W);
                    break;
                case 40:
                    b bVar37 = aVar.f1584e;
                    bVar37.V = typedArray.getFloat(index, bVar37.V);
                    break;
                case 41:
                    b bVar38 = aVar.f1584e;
                    bVar38.X = typedArray.getInt(index, bVar38.X);
                    break;
                case 42:
                    b bVar39 = aVar.f1584e;
                    bVar39.Y = typedArray.getInt(index, bVar39.Y);
                    break;
                case 43:
                    C0022d c0022d3 = aVar.f1582c;
                    c0022d3.f1662d = typedArray.getFloat(index, c0022d3.f1662d);
                    break;
                case 44:
                    if (Build.VERSION.SDK_INT >= 21) {
                        e eVar = aVar.f1585f;
                        eVar.f1677m = true;
                        eVar.f1678n = typedArray.getDimension(index, eVar.f1678n);
                    }
                    break;
                case 45:
                    e eVar2 = aVar.f1585f;
                    eVar2.f1667c = typedArray.getFloat(index, eVar2.f1667c);
                    break;
                case 46:
                    e eVar3 = aVar.f1585f;
                    eVar3.f1668d = typedArray.getFloat(index, eVar3.f1668d);
                    break;
                case 47:
                    e eVar4 = aVar.f1585f;
                    eVar4.f1669e = typedArray.getFloat(index, eVar4.f1669e);
                    break;
                case 48:
                    e eVar5 = aVar.f1585f;
                    eVar5.f1670f = typedArray.getFloat(index, eVar5.f1670f);
                    break;
                case 49:
                    e eVar6 = aVar.f1585f;
                    eVar6.f1671g = typedArray.getDimension(index, eVar6.f1671g);
                    break;
                case 50:
                    e eVar7 = aVar.f1585f;
                    eVar7.f1672h = typedArray.getDimension(index, eVar7.f1672h);
                    break;
                case 51:
                    e eVar8 = aVar.f1585f;
                    eVar8.f1674j = typedArray.getDimension(index, eVar8.f1674j);
                    break;
                case 52:
                    e eVar9 = aVar.f1585f;
                    eVar9.f1675k = typedArray.getDimension(index, eVar9.f1675k);
                    break;
                case 53:
                    if (Build.VERSION.SDK_INT >= 21) {
                        e eVar10 = aVar.f1585f;
                        eVar10.f1676l = typedArray.getDimension(index, eVar10.f1676l);
                    }
                    break;
                case 54:
                    b bVar40 = aVar.f1584e;
                    bVar40.Z = typedArray.getInt(index, bVar40.Z);
                    break;
                case 55:
                    b bVar41 = aVar.f1584e;
                    bVar41.f1602a0 = typedArray.getInt(index, bVar41.f1602a0);
                    break;
                case 56:
                    b bVar42 = aVar.f1584e;
                    bVar42.f1604b0 = typedArray.getDimensionPixelSize(index, bVar42.f1604b0);
                    break;
                case 57:
                    b bVar43 = aVar.f1584e;
                    bVar43.f1606c0 = typedArray.getDimensionPixelSize(index, bVar43.f1606c0);
                    break;
                case 58:
                    b bVar44 = aVar.f1584e;
                    bVar44.f1608d0 = typedArray.getDimensionPixelSize(index, bVar44.f1608d0);
                    break;
                case 59:
                    b bVar45 = aVar.f1584e;
                    bVar45.f1610e0 = typedArray.getDimensionPixelSize(index, bVar45.f1610e0);
                    break;
                case 60:
                    e eVar11 = aVar.f1585f;
                    eVar11.f1666b = typedArray.getFloat(index, eVar11.f1666b);
                    break;
                case 61:
                    b bVar46 = aVar.f1584e;
                    bVar46.B = o(typedArray, index, bVar46.B);
                    break;
                case 62:
                    b bVar47 = aVar.f1584e;
                    bVar47.C = typedArray.getDimensionPixelSize(index, bVar47.C);
                    break;
                case 63:
                    b bVar48 = aVar.f1584e;
                    bVar48.D = typedArray.getFloat(index, bVar48.D);
                    break;
                case 64:
                    c cVar = aVar.f1583d;
                    cVar.f1646b = o(typedArray, index, cVar.f1646b);
                    break;
                case 65:
                    if (typedArray.peekValue(index).type == 3) {
                        aVar.f1583d.f1648d = typedArray.getString(index);
                    } else {
                        aVar.f1583d.f1648d = q.b.f33718c[typedArray.getInteger(index, 0)];
                    }
                    break;
                case 66:
                    aVar.f1583d.f1650f = typedArray.getInt(index, 0);
                    break;
                case 67:
                    c cVar2 = aVar.f1583d;
                    cVar2.f1653i = typedArray.getFloat(index, cVar2.f1653i);
                    break;
                case 68:
                    C0022d c0022d4 = aVar.f1582c;
                    c0022d4.f1663e = typedArray.getFloat(index, c0022d4.f1663e);
                    break;
                case 69:
                    aVar.f1584e.f1612f0 = typedArray.getFloat(index, 1.0f);
                    break;
                case 70:
                    aVar.f1584e.f1614g0 = typedArray.getFloat(index, 1.0f);
                    break;
                case 71:
                    Log.e("ConstraintSet", "CURRENTLY UNSUPPORTED");
                    break;
                case 72:
                    b bVar49 = aVar.f1584e;
                    bVar49.f1616h0 = typedArray.getInt(index, bVar49.f1616h0);
                    break;
                case 73:
                    b bVar50 = aVar.f1584e;
                    bVar50.f1618i0 = typedArray.getDimensionPixelSize(index, bVar50.f1618i0);
                    break;
                case 74:
                    aVar.f1584e.f1624l0 = typedArray.getString(index);
                    break;
                case 75:
                    b bVar51 = aVar.f1584e;
                    bVar51.f1632p0 = typedArray.getBoolean(index, bVar51.f1632p0);
                    break;
                case 76:
                    c cVar3 = aVar.f1583d;
                    cVar3.f1649e = typedArray.getInt(index, cVar3.f1649e);
                    break;
                case 77:
                    aVar.f1584e.f1626m0 = typedArray.getString(index);
                    break;
                case 78:
                    C0022d c0022d5 = aVar.f1582c;
                    c0022d5.f1661c = typedArray.getInt(index, c0022d5.f1661c);
                    break;
                case 79:
                    c cVar4 = aVar.f1583d;
                    cVar4.f1651g = typedArray.getFloat(index, cVar4.f1651g);
                    break;
                case 80:
                    b bVar52 = aVar.f1584e;
                    bVar52.f1628n0 = typedArray.getBoolean(index, bVar52.f1628n0);
                    break;
                case 81:
                    b bVar53 = aVar.f1584e;
                    bVar53.f1630o0 = typedArray.getBoolean(index, bVar53.f1630o0);
                    break;
                case 82:
                    c cVar5 = aVar.f1583d;
                    cVar5.f1647c = typedArray.getInteger(index, cVar5.f1647c);
                    break;
                case 83:
                    e eVar12 = aVar.f1585f;
                    eVar12.f1673i = o(typedArray, index, eVar12.f1673i);
                    break;
                case 84:
                    c cVar6 = aVar.f1583d;
                    cVar6.f1655k = typedArray.getInteger(index, cVar6.f1655k);
                    break;
                case 85:
                    c cVar7 = aVar.f1583d;
                    cVar7.f1654j = typedArray.getFloat(index, cVar7.f1654j);
                    break;
                case 86:
                    int i11 = typedArray.peekValue(index).type;
                    if (i11 == 1) {
                        aVar.f1583d.f1658n = typedArray.getResourceId(index, -1);
                        c cVar8 = aVar.f1583d;
                        if (cVar8.f1658n != -1) {
                            cVar8.f1657m = -2;
                        }
                    } else if (i11 == 3) {
                        aVar.f1583d.f1656l = typedArray.getString(index);
                        if (aVar.f1583d.f1656l.indexOf("/") > 0) {
                            aVar.f1583d.f1658n = typedArray.getResourceId(index, -1);
                            aVar.f1583d.f1657m = -2;
                        } else {
                            aVar.f1583d.f1657m = -1;
                        }
                    } else {
                        c cVar9 = aVar.f1583d;
                        cVar9.f1657m = typedArray.getInteger(index, cVar9.f1658n);
                    }
                    break;
                case 87:
                    Log.w("ConstraintSet", "unused attribute 0x" + Integer.toHexString(index) + "   " + f1573g.get(index));
                    break;
                case 88:
                case 89:
                case 90:
                default:
                    Log.w("ConstraintSet", "Unknown attribute 0x" + Integer.toHexString(index) + "   " + f1573g.get(index));
                    break;
                case 91:
                    b bVar54 = aVar.f1584e;
                    bVar54.f1636s = o(typedArray, index, bVar54.f1636s);
                    break;
                case 92:
                    b bVar55 = aVar.f1584e;
                    bVar55.f1637t = o(typedArray, index, bVar55.f1637t);
                    break;
                case 93:
                    b bVar56 = aVar.f1584e;
                    bVar56.N = typedArray.getDimensionPixelSize(index, bVar56.N);
                    break;
                case 94:
                    b bVar57 = aVar.f1584e;
                    bVar57.U = typedArray.getDimensionPixelSize(index, bVar57.U);
                    break;
                case 95:
                    p(aVar.f1584e, typedArray, index, 0);
                    break;
                case 96:
                    p(aVar.f1584e, typedArray, index, 1);
                    break;
                case 97:
                    b bVar58 = aVar.f1584e;
                    bVar58.f1634q0 = typedArray.getInt(index, bVar58.f1634q0);
                    break;
            }
        }
        b bVar59 = aVar.f1584e;
        if (bVar59.f1624l0 != null) {
            bVar59.f1622k0 = null;
        }
    }

    private static void t(Context context, a aVar, TypedArray typedArray) {
        int indexCount = typedArray.getIndexCount();
        a.C0021a c0021a = new a.C0021a();
        aVar.f1587h = c0021a;
        aVar.f1583d.f1645a = false;
        aVar.f1584e.f1603b = false;
        aVar.f1582c.f1659a = false;
        aVar.f1585f.f1665a = false;
        for (int i10 = 0; i10 < indexCount; i10++) {
            int index = typedArray.getIndex(i10);
            switch (f1574h.get(index)) {
                case 2:
                    c0021a.b(2, typedArray.getDimensionPixelSize(index, aVar.f1584e.K));
                    break;
                case 3:
                case 4:
                case 9:
                case 10:
                case 25:
                case 26:
                case 29:
                case 30:
                case 32:
                case 33:
                case 35:
                case 36:
                case 61:
                case 88:
                case 89:
                case 90:
                case 91:
                case 92:
                default:
                    Log.w("ConstraintSet", "Unknown attribute 0x" + Integer.toHexString(index) + "   " + f1573g.get(index));
                    break;
                case 5:
                    c0021a.c(5, typedArray.getString(index));
                    break;
                case 6:
                    c0021a.b(6, typedArray.getDimensionPixelOffset(index, aVar.f1584e.E));
                    break;
                case 7:
                    c0021a.b(7, typedArray.getDimensionPixelOffset(index, aVar.f1584e.F));
                    break;
                case 8:
                    if (Build.VERSION.SDK_INT >= 17) {
                        c0021a.b(8, typedArray.getDimensionPixelSize(index, aVar.f1584e.L));
                    }
                    break;
                case 11:
                    c0021a.b(11, typedArray.getDimensionPixelSize(index, aVar.f1584e.R));
                    break;
                case 12:
                    c0021a.b(12, typedArray.getDimensionPixelSize(index, aVar.f1584e.S));
                    break;
                case 13:
                    c0021a.b(13, typedArray.getDimensionPixelSize(index, aVar.f1584e.O));
                    break;
                case 14:
                    c0021a.b(14, typedArray.getDimensionPixelSize(index, aVar.f1584e.Q));
                    break;
                case 15:
                    c0021a.b(15, typedArray.getDimensionPixelSize(index, aVar.f1584e.T));
                    break;
                case 16:
                    c0021a.b(16, typedArray.getDimensionPixelSize(index, aVar.f1584e.P));
                    break;
                case 17:
                    c0021a.b(17, typedArray.getDimensionPixelOffset(index, aVar.f1584e.f1611f));
                    break;
                case 18:
                    c0021a.b(18, typedArray.getDimensionPixelOffset(index, aVar.f1584e.f1613g));
                    break;
                case 19:
                    c0021a.a(19, typedArray.getFloat(index, aVar.f1584e.f1615h));
                    break;
                case 20:
                    c0021a.a(20, typedArray.getFloat(index, aVar.f1584e.f1642y));
                    break;
                case 21:
                    c0021a.b(21, typedArray.getLayoutDimension(index, aVar.f1584e.f1609e));
                    break;
                case 22:
                    c0021a.b(22, f1572f[typedArray.getInt(index, aVar.f1582c.f1660b)]);
                    break;
                case 23:
                    c0021a.b(23, typedArray.getLayoutDimension(index, aVar.f1584e.f1607d));
                    break;
                case 24:
                    c0021a.b(24, typedArray.getDimensionPixelSize(index, aVar.f1584e.H));
                    break;
                case 27:
                    c0021a.b(27, typedArray.getInt(index, aVar.f1584e.G));
                    break;
                case 28:
                    c0021a.b(28, typedArray.getDimensionPixelSize(index, aVar.f1584e.I));
                    break;
                case 31:
                    if (Build.VERSION.SDK_INT >= 17) {
                        c0021a.b(31, typedArray.getDimensionPixelSize(index, aVar.f1584e.M));
                    }
                    break;
                case 34:
                    c0021a.b(34, typedArray.getDimensionPixelSize(index, aVar.f1584e.J));
                    break;
                case 37:
                    c0021a.a(37, typedArray.getFloat(index, aVar.f1584e.f1643z));
                    break;
                case 38:
                    int resourceId = typedArray.getResourceId(index, aVar.f1580a);
                    aVar.f1580a = resourceId;
                    c0021a.b(38, resourceId);
                    break;
                case 39:
                    c0021a.a(39, typedArray.getFloat(index, aVar.f1584e.W));
                    break;
                case 40:
                    c0021a.a(40, typedArray.getFloat(index, aVar.f1584e.V));
                    break;
                case 41:
                    c0021a.b(41, typedArray.getInt(index, aVar.f1584e.X));
                    break;
                case 42:
                    c0021a.b(42, typedArray.getInt(index, aVar.f1584e.Y));
                    break;
                case 43:
                    c0021a.a(43, typedArray.getFloat(index, aVar.f1582c.f1662d));
                    break;
                case 44:
                    if (Build.VERSION.SDK_INT >= 21) {
                        c0021a.d(44, true);
                        c0021a.a(44, typedArray.getDimension(index, aVar.f1585f.f1678n));
                    }
                    break;
                case 45:
                    c0021a.a(45, typedArray.getFloat(index, aVar.f1585f.f1667c));
                    break;
                case 46:
                    c0021a.a(46, typedArray.getFloat(index, aVar.f1585f.f1668d));
                    break;
                case 47:
                    c0021a.a(47, typedArray.getFloat(index, aVar.f1585f.f1669e));
                    break;
                case 48:
                    c0021a.a(48, typedArray.getFloat(index, aVar.f1585f.f1670f));
                    break;
                case 49:
                    c0021a.a(49, typedArray.getDimension(index, aVar.f1585f.f1671g));
                    break;
                case 50:
                    c0021a.a(50, typedArray.getDimension(index, aVar.f1585f.f1672h));
                    break;
                case 51:
                    c0021a.a(51, typedArray.getDimension(index, aVar.f1585f.f1674j));
                    break;
                case 52:
                    c0021a.a(52, typedArray.getDimension(index, aVar.f1585f.f1675k));
                    break;
                case 53:
                    if (Build.VERSION.SDK_INT >= 21) {
                        c0021a.a(53, typedArray.getDimension(index, aVar.f1585f.f1676l));
                    }
                    break;
                case 54:
                    c0021a.b(54, typedArray.getInt(index, aVar.f1584e.Z));
                    break;
                case 55:
                    c0021a.b(55, typedArray.getInt(index, aVar.f1584e.f1602a0));
                    break;
                case 56:
                    c0021a.b(56, typedArray.getDimensionPixelSize(index, aVar.f1584e.f1604b0));
                    break;
                case 57:
                    c0021a.b(57, typedArray.getDimensionPixelSize(index, aVar.f1584e.f1606c0));
                    break;
                case 58:
                    c0021a.b(58, typedArray.getDimensionPixelSize(index, aVar.f1584e.f1608d0));
                    break;
                case 59:
                    c0021a.b(59, typedArray.getDimensionPixelSize(index, aVar.f1584e.f1610e0));
                    break;
                case 60:
                    c0021a.a(60, typedArray.getFloat(index, aVar.f1585f.f1666b));
                    break;
                case 62:
                    c0021a.b(62, typedArray.getDimensionPixelSize(index, aVar.f1584e.C));
                    break;
                case 63:
                    c0021a.a(63, typedArray.getFloat(index, aVar.f1584e.D));
                    break;
                case 64:
                    c0021a.b(64, o(typedArray, index, aVar.f1583d.f1646b));
                    break;
                case 65:
                    if (typedArray.peekValue(index).type == 3) {
                        c0021a.c(65, typedArray.getString(index));
                    } else {
                        c0021a.c(65, q.b.f33718c[typedArray.getInteger(index, 0)]);
                    }
                    break;
                case 66:
                    c0021a.b(66, typedArray.getInt(index, 0));
                    break;
                case 67:
                    c0021a.a(67, typedArray.getFloat(index, aVar.f1583d.f1653i));
                    break;
                case 68:
                    c0021a.a(68, typedArray.getFloat(index, aVar.f1582c.f1663e));
                    break;
                case 69:
                    c0021a.a(69, typedArray.getFloat(index, 1.0f));
                    break;
                case 70:
                    c0021a.a(70, typedArray.getFloat(index, 1.0f));
                    break;
                case 71:
                    Log.e("ConstraintSet", "CURRENTLY UNSUPPORTED");
                    break;
                case 72:
                    c0021a.b(72, typedArray.getInt(index, aVar.f1584e.f1616h0));
                    break;
                case 73:
                    c0021a.b(73, typedArray.getDimensionPixelSize(index, aVar.f1584e.f1618i0));
                    break;
                case 74:
                    c0021a.c(74, typedArray.getString(index));
                    break;
                case 75:
                    c0021a.d(75, typedArray.getBoolean(index, aVar.f1584e.f1632p0));
                    break;
                case 76:
                    c0021a.b(76, typedArray.getInt(index, aVar.f1583d.f1649e));
                    break;
                case 77:
                    c0021a.c(77, typedArray.getString(index));
                    break;
                case 78:
                    c0021a.b(78, typedArray.getInt(index, aVar.f1582c.f1661c));
                    break;
                case 79:
                    c0021a.a(79, typedArray.getFloat(index, aVar.f1583d.f1651g));
                    break;
                case 80:
                    c0021a.d(80, typedArray.getBoolean(index, aVar.f1584e.f1628n0));
                    break;
                case 81:
                    c0021a.d(81, typedArray.getBoolean(index, aVar.f1584e.f1630o0));
                    break;
                case 82:
                    c0021a.b(82, typedArray.getInteger(index, aVar.f1583d.f1647c));
                    break;
                case 83:
                    c0021a.b(83, o(typedArray, index, aVar.f1585f.f1673i));
                    break;
                case 84:
                    c0021a.b(84, typedArray.getInteger(index, aVar.f1583d.f1655k));
                    break;
                case 85:
                    c0021a.a(85, typedArray.getFloat(index, aVar.f1583d.f1654j));
                    break;
                case 86:
                    int i11 = typedArray.peekValue(index).type;
                    if (i11 == 1) {
                        aVar.f1583d.f1658n = typedArray.getResourceId(index, -1);
                        c0021a.b(89, aVar.f1583d.f1658n);
                        c cVar = aVar.f1583d;
                        if (cVar.f1658n != -1) {
                            cVar.f1657m = -2;
                            c0021a.b(88, -2);
                        }
                    } else if (i11 == 3) {
                        aVar.f1583d.f1656l = typedArray.getString(index);
                        c0021a.c(90, aVar.f1583d.f1656l);
                        if (aVar.f1583d.f1656l.indexOf("/") > 0) {
                            aVar.f1583d.f1658n = typedArray.getResourceId(index, -1);
                            c0021a.b(89, aVar.f1583d.f1658n);
                            aVar.f1583d.f1657m = -2;
                            c0021a.b(88, -2);
                        } else {
                            aVar.f1583d.f1657m = -1;
                            c0021a.b(88, -1);
                        }
                    } else {
                        c cVar2 = aVar.f1583d;
                        cVar2.f1657m = typedArray.getInteger(index, cVar2.f1658n);
                        c0021a.b(88, aVar.f1583d.f1657m);
                    }
                    break;
                case 87:
                    Log.w("ConstraintSet", "unused attribute 0x" + Integer.toHexString(index) + "   " + f1573g.get(index));
                    break;
                case 93:
                    c0021a.b(93, typedArray.getDimensionPixelSize(index, aVar.f1584e.N));
                    break;
                case 94:
                    c0021a.b(94, typedArray.getDimensionPixelSize(index, aVar.f1584e.U));
                    break;
                case 95:
                    p(c0021a, typedArray, index, 0);
                    break;
                case 96:
                    p(c0021a, typedArray, index, 1);
                    break;
                case 97:
                    c0021a.b(97, typedArray.getInt(index, aVar.f1584e.f1634q0));
                    break;
                case 98:
                    if (androidx.constraintlayout.motion.widget.j.L0) {
                        int resourceId2 = typedArray.getResourceId(index, aVar.f1580a);
                        aVar.f1580a = resourceId2;
                        if (resourceId2 == -1) {
                            aVar.f1581b = typedArray.getString(index);
                        }
                    } else if (typedArray.peekValue(index).type == 3) {
                        aVar.f1581b = typedArray.getString(index);
                    } else {
                        aVar.f1580a = typedArray.getResourceId(index, aVar.f1580a);
                    }
                    break;
                case 99:
                    c0021a.d(99, typedArray.getBoolean(index, aVar.f1584e.f1617i));
                    break;
            }
        }
    }

    public void c(ConstraintLayout constraintLayout) {
        d(constraintLayout, true);
        constraintLayout.setConstraintSet(null);
        constraintLayout.requestLayout();
    }

    void d(ConstraintLayout constraintLayout, boolean z10) {
        int childCount = constraintLayout.getChildCount();
        HashSet<Integer> hashSet = new HashSet(this.f1579e.keySet());
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = constraintLayout.getChildAt(i10);
            int id = childAt.getId();
            if (!this.f1579e.containsKey(Integer.valueOf(id))) {
                Log.w("ConstraintSet", "id unknown " + androidx.constraintlayout.motion.widget.a.b(childAt));
            } else {
                if (this.f1578d && id == -1) {
                    throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
                }
                if (id != -1) {
                    if (this.f1579e.containsKey(Integer.valueOf(id))) {
                        hashSet.remove(Integer.valueOf(id));
                        a aVar = this.f1579e.get(Integer.valueOf(id));
                        if (aVar != null) {
                            if (childAt instanceof Barrier) {
                                aVar.f1584e.f1620j0 = 1;
                                Barrier barrier = (Barrier) childAt;
                                barrier.setId(id);
                                barrier.setType(aVar.f1584e.f1616h0);
                                barrier.setMargin(aVar.f1584e.f1618i0);
                                barrier.setAllowsGoneWidget(aVar.f1584e.f1632p0);
                                b bVar = aVar.f1584e;
                                int[] iArr = bVar.f1622k0;
                                if (iArr != null) {
                                    barrier.setReferencedIds(iArr);
                                } else {
                                    String str = bVar.f1624l0;
                                    if (str != null) {
                                        bVar.f1622k0 = j(barrier, str);
                                        barrier.setReferencedIds(aVar.f1584e.f1622k0);
                                    }
                                }
                            }
                            ConstraintLayout.b bVar2 = (ConstraintLayout.b) childAt.getLayoutParams();
                            bVar2.a();
                            aVar.d(bVar2);
                            if (z10) {
                                androidx.constraintlayout.widget.a.e(childAt, aVar.f1586g);
                            }
                            childAt.setLayoutParams(bVar2);
                            C0022d c0022d = aVar.f1582c;
                            if (c0022d.f1661c == 0) {
                                childAt.setVisibility(c0022d.f1660b);
                            }
                            int i11 = Build.VERSION.SDK_INT;
                            if (i11 >= 17) {
                                childAt.setAlpha(aVar.f1582c.f1662d);
                                childAt.setRotation(aVar.f1585f.f1666b);
                                childAt.setRotationX(aVar.f1585f.f1667c);
                                childAt.setRotationY(aVar.f1585f.f1668d);
                                childAt.setScaleX(aVar.f1585f.f1669e);
                                childAt.setScaleY(aVar.f1585f.f1670f);
                                e eVar = aVar.f1585f;
                                if (eVar.f1673i != -1) {
                                    if (((View) childAt.getParent()).findViewById(aVar.f1585f.f1673i) != null) {
                                        float top = (r6.getTop() + r6.getBottom()) / 2.0f;
                                        float left = (r6.getLeft() + r6.getRight()) / 2.0f;
                                        if (childAt.getRight() - childAt.getLeft() > 0 && childAt.getBottom() - childAt.getTop() > 0) {
                                            childAt.setPivotX(left - childAt.getLeft());
                                            childAt.setPivotY(top - childAt.getTop());
                                        }
                                    }
                                } else {
                                    if (!Float.isNaN(eVar.f1671g)) {
                                        childAt.setPivotX(aVar.f1585f.f1671g);
                                    }
                                    if (!Float.isNaN(aVar.f1585f.f1672h)) {
                                        childAt.setPivotY(aVar.f1585f.f1672h);
                                    }
                                }
                                childAt.setTranslationX(aVar.f1585f.f1674j);
                                childAt.setTranslationY(aVar.f1585f.f1675k);
                                if (i11 >= 21) {
                                    childAt.setTranslationZ(aVar.f1585f.f1676l);
                                    e eVar2 = aVar.f1585f;
                                    if (eVar2.f1677m) {
                                        childAt.setElevation(eVar2.f1678n);
                                    }
                                }
                            }
                        }
                    } else {
                        Log.v("ConstraintSet", "WARNING NO CONSTRAINTS for view " + id);
                    }
                }
            }
        }
        for (Integer num : hashSet) {
            a aVar2 = this.f1579e.get(num);
            if (aVar2 != null) {
                if (aVar2.f1584e.f1620j0 == 1) {
                    Barrier barrier2 = new Barrier(constraintLayout.getContext());
                    barrier2.setId(num.intValue());
                    b bVar3 = aVar2.f1584e;
                    int[] iArr2 = bVar3.f1622k0;
                    if (iArr2 != null) {
                        barrier2.setReferencedIds(iArr2);
                    } else {
                        String str2 = bVar3.f1624l0;
                        if (str2 != null) {
                            bVar3.f1622k0 = j(barrier2, str2);
                            barrier2.setReferencedIds(aVar2.f1584e.f1622k0);
                        }
                    }
                    barrier2.setType(aVar2.f1584e.f1616h0);
                    barrier2.setMargin(aVar2.f1584e.f1618i0);
                    ConstraintLayout.b bVarGenerateDefaultLayoutParams = constraintLayout.generateDefaultLayoutParams();
                    barrier2.s();
                    aVar2.d(bVarGenerateDefaultLayoutParams);
                    constraintLayout.addView(barrier2, bVarGenerateDefaultLayoutParams);
                }
                if (aVar2.f1584e.f1601a) {
                    View guideline = new Guideline(constraintLayout.getContext());
                    guideline.setId(num.intValue());
                    ConstraintLayout.b bVarGenerateDefaultLayoutParams2 = constraintLayout.generateDefaultLayoutParams();
                    aVar2.d(bVarGenerateDefaultLayoutParams2);
                    constraintLayout.addView(guideline, bVarGenerateDefaultLayoutParams2);
                }
            }
        }
        for (int i12 = 0; i12 < childCount; i12++) {
            View childAt2 = constraintLayout.getChildAt(i12);
            if (childAt2 instanceof androidx.constraintlayout.widget.b) {
                ((androidx.constraintlayout.widget.b) childAt2).i(constraintLayout);
            }
        }
    }

    public void e(int i10, int i11) {
        a aVar;
        if (!this.f1579e.containsKey(Integer.valueOf(i10)) || (aVar = this.f1579e.get(Integer.valueOf(i10))) == null) {
            return;
        }
        switch (i11) {
            case 1:
                b bVar = aVar.f1584e;
                bVar.f1621k = -1;
                bVar.f1619j = -1;
                bVar.H = -1;
                bVar.O = Integer.MIN_VALUE;
                return;
            case 2:
                b bVar2 = aVar.f1584e;
                bVar2.f1625m = -1;
                bVar2.f1623l = -1;
                bVar2.I = -1;
                bVar2.Q = Integer.MIN_VALUE;
                return;
            case 3:
                b bVar3 = aVar.f1584e;
                bVar3.f1629o = -1;
                bVar3.f1627n = -1;
                bVar3.J = 0;
                bVar3.P = Integer.MIN_VALUE;
                return;
            case 4:
                b bVar4 = aVar.f1584e;
                bVar4.f1631p = -1;
                bVar4.f1633q = -1;
                bVar4.K = 0;
                bVar4.R = Integer.MIN_VALUE;
                return;
            case 5:
                b bVar5 = aVar.f1584e;
                bVar5.f1635r = -1;
                bVar5.f1636s = -1;
                bVar5.f1637t = -1;
                bVar5.N = 0;
                bVar5.U = Integer.MIN_VALUE;
                return;
            case 6:
                b bVar6 = aVar.f1584e;
                bVar6.f1638u = -1;
                bVar6.f1639v = -1;
                bVar6.M = 0;
                bVar6.T = Integer.MIN_VALUE;
                return;
            case 7:
                b bVar7 = aVar.f1584e;
                bVar7.f1640w = -1;
                bVar7.f1641x = -1;
                bVar7.L = 0;
                bVar7.S = Integer.MIN_VALUE;
                return;
            case 8:
                b bVar8 = aVar.f1584e;
                bVar8.D = -1.0f;
                bVar8.C = -1;
                bVar8.B = -1;
                return;
            default:
                throw new IllegalArgumentException("unknown constraint");
        }
    }

    public void f(Context context, int i10) {
        g((ConstraintLayout) LayoutInflater.from(context).inflate(i10, (ViewGroup) null));
    }

    public void g(ConstraintLayout constraintLayout) {
        int childCount = constraintLayout.getChildCount();
        this.f1579e.clear();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = constraintLayout.getChildAt(i10);
            ConstraintLayout.b bVar = (ConstraintLayout.b) childAt.getLayoutParams();
            int id = childAt.getId();
            if (this.f1578d && id == -1) {
                throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
            }
            if (!this.f1579e.containsKey(Integer.valueOf(id))) {
                this.f1579e.put(Integer.valueOf(id), new a());
            }
            a aVar = this.f1579e.get(Integer.valueOf(id));
            if (aVar != null) {
                aVar.f1586g = androidx.constraintlayout.widget.a.a(this.f1577c, childAt);
                aVar.f(id, bVar);
                aVar.f1582c.f1660b = childAt.getVisibility();
                int i11 = Build.VERSION.SDK_INT;
                if (i11 >= 17) {
                    aVar.f1582c.f1662d = childAt.getAlpha();
                    aVar.f1585f.f1666b = childAt.getRotation();
                    aVar.f1585f.f1667c = childAt.getRotationX();
                    aVar.f1585f.f1668d = childAt.getRotationY();
                    aVar.f1585f.f1669e = childAt.getScaleX();
                    aVar.f1585f.f1670f = childAt.getScaleY();
                    float pivotX = childAt.getPivotX();
                    float pivotY = childAt.getPivotY();
                    if (pivotX != 0.0d || pivotY != 0.0d) {
                        e eVar = aVar.f1585f;
                        eVar.f1671g = pivotX;
                        eVar.f1672h = pivotY;
                    }
                    aVar.f1585f.f1674j = childAt.getTranslationX();
                    aVar.f1585f.f1675k = childAt.getTranslationY();
                    if (i11 >= 21) {
                        aVar.f1585f.f1676l = childAt.getTranslationZ();
                        e eVar2 = aVar.f1585f;
                        if (eVar2.f1677m) {
                            eVar2.f1678n = childAt.getElevation();
                        }
                    }
                }
                if (childAt instanceof Barrier) {
                    Barrier barrier = (Barrier) childAt;
                    aVar.f1584e.f1632p0 = barrier.getAllowsGoneWidget();
                    aVar.f1584e.f1622k0 = barrier.getReferencedIds();
                    aVar.f1584e.f1616h0 = barrier.getType();
                    aVar.f1584e.f1618i0 = barrier.getMargin();
                }
            }
        }
    }

    public void h(androidx.constraintlayout.widget.e eVar) {
        int childCount = eVar.getChildCount();
        this.f1579e.clear();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = eVar.getChildAt(i10);
            e.a aVar = (e.a) childAt.getLayoutParams();
            int id = childAt.getId();
            if (this.f1578d && id == -1) {
                throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
            }
            if (!this.f1579e.containsKey(Integer.valueOf(id))) {
                this.f1579e.put(Integer.valueOf(id), new a());
            }
            a aVar2 = this.f1579e.get(Integer.valueOf(id));
            if (aVar2 != null) {
                if (childAt instanceof androidx.constraintlayout.widget.b) {
                    aVar2.h((androidx.constraintlayout.widget.b) childAt, id, aVar);
                }
                aVar2.g(id, aVar);
            }
        }
    }

    public void i(int i10, int i11, int i12, float f10) {
        b bVar = l(i10).f1584e;
        bVar.B = i11;
        bVar.C = i12;
        bVar.D = f10;
    }

    public void m(Context context, int i10) {
        XmlResourceParser xml = context.getResources().getXml(i10);
        try {
            for (int eventType = xml.getEventType(); eventType != 1; eventType = xml.next()) {
                if (eventType == 0) {
                    xml.getName();
                } else if (eventType == 2) {
                    String name = xml.getName();
                    a aVarK = k(context, Xml.asAttributeSet(xml), false);
                    if (name.equalsIgnoreCase("Guideline")) {
                        aVarK.f1584e.f1601a = true;
                    }
                    this.f1579e.put(Integer.valueOf(aVarK.f1580a), aVarK);
                }
            }
        } catch (IOException e10) {
            e10.printStackTrace();
        } catch (XmlPullParserException e11) {
            e11.printStackTrace();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:119:0x01cb, code lost:
    
        continue;
     */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void n(android.content.Context r10, org.xmlpull.v1.XmlPullParser r11) {
        /*
            Method dump skipped, instruction units count: 560
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.widget.d.n(android.content.Context, org.xmlpull.v1.XmlPullParser):void");
    }
}

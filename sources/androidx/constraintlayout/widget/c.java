package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.Log;
import android.util.SparseArray;
import android.util.Xml;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: ConstraintLayoutStates.java */
/* JADX INFO: loaded from: classes.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f1556a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    d f1557b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int f1558c = -1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int f1559d = -1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private SparseArray<a> f1560e = new SparseArray<>();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private SparseArray<d> f1561f = new SparseArray<>();

    /* JADX INFO: compiled from: ConstraintLayoutStates.java */
    static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f1562a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        ArrayList<b> f1563b = new ArrayList<>();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f1564c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        d f1565d;

        public a(Context context, XmlPullParser xmlPullParser) {
            this.f1564c = -1;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), i.U6);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i10 = 0; i10 < indexCount; i10++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i10);
                if (index == i.V6) {
                    this.f1562a = typedArrayObtainStyledAttributes.getResourceId(index, this.f1562a);
                } else if (index == i.W6) {
                    this.f1564c = typedArrayObtainStyledAttributes.getResourceId(index, this.f1564c);
                    String resourceTypeName = context.getResources().getResourceTypeName(this.f1564c);
                    context.getResources().getResourceName(this.f1564c);
                    if ("layout".equals(resourceTypeName)) {
                        d dVar = new d();
                        this.f1565d = dVar;
                        dVar.f(context, this.f1564c);
                    }
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }

        void a(b bVar) {
            this.f1563b.add(bVar);
        }

        public int b(float f10, float f11) {
            for (int i10 = 0; i10 < this.f1563b.size(); i10++) {
                if (this.f1563b.get(i10).a(f10, f11)) {
                    return i10;
                }
            }
            return -1;
        }
    }

    /* JADX INFO: compiled from: ConstraintLayoutStates.java */
    static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        float f1566a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        float f1567b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        float f1568c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        float f1569d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        int f1570e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        d f1571f;

        public b(Context context, XmlPullParser xmlPullParser) {
            this.f1566a = Float.NaN;
            this.f1567b = Float.NaN;
            this.f1568c = Float.NaN;
            this.f1569d = Float.NaN;
            this.f1570e = -1;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), i.f1856s7);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i10 = 0; i10 < indexCount; i10++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i10);
                if (index == i.f1865t7) {
                    this.f1570e = typedArrayObtainStyledAttributes.getResourceId(index, this.f1570e);
                    String resourceTypeName = context.getResources().getResourceTypeName(this.f1570e);
                    context.getResources().getResourceName(this.f1570e);
                    if ("layout".equals(resourceTypeName)) {
                        d dVar = new d();
                        this.f1571f = dVar;
                        dVar.f(context, this.f1570e);
                    }
                } else if (index == i.f1874u7) {
                    this.f1569d = typedArrayObtainStyledAttributes.getDimension(index, this.f1569d);
                } else if (index == i.f1883v7) {
                    this.f1567b = typedArrayObtainStyledAttributes.getDimension(index, this.f1567b);
                } else if (index == i.f1892w7) {
                    this.f1568c = typedArrayObtainStyledAttributes.getDimension(index, this.f1568c);
                } else if (index == i.f1901x7) {
                    this.f1566a = typedArrayObtainStyledAttributes.getDimension(index, this.f1566a);
                } else {
                    Log.v("ConstraintLayoutStates", "Unknown tag");
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }

        boolean a(float f10, float f11) {
            if (!Float.isNaN(this.f1566a) && f10 < this.f1566a) {
                return false;
            }
            if (!Float.isNaN(this.f1567b) && f11 < this.f1567b) {
                return false;
            }
            if (Float.isNaN(this.f1568c) || f10 <= this.f1568c) {
                return Float.isNaN(this.f1569d) || f11 <= this.f1569d;
            }
            return false;
        }
    }

    c(Context context, ConstraintLayout constraintLayout, int i10) {
        this.f1556a = constraintLayout;
        a(context, i10);
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0057  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void a(android.content.Context r9, int r10) {
        /*
            r8 = this;
            android.content.res.Resources r0 = r9.getResources()
            android.content.res.XmlResourceParser r10 = r0.getXml(r10)
            r0 = 0
            int r1 = r10.getEventType()     // Catch: java.io.IOException -> L83 org.xmlpull.v1.XmlPullParserException -> L88
        Ld:
            r2 = 1
            if (r1 == r2) goto L8c
            if (r1 == 0) goto L7b
            r3 = 2
            if (r1 == r3) goto L17
            goto L7e
        L17:
            java.lang.String r1 = r10.getName()     // Catch: java.io.IOException -> L83 org.xmlpull.v1.XmlPullParserException -> L88
            r4 = -1
            int r5 = r1.hashCode()     // Catch: java.io.IOException -> L83 org.xmlpull.v1.XmlPullParserException -> L88
            r6 = 4
            r7 = 3
            switch(r5) {
                case -1349929691: goto L4d;
                case 80204913: goto L43;
                case 1382829617: goto L3a;
                case 1657696882: goto L30;
                case 1901439077: goto L26;
                default: goto L25;
            }     // Catch: java.io.IOException -> L83 org.xmlpull.v1.XmlPullParserException -> L88
        L25:
            goto L57
        L26:
            java.lang.String r2 = "Variant"
            boolean r1 = r1.equals(r2)     // Catch: java.io.IOException -> L83 org.xmlpull.v1.XmlPullParserException -> L88
            if (r1 == 0) goto L57
            r2 = 3
            goto L58
        L30:
            java.lang.String r2 = "layoutDescription"
            boolean r1 = r1.equals(r2)     // Catch: java.io.IOException -> L83 org.xmlpull.v1.XmlPullParserException -> L88
            if (r1 == 0) goto L57
            r2 = 0
            goto L58
        L3a:
            java.lang.String r5 = "StateSet"
            boolean r1 = r1.equals(r5)     // Catch: java.io.IOException -> L83 org.xmlpull.v1.XmlPullParserException -> L88
            if (r1 == 0) goto L57
            goto L58
        L43:
            java.lang.String r2 = "State"
            boolean r1 = r1.equals(r2)     // Catch: java.io.IOException -> L83 org.xmlpull.v1.XmlPullParserException -> L88
            if (r1 == 0) goto L57
            r2 = 2
            goto L58
        L4d:
            java.lang.String r2 = "ConstraintSet"
            boolean r1 = r1.equals(r2)     // Catch: java.io.IOException -> L83 org.xmlpull.v1.XmlPullParserException -> L88
            if (r1 == 0) goto L57
            r2 = 4
            goto L58
        L57:
            r2 = -1
        L58:
            if (r2 == r3) goto L6e
            if (r2 == r7) goto L63
            if (r2 == r6) goto L5f
            goto L7e
        L5f:
            r8.b(r9, r10)     // Catch: java.io.IOException -> L83 org.xmlpull.v1.XmlPullParserException -> L88
            goto L7e
        L63:
            androidx.constraintlayout.widget.c$b r1 = new androidx.constraintlayout.widget.c$b     // Catch: java.io.IOException -> L83 org.xmlpull.v1.XmlPullParserException -> L88
            r1.<init>(r9, r10)     // Catch: java.io.IOException -> L83 org.xmlpull.v1.XmlPullParserException -> L88
            if (r0 == 0) goto L7e
            r0.a(r1)     // Catch: java.io.IOException -> L83 org.xmlpull.v1.XmlPullParserException -> L88
            goto L7e
        L6e:
            androidx.constraintlayout.widget.c$a r0 = new androidx.constraintlayout.widget.c$a     // Catch: java.io.IOException -> L83 org.xmlpull.v1.XmlPullParserException -> L88
            r0.<init>(r9, r10)     // Catch: java.io.IOException -> L83 org.xmlpull.v1.XmlPullParserException -> L88
            android.util.SparseArray<androidx.constraintlayout.widget.c$a> r1 = r8.f1560e     // Catch: java.io.IOException -> L83 org.xmlpull.v1.XmlPullParserException -> L88
            int r2 = r0.f1562a     // Catch: java.io.IOException -> L83 org.xmlpull.v1.XmlPullParserException -> L88
            r1.put(r2, r0)     // Catch: java.io.IOException -> L83 org.xmlpull.v1.XmlPullParserException -> L88
            goto L7e
        L7b:
            r10.getName()     // Catch: java.io.IOException -> L83 org.xmlpull.v1.XmlPullParserException -> L88
        L7e:
            int r1 = r10.next()     // Catch: java.io.IOException -> L83 org.xmlpull.v1.XmlPullParserException -> L88
            goto Ld
        L83:
            r9 = move-exception
            r9.printStackTrace()
            goto L8c
        L88:
            r9 = move-exception
            r9.printStackTrace()
        L8c:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.widget.c.a(android.content.Context, int):void");
    }

    private void b(Context context, XmlPullParser xmlPullParser) {
        d dVar = new d();
        int attributeCount = xmlPullParser.getAttributeCount();
        for (int i10 = 0; i10 < attributeCount; i10++) {
            String attributeName = xmlPullParser.getAttributeName(i10);
            String attributeValue = xmlPullParser.getAttributeValue(i10);
            if (attributeName != null && attributeValue != null && "id".equals(attributeName)) {
                int identifier = attributeValue.contains("/") ? context.getResources().getIdentifier(attributeValue.substring(attributeValue.indexOf(47) + 1), "id", context.getPackageName()) : -1;
                if (identifier == -1) {
                    if (attributeValue.length() > 1) {
                        identifier = Integer.parseInt(attributeValue.substring(1));
                    } else {
                        Log.e("ConstraintLayoutStates", "error in parsing id");
                    }
                }
                dVar.n(context, xmlPullParser);
                this.f1561f.put(identifier, dVar);
                return;
            }
        }
    }

    public void c(f fVar) {
    }

    public void d(int i10, float f10, float f11) {
        int iB;
        int i11 = this.f1558c;
        if (i11 == i10) {
            a aVarValueAt = i10 == -1 ? this.f1560e.valueAt(0) : this.f1560e.get(i11);
            int i12 = this.f1559d;
            if ((i12 == -1 || !aVarValueAt.f1563b.get(i12).a(f10, f11)) && this.f1559d != (iB = aVarValueAt.b(f10, f11))) {
                d dVar = iB == -1 ? this.f1557b : aVarValueAt.f1563b.get(iB).f1571f;
                if (iB != -1) {
                    int i13 = aVarValueAt.f1563b.get(iB).f1570e;
                }
                if (dVar == null) {
                    return;
                }
                this.f1559d = iB;
                dVar.c(this.f1556a);
                return;
            }
            return;
        }
        this.f1558c = i10;
        a aVar = this.f1560e.get(i10);
        int iB2 = aVar.b(f10, f11);
        d dVar2 = iB2 == -1 ? aVar.f1565d : aVar.f1563b.get(iB2).f1571f;
        if (iB2 != -1) {
            int i14 = aVar.f1563b.get(iB2).f1570e;
        }
        if (dVar2 != null) {
            this.f1559d = iB2;
            dVar2.c(this.f1556a);
            return;
        }
        Log.v("ConstraintLayoutStates", "NO Constraint set found ! id=" + i10 + ", dim =" + f10 + ", " + f11);
    }
}

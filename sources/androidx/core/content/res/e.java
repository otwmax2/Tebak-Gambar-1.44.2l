package androidx.core.content.res;

import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.Base64;
import android.util.TypedValue;
import android.util.Xml;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: compiled from: FontResourcesParserCompat.java */
/* JADX INFO: loaded from: classes.dex */
public class e {

    /* JADX INFO: compiled from: FontResourcesParserCompat.java */
    static class a {
        static int a(TypedArray typedArray, int i10) {
            return typedArray.getType(i10);
        }
    }

    /* JADX INFO: compiled from: FontResourcesParserCompat.java */
    public interface b {
    }

    /* JADX INFO: compiled from: FontResourcesParserCompat.java */
    public static final class c implements b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final d[] f2155a;

        public c(d[] dVarArr) {
            this.f2155a = dVarArr;
        }

        public d[] a() {
            return this.f2155a;
        }
    }

    /* JADX INFO: compiled from: FontResourcesParserCompat.java */
    public static final class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f2156a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f2157b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final boolean f2158c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final String f2159d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final int f2160e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final int f2161f;

        public d(String str, int i10, boolean z10, String str2, int i11, int i12) {
            this.f2156a = str;
            this.f2157b = i10;
            this.f2158c = z10;
            this.f2159d = str2;
            this.f2160e = i11;
            this.f2161f = i12;
        }

        public String a() {
            return this.f2156a;
        }

        public int b() {
            return this.f2161f;
        }

        public int c() {
            return this.f2160e;
        }

        public String d() {
            return this.f2159d;
        }

        public int e() {
            return this.f2157b;
        }

        public boolean f() {
            return this.f2158c;
        }
    }

    /* JADX INFO: renamed from: androidx.core.content.res.e$e, reason: collision with other inner class name */
    /* JADX INFO: compiled from: FontResourcesParserCompat.java */
    public static final class C0029e implements b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final androidx.core.provider.e f2162a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f2163b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final int f2164c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final String f2165d;

        public C0029e(androidx.core.provider.e eVar, int i10, int i11, String str) {
            this.f2162a = eVar;
            this.f2164c = i10;
            this.f2163b = i11;
            this.f2165d = str;
        }

        public int a() {
            return this.f2164c;
        }

        public androidx.core.provider.e b() {
            return this.f2162a;
        }

        public String c() {
            return this.f2165d;
        }

        public int d() {
            return this.f2163b;
        }
    }

    private static int a(TypedArray typedArray, int i10) {
        if (Build.VERSION.SDK_INT >= 21) {
            return a.a(typedArray, i10);
        }
        TypedValue typedValue = new TypedValue();
        typedArray.getValue(i10, typedValue);
        return typedValue.type;
    }

    public static b b(XmlPullParser xmlPullParser, Resources resources) throws XmlPullParserException, IOException {
        int next;
        do {
            next = xmlPullParser.next();
            if (next == 2) {
                break;
            }
        } while (next != 1);
        if (next == 2) {
            return d(xmlPullParser, resources);
        }
        throw new XmlPullParserException("No start tag found");
    }

    public static List<List<byte[]>> c(Resources resources, int i10) {
        if (i10 == 0) {
            return Collections.emptyList();
        }
        TypedArray typedArrayObtainTypedArray = resources.obtainTypedArray(i10);
        try {
            if (typedArrayObtainTypedArray.length() == 0) {
                return Collections.emptyList();
            }
            ArrayList arrayList = new ArrayList();
            if (a(typedArrayObtainTypedArray, 0) == 1) {
                for (int i11 = 0; i11 < typedArrayObtainTypedArray.length(); i11++) {
                    int resourceId = typedArrayObtainTypedArray.getResourceId(i11, 0);
                    if (resourceId != 0) {
                        arrayList.add(h(resources.getStringArray(resourceId)));
                    }
                }
            } else {
                arrayList.add(h(resources.getStringArray(i10)));
            }
            return arrayList;
        } finally {
            typedArrayObtainTypedArray.recycle();
        }
    }

    private static b d(XmlPullParser xmlPullParser, Resources resources) throws XmlPullParserException, IOException {
        xmlPullParser.require(2, null, "font-family");
        if (xmlPullParser.getName().equals("font-family")) {
            return e(xmlPullParser, resources);
        }
        g(xmlPullParser);
        return null;
    }

    private static b e(XmlPullParser xmlPullParser, Resources resources) throws XmlPullParserException, IOException {
        TypedArray typedArrayObtainAttributes = resources.obtainAttributes(Xml.asAttributeSet(xmlPullParser), w.d.f35902h);
        String string = typedArrayObtainAttributes.getString(w.d.f35903i);
        String string2 = typedArrayObtainAttributes.getString(w.d.f35907m);
        String string3 = typedArrayObtainAttributes.getString(w.d.f35908n);
        int resourceId = typedArrayObtainAttributes.getResourceId(w.d.f35904j, 0);
        int integer = typedArrayObtainAttributes.getInteger(w.d.f35905k, 1);
        int integer2 = typedArrayObtainAttributes.getInteger(w.d.f35906l, 500);
        String string4 = typedArrayObtainAttributes.getString(w.d.f35909o);
        typedArrayObtainAttributes.recycle();
        if (string != null && string2 != null && string3 != null) {
            while (xmlPullParser.next() != 3) {
                g(xmlPullParser);
            }
            return new C0029e(new androidx.core.provider.e(string, string2, string3, c(resources, resourceId)), integer, integer2, string4);
        }
        ArrayList arrayList = new ArrayList();
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if (xmlPullParser.getName().equals("font")) {
                    arrayList.add(f(xmlPullParser, resources));
                } else {
                    g(xmlPullParser);
                }
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new c((d[]) arrayList.toArray(new d[0]));
    }

    private static d f(XmlPullParser xmlPullParser, Resources resources) throws XmlPullParserException, IOException {
        TypedArray typedArrayObtainAttributes = resources.obtainAttributes(Xml.asAttributeSet(xmlPullParser), w.d.f35910p);
        int i10 = w.d.f35919y;
        if (!typedArrayObtainAttributes.hasValue(i10)) {
            i10 = w.d.f35912r;
        }
        int i11 = typedArrayObtainAttributes.getInt(i10, 400);
        int i12 = w.d.f35917w;
        if (!typedArrayObtainAttributes.hasValue(i12)) {
            i12 = w.d.f35913s;
        }
        boolean z10 = 1 == typedArrayObtainAttributes.getInt(i12, 0);
        int i13 = w.d.f35920z;
        if (!typedArrayObtainAttributes.hasValue(i13)) {
            i13 = w.d.f35914t;
        }
        int i14 = w.d.f35918x;
        if (!typedArrayObtainAttributes.hasValue(i14)) {
            i14 = w.d.f35915u;
        }
        String string = typedArrayObtainAttributes.getString(i14);
        int i15 = typedArrayObtainAttributes.getInt(i13, 0);
        int i16 = w.d.f35916v;
        if (!typedArrayObtainAttributes.hasValue(i16)) {
            i16 = w.d.f35911q;
        }
        int resourceId = typedArrayObtainAttributes.getResourceId(i16, 0);
        String string2 = typedArrayObtainAttributes.getString(i16);
        typedArrayObtainAttributes.recycle();
        while (xmlPullParser.next() != 3) {
            g(xmlPullParser);
        }
        return new d(string2, i11, z10, string, i15, resourceId);
    }

    private static void g(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        int i10 = 1;
        while (i10 > 0) {
            int next = xmlPullParser.next();
            if (next == 2) {
                i10++;
            } else if (next == 3) {
                i10--;
            }
        }
    }

    private static List<byte[]> h(String[] strArr) {
        ArrayList arrayList = new ArrayList();
        for (String str : strArr) {
            arrayList.add(Base64.decode(str, 0));
        }
        return arrayList;
    }
}

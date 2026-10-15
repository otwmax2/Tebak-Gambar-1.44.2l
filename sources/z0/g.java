package z0;

import android.database.Cursor;
import android.os.Build;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;

/* JADX INFO: compiled from: TableInfo.java */
/* JADX INFO: loaded from: classes.dex */
public final class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f37168a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Map<String, a> f37169b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Set<b> f37170c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Set<d> f37171d;

    /* JADX INFO: compiled from: TableInfo.java */
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f37172a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f37173b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f37174c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final boolean f37175d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final int f37176e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final String f37177f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final int f37178g;

        public a(String str, String str2, boolean z10, int i10, String str3, int i11) {
            this.f37172a = str;
            this.f37173b = str2;
            this.f37175d = z10;
            this.f37176e = i10;
            this.f37174c = c(str2);
            this.f37177f = str3;
            this.f37178g = i11;
        }

        private static boolean a(String str) {
            if (str.length() == 0) {
                return false;
            }
            int i10 = 0;
            for (int i11 = 0; i11 < str.length(); i11++) {
                char cCharAt = str.charAt(i11);
                if (i11 == 0 && cCharAt != '(') {
                    return false;
                }
                if (cCharAt == '(') {
                    i10++;
                } else if (cCharAt == ')' && i10 - 1 == 0 && i11 != str.length() - 1) {
                    return false;
                }
            }
            return i10 == 0;
        }

        public static boolean b(String str, String str2) {
            if (str2 == null) {
                return false;
            }
            if (str.equals(str2)) {
                return true;
            }
            if (a(str)) {
                return str.substring(1, str.length() - 1).trim().equals(str2);
            }
            return false;
        }

        private static int c(String str) {
            if (str == null) {
                return 5;
            }
            String upperCase = str.toUpperCase(Locale.US);
            if (upperCase.contains("INT")) {
                return 3;
            }
            if (upperCase.contains("CHAR") || upperCase.contains("CLOB") || upperCase.contains("TEXT")) {
                return 2;
            }
            if (upperCase.contains("BLOB")) {
                return 5;
            }
            return (upperCase.contains("REAL") || upperCase.contains("FLOA") || upperCase.contains("DOUB")) ? 4 : 1;
        }

        public boolean d() {
            return this.f37176e > 0;
        }

        public boolean equals(Object obj) {
            String str;
            String str2;
            String str3;
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            if (Build.VERSION.SDK_INT >= 20) {
                if (this.f37176e != aVar.f37176e) {
                    return false;
                }
            } else if (d() != aVar.d()) {
                return false;
            }
            if (!this.f37172a.equals(aVar.f37172a) || this.f37175d != aVar.f37175d) {
                return false;
            }
            if (this.f37178g == 1 && aVar.f37178g == 2 && (str3 = this.f37177f) != null && !b(str3, aVar.f37177f)) {
                return false;
            }
            if (this.f37178g == 2 && aVar.f37178g == 1 && (str2 = aVar.f37177f) != null && !b(str2, this.f37177f)) {
                return false;
            }
            int i10 = this.f37178g;
            return (i10 == 0 || i10 != aVar.f37178g || ((str = this.f37177f) == null ? aVar.f37177f == null : b(str, aVar.f37177f))) && this.f37174c == aVar.f37174c;
        }

        public int hashCode() {
            return (((((this.f37172a.hashCode() * 31) + this.f37174c) * 31) + (this.f37175d ? 1231 : 1237)) * 31) + this.f37176e;
        }

        public String toString() {
            return "Column{name='" + this.f37172a + "', type='" + this.f37173b + "', affinity='" + this.f37174c + "', notNull=" + this.f37175d + ", primaryKeyPosition=" + this.f37176e + ", defaultValue='" + this.f37177f + "'}";
        }
    }

    /* JADX INFO: compiled from: TableInfo.java */
    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f37179a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f37180b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f37181c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final List<String> f37182d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final List<String> f37183e;

        public b(String str, String str2, String str3, List<String> list, List<String> list2) {
            this.f37179a = str;
            this.f37180b = str2;
            this.f37181c = str3;
            this.f37182d = Collections.unmodifiableList(list);
            this.f37183e = Collections.unmodifiableList(list2);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            if (this.f37179a.equals(bVar.f37179a) && this.f37180b.equals(bVar.f37180b) && this.f37181c.equals(bVar.f37181c) && this.f37182d.equals(bVar.f37182d)) {
                return this.f37183e.equals(bVar.f37183e);
            }
            return false;
        }

        public int hashCode() {
            return (((((((this.f37179a.hashCode() * 31) + this.f37180b.hashCode()) * 31) + this.f37181c.hashCode()) * 31) + this.f37182d.hashCode()) * 31) + this.f37183e.hashCode();
        }

        public String toString() {
            return "ForeignKey{referenceTable='" + this.f37179a + "', onDelete='" + this.f37180b + "', onUpdate='" + this.f37181c + "', columnNames=" + this.f37182d + ", referenceColumnNames=" + this.f37183e + '}';
        }
    }

    /* JADX INFO: compiled from: TableInfo.java */
    static class c implements Comparable<c> {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final int f37184o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        final int f37185p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        final String f37186q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        final String f37187r;

        c(int i10, int i11, String str, String str2) {
            this.f37184o = i10;
            this.f37185p = i11;
            this.f37186q = str;
            this.f37187r = str2;
        }

        @Override // java.lang.Comparable
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public int compareTo(c cVar) {
            int i10 = this.f37184o - cVar.f37184o;
            return i10 == 0 ? this.f37185p - cVar.f37185p : i10;
        }
    }

    /* JADX INFO: compiled from: TableInfo.java */
    public static final class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f37188a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f37189b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final List<String> f37190c;

        public d(String str, boolean z10, List<String> list) {
            this.f37188a = str;
            this.f37189b = z10;
            this.f37190c = list;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof d)) {
                return false;
            }
            d dVar = (d) obj;
            if (this.f37189b == dVar.f37189b && this.f37190c.equals(dVar.f37190c)) {
                return this.f37188a.startsWith("index_") ? dVar.f37188a.startsWith("index_") : this.f37188a.equals(dVar.f37188a);
            }
            return false;
        }

        public int hashCode() {
            return ((((this.f37188a.startsWith("index_") ? -1184239155 : this.f37188a.hashCode()) * 31) + (this.f37189b ? 1 : 0)) * 31) + this.f37190c.hashCode();
        }

        public String toString() {
            return "Index{name='" + this.f37188a + "', unique=" + this.f37189b + ", columns=" + this.f37190c + '}';
        }
    }

    public g(String str, Map<String, a> map, Set<b> set, Set<d> set2) {
        this.f37168a = str;
        this.f37169b = Collections.unmodifiableMap(map);
        this.f37170c = Collections.unmodifiableSet(set);
        this.f37171d = set2 == null ? null : Collections.unmodifiableSet(set2);
    }

    public static g a(b1.g gVar, String str) {
        return new g(str, b(gVar, str), d(gVar, str), f(gVar, str));
    }

    private static Map<String, a> b(b1.g gVar, String str) {
        Cursor cursorP1 = gVar.P1("PRAGMA table_info(`" + str + "`)");
        HashMap map = new HashMap();
        try {
            if (cursorP1.getColumnCount() > 0) {
                int columnIndex = cursorP1.getColumnIndex("name");
                int columnIndex2 = cursorP1.getColumnIndex("type");
                int columnIndex3 = cursorP1.getColumnIndex("notnull");
                int columnIndex4 = cursorP1.getColumnIndex("pk");
                int columnIndex5 = cursorP1.getColumnIndex("dflt_value");
                while (cursorP1.moveToNext()) {
                    String string = cursorP1.getString(columnIndex);
                    map.put(string, new a(string, cursorP1.getString(columnIndex2), cursorP1.getInt(columnIndex3) != 0, cursorP1.getInt(columnIndex4), cursorP1.getString(columnIndex5), 2));
                }
            }
            return map;
        } finally {
            cursorP1.close();
        }
    }

    private static List<c> c(Cursor cursor) {
        int columnIndex = cursor.getColumnIndex("id");
        int columnIndex2 = cursor.getColumnIndex("seq");
        int columnIndex3 = cursor.getColumnIndex("from");
        int columnIndex4 = cursor.getColumnIndex("to");
        int count = cursor.getCount();
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < count; i10++) {
            cursor.moveToPosition(i10);
            arrayList.add(new c(cursor.getInt(columnIndex), cursor.getInt(columnIndex2), cursor.getString(columnIndex3), cursor.getString(columnIndex4)));
        }
        Collections.sort(arrayList);
        return arrayList;
    }

    private static Set<b> d(b1.g gVar, String str) {
        HashSet hashSet = new HashSet();
        Cursor cursorP1 = gVar.P1("PRAGMA foreign_key_list(`" + str + "`)");
        try {
            int columnIndex = cursorP1.getColumnIndex("id");
            int columnIndex2 = cursorP1.getColumnIndex("seq");
            int columnIndex3 = cursorP1.getColumnIndex("table");
            int columnIndex4 = cursorP1.getColumnIndex("on_delete");
            int columnIndex5 = cursorP1.getColumnIndex("on_update");
            List<c> listC = c(cursorP1);
            int count = cursorP1.getCount();
            for (int i10 = 0; i10 < count; i10++) {
                cursorP1.moveToPosition(i10);
                if (cursorP1.getInt(columnIndex2) == 0) {
                    int i11 = cursorP1.getInt(columnIndex);
                    ArrayList arrayList = new ArrayList();
                    ArrayList arrayList2 = new ArrayList();
                    for (c cVar : listC) {
                        if (cVar.f37184o == i11) {
                            arrayList.add(cVar.f37186q);
                            arrayList2.add(cVar.f37187r);
                        }
                    }
                    hashSet.add(new b(cursorP1.getString(columnIndex3), cursorP1.getString(columnIndex4), cursorP1.getString(columnIndex5), arrayList, arrayList2));
                }
            }
            return hashSet;
        } finally {
            cursorP1.close();
        }
    }

    private static d e(b1.g gVar, String str, boolean z10) {
        Cursor cursorP1 = gVar.P1("PRAGMA index_xinfo(`" + str + "`)");
        try {
            int columnIndex = cursorP1.getColumnIndex("seqno");
            int columnIndex2 = cursorP1.getColumnIndex("cid");
            int columnIndex3 = cursorP1.getColumnIndex("name");
            if (columnIndex != -1 && columnIndex2 != -1 && columnIndex3 != -1) {
                TreeMap treeMap = new TreeMap();
                while (cursorP1.moveToNext()) {
                    if (cursorP1.getInt(columnIndex2) >= 0) {
                        treeMap.put(Integer.valueOf(cursorP1.getInt(columnIndex)), cursorP1.getString(columnIndex3));
                    }
                }
                ArrayList arrayList = new ArrayList(treeMap.size());
                arrayList.addAll(treeMap.values());
                return new d(str, z10, arrayList);
            }
            return null;
        } finally {
            cursorP1.close();
        }
    }

    private static Set<d> f(b1.g gVar, String str) {
        Cursor cursorP1 = gVar.P1("PRAGMA index_list(`" + str + "`)");
        try {
            int columnIndex = cursorP1.getColumnIndex("name");
            int columnIndex2 = cursorP1.getColumnIndex("origin");
            int columnIndex3 = cursorP1.getColumnIndex("unique");
            if (columnIndex != -1 && columnIndex2 != -1 && columnIndex3 != -1) {
                HashSet hashSet = new HashSet();
                while (cursorP1.moveToNext()) {
                    if ("c".equals(cursorP1.getString(columnIndex2))) {
                        String string = cursorP1.getString(columnIndex);
                        boolean z10 = true;
                        if (cursorP1.getInt(columnIndex3) != 1) {
                            z10 = false;
                        }
                        d dVarE = e(gVar, string, z10);
                        if (dVarE == null) {
                            return null;
                        }
                        hashSet.add(dVarE);
                    }
                }
                return hashSet;
            }
            return null;
        } finally {
            cursorP1.close();
        }
    }

    public boolean equals(Object obj) {
        Set<d> set;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof g)) {
            return false;
        }
        g gVar = (g) obj;
        String str = this.f37168a;
        if (str == null ? gVar.f37168a != null : !str.equals(gVar.f37168a)) {
            return false;
        }
        Map<String, a> map = this.f37169b;
        if (map == null ? gVar.f37169b != null : !map.equals(gVar.f37169b)) {
            return false;
        }
        Set<b> set2 = this.f37170c;
        if (set2 == null ? gVar.f37170c != null : !set2.equals(gVar.f37170c)) {
            return false;
        }
        Set<d> set3 = this.f37171d;
        if (set3 == null || (set = gVar.f37171d) == null) {
            return true;
        }
        return set3.equals(set);
    }

    public int hashCode() {
        String str = this.f37168a;
        int iHashCode = (str != null ? str.hashCode() : 0) * 31;
        Map<String, a> map = this.f37169b;
        int iHashCode2 = (iHashCode + (map != null ? map.hashCode() : 0)) * 31;
        Set<b> set = this.f37170c;
        return iHashCode2 + (set != null ? set.hashCode() : 0);
    }

    public String toString() {
        return "TableInfo{name='" + this.f37168a + "', columns=" + this.f37169b + ", foreignKeys=" + this.f37170c + ", indices=" + this.f37171d + '}';
    }
}

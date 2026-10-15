package n8;

import android.database.Cursor;
import androidx.room.h0;
import b1.k;
import com.facebook.internal.ServerProtocol;
import com.tebakgambar.model.Level;
import com.tebakgambar.model.LevelWithVersioning;
import com.tebakgambar.model.Versioning;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import x0.l;

/* JADX INFO: compiled from: LevelDao_Impl.java */
/* JADX INFO: loaded from: classes2.dex */
public final class b extends n8.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final h0 f32493a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final x0.g<Level> f32494b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final x0.g<Versioning> f32495c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final x0.f<Versioning> f32496d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final l f32497e;

    /* JADX INFO: compiled from: LevelDao_Impl.java */
    class a extends x0.g<Level> {
        a(h0 h0Var) {
            super(h0Var);
        }

        @Override // x0.l
        public String d() {
            return "INSERT OR REPLACE INTO `Level` (`id`,`title`,`subtitle`,`zipLevelUrl`,`iconUrl`,`frameUrl`,`achievementId`,`sliderId`,`quotes`,`version`,`color`,`backgroundColor`,`comingSoon`,`soalRecehIds`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        }

        @Override // x0.g
        /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
        public void g(k kVar, Level level) {
            kVar.s1(1, level.id);
            String str = level.title;
            if (str == null) {
                kVar.z2(2);
            } else {
                kVar.k0(2, str);
            }
            String str2 = level.subtitle;
            if (str2 == null) {
                kVar.z2(3);
            } else {
                kVar.k0(3, str2);
            }
            String str3 = level.zipLevelUrl;
            if (str3 == null) {
                kVar.z2(4);
            } else {
                kVar.k0(4, str3);
            }
            String str4 = level.iconUrl;
            if (str4 == null) {
                kVar.z2(5);
            } else {
                kVar.k0(5, str4);
            }
            String str5 = level.frameUrl;
            if (str5 == null) {
                kVar.z2(6);
            } else {
                kVar.k0(6, str5);
            }
            String str6 = level.achievementId;
            if (str6 == null) {
                kVar.z2(7);
            } else {
                kVar.k0(7, str6);
            }
            kVar.s1(8, level.sliderId);
            String str7 = level.quotes;
            if (str7 == null) {
                kVar.z2(9);
            } else {
                kVar.k0(9, str7);
            }
            kVar.s1(10, level.version);
            String str8 = level.color;
            if (str8 == null) {
                kVar.z2(11);
            } else {
                kVar.k0(11, str8);
            }
            String str9 = level.backgroundColor;
            if (str9 == null) {
                kVar.z2(12);
            } else {
                kVar.k0(12, str9);
            }
            String strA = g.a(level.comingSoon);
            if (strA == null) {
                kVar.z2(13);
            } else {
                kVar.k0(13, strA);
            }
            String strB = g.b(level.soalRecehIds);
            if (strB == null) {
                kVar.z2(14);
            } else {
                kVar.k0(14, strB);
            }
        }
    }

    /* JADX INFO: renamed from: n8.b$b, reason: collision with other inner class name */
    /* JADX INFO: compiled from: LevelDao_Impl.java */
    class C0207b extends x0.g<Versioning> {
        C0207b(h0 h0Var) {
            super(h0Var);
        }

        @Override // x0.l
        public String d() {
            return "INSERT OR IGNORE INTO `Versioning` (`levelId`,`downloadedVersion`) VALUES (?,?)";
        }

        @Override // x0.g
        /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
        public void g(k kVar, Versioning versioning) {
            kVar.s1(1, versioning.levelId);
            kVar.s1(2, versioning.downloadedVersion);
        }
    }

    /* JADX INFO: compiled from: LevelDao_Impl.java */
    class c extends x0.f<Versioning> {
        c(h0 h0Var) {
            super(h0Var);
        }

        @Override // x0.l
        public String d() {
            return "UPDATE OR ABORT `Versioning` SET `levelId` = ?,`downloadedVersion` = ? WHERE `levelId` = ?";
        }

        @Override // x0.f
        /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
        public void g(k kVar, Versioning versioning) {
            kVar.s1(1, versioning.levelId);
            kVar.s1(2, versioning.downloadedVersion);
            kVar.s1(3, versioning.levelId);
        }
    }

    /* JADX INFO: compiled from: LevelDao_Impl.java */
    class d extends l {
        d(h0 h0Var) {
            super(h0Var);
        }

        @Override // x0.l
        public String d() {
            return "DELETE FROM Level";
        }
    }

    public b(h0 h0Var) {
        this.f32493a = h0Var;
        this.f32494b = new a(h0Var);
        this.f32495c = new C0207b(h0Var);
        this.f32496d = new c(h0Var);
        this.f32497e = new d(h0Var);
    }

    public static List<Class<?>> n() {
        return Collections.emptyList();
    }

    @Override // n8.a
    public void a() {
        this.f32493a.d();
        k kVarA = this.f32497e.a();
        this.f32493a.e();
        try {
            kVarA.u0();
            this.f32493a.A();
        } finally {
            this.f32493a.i();
            this.f32497e.f(kVarA);
        }
    }

    @Override // n8.a
    public List<Level> b() throws Throwable {
        x0.k kVar;
        String string;
        int i10;
        x0.k kVarD = x0.k.d("SELECT * FROM Level", 0);
        this.f32493a.d();
        Cursor cursorB = z0.c.b(this.f32493a, kVarD, false, null);
        try {
            int iE = z0.b.e(cursorB, "id");
            int iE2 = z0.b.e(cursorB, "title");
            int iE3 = z0.b.e(cursorB, "subtitle");
            int iE4 = z0.b.e(cursorB, "zipLevelUrl");
            int iE5 = z0.b.e(cursorB, "iconUrl");
            int iE6 = z0.b.e(cursorB, "frameUrl");
            int iE7 = z0.b.e(cursorB, "achievementId");
            int iE8 = z0.b.e(cursorB, "sliderId");
            int iE9 = z0.b.e(cursorB, "quotes");
            int iE10 = z0.b.e(cursorB, ServerProtocol.FALLBACK_DIALOG_PARAM_VERSION);
            int iE11 = z0.b.e(cursorB, "color");
            int iE12 = z0.b.e(cursorB, "backgroundColor");
            int iE13 = z0.b.e(cursorB, "comingSoon");
            kVar = kVarD;
            try {
                int iE14 = z0.b.e(cursorB, "soalRecehIds");
                ArrayList arrayList = new ArrayList(cursorB.getCount());
                while (cursorB.moveToNext()) {
                    Level level = new Level();
                    ArrayList arrayList2 = arrayList;
                    level.id = cursorB.getInt(iE);
                    if (cursorB.isNull(iE2)) {
                        level.title = null;
                    } else {
                        level.title = cursorB.getString(iE2);
                    }
                    if (cursorB.isNull(iE3)) {
                        level.subtitle = null;
                    } else {
                        level.subtitle = cursorB.getString(iE3);
                    }
                    if (cursorB.isNull(iE4)) {
                        level.zipLevelUrl = null;
                    } else {
                        level.zipLevelUrl = cursorB.getString(iE4);
                    }
                    if (cursorB.isNull(iE5)) {
                        level.iconUrl = null;
                    } else {
                        level.iconUrl = cursorB.getString(iE5);
                    }
                    if (cursorB.isNull(iE6)) {
                        level.frameUrl = null;
                    } else {
                        level.frameUrl = cursorB.getString(iE6);
                    }
                    if (cursorB.isNull(iE7)) {
                        level.achievementId = null;
                    } else {
                        level.achievementId = cursorB.getString(iE7);
                    }
                    level.sliderId = cursorB.getInt(iE8);
                    if (cursorB.isNull(iE9)) {
                        level.quotes = null;
                    } else {
                        level.quotes = cursorB.getString(iE9);
                    }
                    level.version = cursorB.getInt(iE10);
                    if (cursorB.isNull(iE11)) {
                        level.color = null;
                    } else {
                        level.color = cursorB.getString(iE11);
                    }
                    if (cursorB.isNull(iE12)) {
                        level.backgroundColor = null;
                    } else {
                        level.backgroundColor = cursorB.getString(iE12);
                    }
                    level.comingSoon = g.e(cursorB.isNull(iE13) ? null : cursorB.getString(iE13));
                    int i11 = iE14;
                    if (cursorB.isNull(i11)) {
                        i10 = iE;
                        string = null;
                    } else {
                        string = cursorB.getString(i11);
                        i10 = iE;
                    }
                    level.soalRecehIds = g.f(string);
                    arrayList2.add(level);
                    iE14 = i11;
                    arrayList = arrayList2;
                    iE = i10;
                }
                ArrayList arrayList3 = arrayList;
                cursorB.close();
                kVar.g();
                return arrayList3;
            } catch (Throwable th) {
                th = th;
                cursorB.close();
                kVar.g();
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            kVar = kVarD;
        }
    }

    @Override // n8.a
    public Level c(int i10) throws Throwable {
        x0.k kVar;
        Level level;
        String str;
        x0.k kVarD = x0.k.d("SELECT * FROM Level where id = ? LIMIT 1", 1);
        kVarD.s1(1, i10);
        this.f32493a.d();
        Cursor cursorB = z0.c.b(this.f32493a, kVarD, false, null);
        try {
            int iE = z0.b.e(cursorB, "id");
            int iE2 = z0.b.e(cursorB, "title");
            int iE3 = z0.b.e(cursorB, "subtitle");
            int iE4 = z0.b.e(cursorB, "zipLevelUrl");
            int iE5 = z0.b.e(cursorB, "iconUrl");
            int iE6 = z0.b.e(cursorB, "frameUrl");
            int iE7 = z0.b.e(cursorB, "achievementId");
            int iE8 = z0.b.e(cursorB, "sliderId");
            int iE9 = z0.b.e(cursorB, "quotes");
            int iE10 = z0.b.e(cursorB, ServerProtocol.FALLBACK_DIALOG_PARAM_VERSION);
            int iE11 = z0.b.e(cursorB, "color");
            int iE12 = z0.b.e(cursorB, "backgroundColor");
            int iE13 = z0.b.e(cursorB, "comingSoon");
            int iE14 = z0.b.e(cursorB, "soalRecehIds");
            if (cursorB.moveToFirst()) {
                kVar = kVarD;
                try {
                    Level level2 = new Level();
                    level2.id = cursorB.getInt(iE);
                    if (cursorB.isNull(iE2)) {
                        level2.title = null;
                    } else {
                        level2.title = cursorB.getString(iE2);
                    }
                    if (cursorB.isNull(iE3)) {
                        level2.subtitle = null;
                    } else {
                        level2.subtitle = cursorB.getString(iE3);
                    }
                    if (cursorB.isNull(iE4)) {
                        level2.zipLevelUrl = null;
                    } else {
                        level2.zipLevelUrl = cursorB.getString(iE4);
                    }
                    if (cursorB.isNull(iE5)) {
                        level2.iconUrl = null;
                    } else {
                        level2.iconUrl = cursorB.getString(iE5);
                    }
                    if (cursorB.isNull(iE6)) {
                        level2.frameUrl = null;
                    } else {
                        level2.frameUrl = cursorB.getString(iE6);
                    }
                    if (cursorB.isNull(iE7)) {
                        level2.achievementId = null;
                    } else {
                        level2.achievementId = cursorB.getString(iE7);
                    }
                    level2.sliderId = cursorB.getInt(iE8);
                    if (cursorB.isNull(iE9)) {
                        level2.quotes = null;
                    } else {
                        level2.quotes = cursorB.getString(iE9);
                    }
                    level2.version = cursorB.getInt(iE10);
                    if (cursorB.isNull(iE11)) {
                        level2.color = null;
                    } else {
                        level2.color = cursorB.getString(iE11);
                    }
                    if (cursorB.isNull(iE12)) {
                        str = null;
                        level2.backgroundColor = null;
                    } else {
                        str = null;
                        level2.backgroundColor = cursorB.getString(iE12);
                    }
                    level2.comingSoon = g.e(cursorB.isNull(iE13) ? str : cursorB.getString(iE13));
                    level2.soalRecehIds = g.f(cursorB.isNull(iE14) ? str : cursorB.getString(iE14));
                    level = level2;
                } catch (Throwable th) {
                    th = th;
                    cursorB.close();
                    kVar.g();
                    throw th;
                }
            } else {
                kVar = kVarD;
                level = null;
            }
            cursorB.close();
            kVar.g();
            return level;
        } catch (Throwable th2) {
            th = th2;
            kVar = kVarD;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // n8.a
    public LevelWithVersioning d(int i10) throws Throwable {
        x0.k kVar;
        LevelWithVersioning levelWithVersioning;
        int i11;
        Level level;
        Versioning versioning;
        int i12;
        int i13;
        x0.k kVarD = x0.k.d("SELECT * FROM Level join Versioning on Level.id = Versioning.levelId where id = ? LIMIT 1", 1);
        kVarD.s1(1, i10);
        this.f32493a.d();
        Cursor cursorB = z0.c.b(this.f32493a, kVarD, false, null);
        try {
            int iE = z0.b.e(cursorB, "id");
            int iE2 = z0.b.e(cursorB, "title");
            int iE3 = z0.b.e(cursorB, "subtitle");
            int iE4 = z0.b.e(cursorB, "zipLevelUrl");
            int iE5 = z0.b.e(cursorB, "iconUrl");
            int iE6 = z0.b.e(cursorB, "frameUrl");
            int iE7 = z0.b.e(cursorB, "achievementId");
            int iE8 = z0.b.e(cursorB, "sliderId");
            int iE9 = z0.b.e(cursorB, "quotes");
            int iE10 = z0.b.e(cursorB, ServerProtocol.FALLBACK_DIALOG_PARAM_VERSION);
            int iE11 = z0.b.e(cursorB, "color");
            int iE12 = z0.b.e(cursorB, "backgroundColor");
            int iE13 = z0.b.e(cursorB, "comingSoon");
            int iE14 = z0.b.e(cursorB, "soalRecehIds");
            kVar = kVarD;
            try {
                int iE15 = z0.b.e(cursorB, "levelId");
                int iE16 = z0.b.e(cursorB, "downloadedVersion");
                if (cursorB.moveToFirst()) {
                    if (cursorB.isNull(iE) && cursorB.isNull(iE2) && cursorB.isNull(iE3) && cursorB.isNull(iE4) && cursorB.isNull(iE5) && cursorB.isNull(iE6) && cursorB.isNull(iE7) && cursorB.isNull(iE8) && cursorB.isNull(iE9) && cursorB.isNull(iE10) && cursorB.isNull(iE11) && cursorB.isNull(iE12) && cursorB.isNull(iE13) && cursorB.isNull(iE14)) {
                        i11 = iE16;
                        i12 = iE15;
                        versioning = null;
                        level = null;
                    } else {
                        i11 = iE16;
                        level = new Level();
                        level.id = cursorB.getInt(iE);
                        if (cursorB.isNull(iE2)) {
                            level.title = null;
                        } else {
                            level.title = cursorB.getString(iE2);
                        }
                        if (cursorB.isNull(iE3)) {
                            level.subtitle = null;
                        } else {
                            level.subtitle = cursorB.getString(iE3);
                        }
                        if (cursorB.isNull(iE4)) {
                            level.zipLevelUrl = null;
                        } else {
                            level.zipLevelUrl = cursorB.getString(iE4);
                        }
                        if (cursorB.isNull(iE5)) {
                            level.iconUrl = null;
                        } else {
                            level.iconUrl = cursorB.getString(iE5);
                        }
                        if (cursorB.isNull(iE6)) {
                            level.frameUrl = null;
                        } else {
                            level.frameUrl = cursorB.getString(iE6);
                        }
                        if (cursorB.isNull(iE7)) {
                            level.achievementId = null;
                        } else {
                            level.achievementId = cursorB.getString(iE7);
                        }
                        level.sliderId = cursorB.getInt(iE8);
                        if (cursorB.isNull(iE9)) {
                            level.quotes = null;
                        } else {
                            level.quotes = cursorB.getString(iE9);
                        }
                        level.version = cursorB.getInt(iE10);
                        if (cursorB.isNull(iE11)) {
                            level.color = null;
                        } else {
                            level.color = cursorB.getString(iE11);
                        }
                        if (cursorB.isNull(iE12)) {
                            versioning = null;
                            level.backgroundColor = null;
                        } else {
                            versioning = null;
                            level.backgroundColor = cursorB.getString(iE12);
                        }
                        level.comingSoon = g.e(cursorB.isNull(iE13) ? versioning : cursorB.getString(iE13));
                        level.soalRecehIds = g.f(cursorB.isNull(iE14) ? versioning : cursorB.getString(iE14));
                        i12 = iE15;
                    }
                    if (cursorB.isNull(i12)) {
                        i13 = i11;
                        if (!cursorB.isNull(i13)) {
                        }
                        Versioning versioning2 = versioning;
                        levelWithVersioning = new LevelWithVersioning();
                        levelWithVersioning.level = level;
                        levelWithVersioning.versioning = versioning2;
                    } else {
                        i13 = i11;
                    }
                    versioning = new Versioning();
                    versioning.levelId = cursorB.getInt(i12);
                    versioning.downloadedVersion = cursorB.getInt(i13);
                    Versioning versioning22 = versioning;
                    levelWithVersioning = new LevelWithVersioning();
                    levelWithVersioning.level = level;
                    levelWithVersioning.versioning = versioning22;
                } else {
                    levelWithVersioning = null;
                }
                LevelWithVersioning levelWithVersioning2 = levelWithVersioning;
                cursorB.close();
                kVar.g();
                return levelWithVersioning2;
            } catch (Throwable th) {
                th = th;
                cursorB.close();
                kVar.g();
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            kVar = kVarD;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:86:0x01cc A[Catch: all -> 0x0219, TryCatch #0 {all -> 0x0219, blocks: (B:5:0x006b, B:6:0x0086, B:8:0x008c, B:10:0x0092, B:12:0x0098, B:14:0x009e, B:16:0x00a4, B:18:0x00aa, B:20:0x00b0, B:22:0x00b6, B:24:0x00bc, B:26:0x00c2, B:28:0x00c8, B:30:0x00ce, B:32:0x00d4, B:34:0x00da, B:39:0x00ee, B:41:0x0103, B:43:0x010d, B:45:0x0113, B:47:0x011d, B:49:0x0123, B:51:0x012d, B:53:0x0133, B:55:0x013d, B:57:0x0143, B:59:0x014d, B:61:0x0153, B:63:0x015d, B:65:0x0169, B:67:0x0173, B:69:0x017f, B:71:0x0189, B:73:0x018f, B:75:0x0199, B:79:0x01a5, B:83:0x01be, B:84:0x01c6, B:86:0x01cc, B:91:0x01e1, B:92:0x01f6, B:82:0x01b8, B:78:0x01a1, B:74:0x0193, B:70:0x0183, B:66:0x016d, B:62:0x0157, B:58:0x0147, B:54:0x0137, B:50:0x0127, B:46:0x0117, B:42:0x0107), top: B:103:0x006b }] */
    /* JADX WARN: Removed duplicated region for block: B:90:0x01dd  */
    @Override // n8.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.util.List<com.tebakgambar.model.LevelWithVersioning> e() throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 551
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: n8.b.e():java.util.List");
    }

    @Override // n8.a
    public List<Level> f() throws Throwable {
        x0.k kVar;
        String string;
        int i10;
        x0.k kVarD = x0.k.d("SELECT * FROM Level where id % 2 != 0", 0);
        this.f32493a.d();
        Cursor cursorB = z0.c.b(this.f32493a, kVarD, false, null);
        try {
            int iE = z0.b.e(cursorB, "id");
            int iE2 = z0.b.e(cursorB, "title");
            int iE3 = z0.b.e(cursorB, "subtitle");
            int iE4 = z0.b.e(cursorB, "zipLevelUrl");
            int iE5 = z0.b.e(cursorB, "iconUrl");
            int iE6 = z0.b.e(cursorB, "frameUrl");
            int iE7 = z0.b.e(cursorB, "achievementId");
            int iE8 = z0.b.e(cursorB, "sliderId");
            int iE9 = z0.b.e(cursorB, "quotes");
            int iE10 = z0.b.e(cursorB, ServerProtocol.FALLBACK_DIALOG_PARAM_VERSION);
            int iE11 = z0.b.e(cursorB, "color");
            int iE12 = z0.b.e(cursorB, "backgroundColor");
            int iE13 = z0.b.e(cursorB, "comingSoon");
            kVar = kVarD;
            try {
                int iE14 = z0.b.e(cursorB, "soalRecehIds");
                ArrayList arrayList = new ArrayList(cursorB.getCount());
                while (cursorB.moveToNext()) {
                    Level level = new Level();
                    ArrayList arrayList2 = arrayList;
                    level.id = cursorB.getInt(iE);
                    if (cursorB.isNull(iE2)) {
                        level.title = null;
                    } else {
                        level.title = cursorB.getString(iE2);
                    }
                    if (cursorB.isNull(iE3)) {
                        level.subtitle = null;
                    } else {
                        level.subtitle = cursorB.getString(iE3);
                    }
                    if (cursorB.isNull(iE4)) {
                        level.zipLevelUrl = null;
                    } else {
                        level.zipLevelUrl = cursorB.getString(iE4);
                    }
                    if (cursorB.isNull(iE5)) {
                        level.iconUrl = null;
                    } else {
                        level.iconUrl = cursorB.getString(iE5);
                    }
                    if (cursorB.isNull(iE6)) {
                        level.frameUrl = null;
                    } else {
                        level.frameUrl = cursorB.getString(iE6);
                    }
                    if (cursorB.isNull(iE7)) {
                        level.achievementId = null;
                    } else {
                        level.achievementId = cursorB.getString(iE7);
                    }
                    level.sliderId = cursorB.getInt(iE8);
                    if (cursorB.isNull(iE9)) {
                        level.quotes = null;
                    } else {
                        level.quotes = cursorB.getString(iE9);
                    }
                    level.version = cursorB.getInt(iE10);
                    if (cursorB.isNull(iE11)) {
                        level.color = null;
                    } else {
                        level.color = cursorB.getString(iE11);
                    }
                    if (cursorB.isNull(iE12)) {
                        level.backgroundColor = null;
                    } else {
                        level.backgroundColor = cursorB.getString(iE12);
                    }
                    level.comingSoon = g.e(cursorB.isNull(iE13) ? null : cursorB.getString(iE13));
                    int i11 = iE14;
                    if (cursorB.isNull(i11)) {
                        i10 = iE;
                        string = null;
                    } else {
                        string = cursorB.getString(i11);
                        i10 = iE;
                    }
                    level.soalRecehIds = g.f(string);
                    arrayList2.add(level);
                    iE14 = i11;
                    arrayList = arrayList2;
                    iE = i10;
                }
                ArrayList arrayList3 = arrayList;
                cursorB.close();
                kVar.g();
                return arrayList3;
            } catch (Throwable th) {
                th = th;
                cursorB.close();
                kVar.g();
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            kVar = kVarD;
        }
    }

    @Override // n8.a
    public void g(List<Level> list) {
        this.f32493a.e();
        try {
            super.g(list);
            this.f32493a.A();
        } finally {
            this.f32493a.i();
        }
    }

    @Override // n8.a
    public void h(List<Level> list) {
        this.f32493a.d();
        this.f32493a.e();
        try {
            this.f32494b.h(list);
            this.f32493a.A();
        } finally {
            this.f32493a.i();
        }
    }

    @Override // n8.a
    public void i(List<Level> list) {
        this.f32493a.e();
        try {
            super.i(list);
            this.f32493a.A();
        } finally {
            this.f32493a.i();
        }
    }

    @Override // n8.a
    public void j(List<Versioning> list) {
        this.f32493a.d();
        this.f32493a.e();
        try {
            this.f32495c.h(list);
            this.f32493a.A();
        } finally {
            this.f32493a.i();
        }
    }

    @Override // n8.a
    public void k(Versioning versioning) {
        this.f32493a.d();
        this.f32493a.e();
        try {
            this.f32496d.h(versioning);
            this.f32493a.A();
        } finally {
            this.f32493a.i();
        }
    }
}

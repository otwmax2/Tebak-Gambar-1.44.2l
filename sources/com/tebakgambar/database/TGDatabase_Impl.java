package com.tebakgambar.database;

import androidx.room.h0;
import androidx.room.i;
import androidx.room.i0;
import androidx.room.o;
import b1.g;
import b1.h;
import com.facebook.internal.ServerProtocol;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import n8.b;
import z0.c;
import z0.g;

/* JADX INFO: loaded from: classes2.dex */
public final class TGDatabase_Impl extends TGDatabase {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private volatile n8.a f26874s;

    class a extends i0.a {
        a(int i10) {
            super(i10);
        }

        @Override // androidx.room.i0.a
        public void a(g gVar) {
            gVar.execSQL("CREATE TABLE IF NOT EXISTS `Level` (`id` INTEGER NOT NULL, `title` TEXT, `subtitle` TEXT, `zipLevelUrl` TEXT, `iconUrl` TEXT, `frameUrl` TEXT, `achievementId` TEXT, `sliderId` INTEGER NOT NULL, `quotes` TEXT, `version` INTEGER NOT NULL, `color` TEXT, `backgroundColor` TEXT, `comingSoon` TEXT, `soalRecehIds` TEXT, PRIMARY KEY(`id`))");
            gVar.execSQL("CREATE TABLE IF NOT EXISTS `Versioning` (`levelId` INTEGER NOT NULL, `downloadedVersion` INTEGER NOT NULL, PRIMARY KEY(`levelId`))");
            gVar.execSQL("CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)");
            gVar.execSQL("INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, '3ac93ea7343b722a9eb1b3b01b2286f4')");
        }

        @Override // androidx.room.i0.a
        public void b(g gVar) {
            gVar.execSQL("DROP TABLE IF EXISTS `Level`");
            gVar.execSQL("DROP TABLE IF EXISTS `Versioning`");
            if (((h0) TGDatabase_Impl.this).f4063h != null) {
                int size = ((h0) TGDatabase_Impl.this).f4063h.size();
                for (int i10 = 0; i10 < size; i10++) {
                    ((h0.b) ((h0) TGDatabase_Impl.this).f4063h.get(i10)).b(gVar);
                }
            }
        }

        @Override // androidx.room.i0.a
        protected void c(g gVar) {
            if (((h0) TGDatabase_Impl.this).f4063h != null) {
                int size = ((h0) TGDatabase_Impl.this).f4063h.size();
                for (int i10 = 0; i10 < size; i10++) {
                    ((h0.b) ((h0) TGDatabase_Impl.this).f4063h.get(i10)).a(gVar);
                }
            }
        }

        @Override // androidx.room.i0.a
        public void d(g gVar) {
            ((h0) TGDatabase_Impl.this).f4056a = gVar;
            TGDatabase_Impl.this.t(gVar);
            if (((h0) TGDatabase_Impl.this).f4063h != null) {
                int size = ((h0) TGDatabase_Impl.this).f4063h.size();
                for (int i10 = 0; i10 < size; i10++) {
                    ((h0.b) ((h0) TGDatabase_Impl.this).f4063h.get(i10)).c(gVar);
                }
            }
        }

        @Override // androidx.room.i0.a
        public void e(g gVar) {
        }

        @Override // androidx.room.i0.a
        public void f(g gVar) {
            c.a(gVar);
        }

        @Override // androidx.room.i0.a
        protected i0.b g(g gVar) {
            HashMap map = new HashMap(14);
            map.put("id", new g.a("id", "INTEGER", true, 1, null, 1));
            map.put("title", new g.a("title", "TEXT", false, 0, null, 1));
            map.put("subtitle", new g.a("subtitle", "TEXT", false, 0, null, 1));
            map.put("zipLevelUrl", new g.a("zipLevelUrl", "TEXT", false, 0, null, 1));
            map.put("iconUrl", new g.a("iconUrl", "TEXT", false, 0, null, 1));
            map.put("frameUrl", new g.a("frameUrl", "TEXT", false, 0, null, 1));
            map.put("achievementId", new g.a("achievementId", "TEXT", false, 0, null, 1));
            map.put("sliderId", new g.a("sliderId", "INTEGER", true, 0, null, 1));
            map.put("quotes", new g.a("quotes", "TEXT", false, 0, null, 1));
            map.put(ServerProtocol.FALLBACK_DIALOG_PARAM_VERSION, new g.a(ServerProtocol.FALLBACK_DIALOG_PARAM_VERSION, "INTEGER", true, 0, null, 1));
            map.put("color", new g.a("color", "TEXT", false, 0, null, 1));
            map.put("backgroundColor", new g.a("backgroundColor", "TEXT", false, 0, null, 1));
            map.put("comingSoon", new g.a("comingSoon", "TEXT", false, 0, null, 1));
            map.put("soalRecehIds", new g.a("soalRecehIds", "TEXT", false, 0, null, 1));
            z0.g gVar2 = new z0.g("Level", map, new HashSet(0), new HashSet(0));
            z0.g gVarA = z0.g.a(gVar, "Level");
            if (!gVar2.equals(gVarA)) {
                return new i0.b(false, "Level(com.tebakgambar.model.Level).\n Expected:\n" + gVar2 + "\n Found:\n" + gVarA);
            }
            HashMap map2 = new HashMap(2);
            map2.put("levelId", new g.a("levelId", "INTEGER", true, 1, null, 1));
            map2.put("downloadedVersion", new g.a("downloadedVersion", "INTEGER", true, 0, null, 1));
            z0.g gVar3 = new z0.g("Versioning", map2, new HashSet(0), new HashSet(0));
            z0.g gVarA2 = z0.g.a(gVar, "Versioning");
            if (gVar3.equals(gVarA2)) {
                return new i0.b(true, null);
            }
            return new i0.b(false, "Versioning(com.tebakgambar.model.Versioning).\n Expected:\n" + gVar3 + "\n Found:\n" + gVarA2);
        }
    }

    @Override // com.tebakgambar.database.TGDatabase
    public n8.a E() {
        n8.a aVar;
        if (this.f26874s != null) {
            return this.f26874s;
        }
        synchronized (this) {
            if (this.f26874s == null) {
                this.f26874s = new b(this);
            }
            aVar = this.f26874s;
        }
        return aVar;
    }

    @Override // androidx.room.h0
    protected o g() {
        return new o(this, new HashMap(0), new HashMap(0), "Level", "Versioning");
    }

    @Override // androidx.room.h0
    protected h h(i iVar) {
        return iVar.f4100a.a(h.b.a(iVar.f4101b).c(iVar.f4102c).b(new i0(iVar, new a(4), "3ac93ea7343b722a9eb1b3b01b2286f4", "19f3844daff0e77008e0b3c02ab77f22")).a());
    }

    @Override // androidx.room.h0
    public List<y0.b> j(Map<Class<? extends y0.a>, y0.a> map) {
        return Arrays.asList(new y0.b[0]);
    }

    @Override // androidx.room.h0
    public Set<Class<? extends y0.a>> n() {
        return new HashSet();
    }

    @Override // androidx.room.h0
    protected Map<Class<?>, List<Class<?>>> o() {
        HashMap map = new HashMap();
        map.put(n8.a.class, b.n());
        return map;
    }
}

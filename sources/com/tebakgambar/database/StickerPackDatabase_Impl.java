package com.tebakgambar.database;

import androidx.room.h0;
import androidx.room.i;
import androidx.room.i0;
import androidx.room.o;
import b1.g;
import b1.h;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import n8.e;
import n8.f;
import y0.b;
import z0.c;
import z0.g;

/* JADX INFO: loaded from: classes2.dex */
public final class StickerPackDatabase_Impl extends StickerPackDatabase {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private volatile e f26868p;

    class a extends i0.a {
        a(int i10) {
            super(i10);
        }

        @Override // androidx.room.i0.a
        public void a(g gVar) {
            gVar.execSQL("CREATE TABLE IF NOT EXISTS `StickerPack` (`identifier` TEXT NOT NULL, `licenseAgreementWebsite` TEXT, `name` TEXT, `privacyPolicyWebsite` TEXT, `publisher` TEXT, `publisherWebsite` TEXT, `stickers` TEXT, `trayImageUrl` TEXT, `trayImageName` TEXT, `androidPlayStoreLink` TEXT, `iosAppStoreLink` TEXT, PRIMARY KEY(`identifier`))");
            gVar.execSQL("CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)");
            gVar.execSQL("INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, '536717b5e86c3fbca0e130f5b49b2173')");
        }

        @Override // androidx.room.i0.a
        public void b(g gVar) {
            gVar.execSQL("DROP TABLE IF EXISTS `StickerPack`");
            if (((h0) StickerPackDatabase_Impl.this).f4063h != null) {
                int size = ((h0) StickerPackDatabase_Impl.this).f4063h.size();
                for (int i10 = 0; i10 < size; i10++) {
                    ((h0.b) ((h0) StickerPackDatabase_Impl.this).f4063h.get(i10)).b(gVar);
                }
            }
        }

        @Override // androidx.room.i0.a
        protected void c(g gVar) {
            if (((h0) StickerPackDatabase_Impl.this).f4063h != null) {
                int size = ((h0) StickerPackDatabase_Impl.this).f4063h.size();
                for (int i10 = 0; i10 < size; i10++) {
                    ((h0.b) ((h0) StickerPackDatabase_Impl.this).f4063h.get(i10)).a(gVar);
                }
            }
        }

        @Override // androidx.room.i0.a
        public void d(g gVar) {
            ((h0) StickerPackDatabase_Impl.this).f4056a = gVar;
            StickerPackDatabase_Impl.this.t(gVar);
            if (((h0) StickerPackDatabase_Impl.this).f4063h != null) {
                int size = ((h0) StickerPackDatabase_Impl.this).f4063h.size();
                for (int i10 = 0; i10 < size; i10++) {
                    ((h0.b) ((h0) StickerPackDatabase_Impl.this).f4063h.get(i10)).c(gVar);
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
            HashMap map = new HashMap(11);
            map.put("identifier", new g.a("identifier", "TEXT", true, 1, null, 1));
            map.put("licenseAgreementWebsite", new g.a("licenseAgreementWebsite", "TEXT", false, 0, null, 1));
            map.put("name", new g.a("name", "TEXT", false, 0, null, 1));
            map.put("privacyPolicyWebsite", new g.a("privacyPolicyWebsite", "TEXT", false, 0, null, 1));
            map.put("publisher", new g.a("publisher", "TEXT", false, 0, null, 1));
            map.put("publisherWebsite", new g.a("publisherWebsite", "TEXT", false, 0, null, 1));
            map.put("stickers", new g.a("stickers", "TEXT", false, 0, null, 1));
            map.put("trayImageUrl", new g.a("trayImageUrl", "TEXT", false, 0, null, 1));
            map.put("trayImageName", new g.a("trayImageName", "TEXT", false, 0, null, 1));
            map.put("androidPlayStoreLink", new g.a("androidPlayStoreLink", "TEXT", false, 0, null, 1));
            map.put("iosAppStoreLink", new g.a("iosAppStoreLink", "TEXT", false, 0, null, 1));
            z0.g gVar2 = new z0.g("StickerPack", map, new HashSet(0), new HashSet(0));
            z0.g gVarA = z0.g.a(gVar, "StickerPack");
            if (gVar2.equals(gVarA)) {
                return new i0.b(true, null);
            }
            return new i0.b(false, "StickerPack(com.tebakgambar.sticker.model.StickerPack).\n Expected:\n" + gVar2 + "\n Found:\n" + gVarA);
        }
    }

    @Override // com.tebakgambar.database.StickerPackDatabase
    public e D() {
        e eVar;
        if (this.f26868p != null) {
            return this.f26868p;
        }
        synchronized (this) {
            if (this.f26868p == null) {
                this.f26868p = new f(this);
            }
            eVar = this.f26868p;
        }
        return eVar;
    }

    @Override // androidx.room.h0
    protected o g() {
        return new o(this, new HashMap(0), new HashMap(0), "StickerPack");
    }

    @Override // androidx.room.h0
    protected h h(i iVar) {
        return iVar.f4100a.a(h.b.a(iVar.f4101b).c(iVar.f4102c).b(new i0(iVar, new a(1), "536717b5e86c3fbca0e130f5b49b2173", "d23da86bc56a5318dc205c96f7daed73")).a());
    }

    @Override // androidx.room.h0
    public List<b> j(Map<Class<? extends y0.a>, y0.a> map) {
        return Arrays.asList(new b[0]);
    }

    @Override // androidx.room.h0
    public Set<Class<? extends y0.a>> n() {
        return new HashSet();
    }

    @Override // androidx.room.h0
    protected Map<Class<?>, List<Class<?>>> o() {
        HashMap map = new HashMap();
        map.put(e.class, f.c());
        return map;
    }
}

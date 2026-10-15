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
import n8.c;
import n8.d;
import y0.b;
import z0.g;

/* JADX INFO: loaded from: classes2.dex */
public final class SliderDatabase_Impl extends SliderDatabase {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private volatile c f26865p;

    class a extends i0.a {
        a(int i10) {
            super(i10);
        }

        @Override // androidx.room.i0.a
        public void a(g gVar) {
            gVar.execSQL("CREATE TABLE IF NOT EXISTS `Slider` (`id` INTEGER NOT NULL, `type` TEXT, `images` TEXT, PRIMARY KEY(`id`))");
            gVar.execSQL("CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)");
            gVar.execSQL("INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, '217e912a1e9d501575970f4a85757ef4')");
        }

        @Override // androidx.room.i0.a
        public void b(g gVar) {
            gVar.execSQL("DROP TABLE IF EXISTS `Slider`");
            if (((h0) SliderDatabase_Impl.this).f4063h != null) {
                int size = ((h0) SliderDatabase_Impl.this).f4063h.size();
                for (int i10 = 0; i10 < size; i10++) {
                    ((h0.b) ((h0) SliderDatabase_Impl.this).f4063h.get(i10)).b(gVar);
                }
            }
        }

        @Override // androidx.room.i0.a
        protected void c(g gVar) {
            if (((h0) SliderDatabase_Impl.this).f4063h != null) {
                int size = ((h0) SliderDatabase_Impl.this).f4063h.size();
                for (int i10 = 0; i10 < size; i10++) {
                    ((h0.b) ((h0) SliderDatabase_Impl.this).f4063h.get(i10)).a(gVar);
                }
            }
        }

        @Override // androidx.room.i0.a
        public void d(g gVar) {
            ((h0) SliderDatabase_Impl.this).f4056a = gVar;
            SliderDatabase_Impl.this.t(gVar);
            if (((h0) SliderDatabase_Impl.this).f4063h != null) {
                int size = ((h0) SliderDatabase_Impl.this).f4063h.size();
                for (int i10 = 0; i10 < size; i10++) {
                    ((h0.b) ((h0) SliderDatabase_Impl.this).f4063h.get(i10)).c(gVar);
                }
            }
        }

        @Override // androidx.room.i0.a
        public void e(g gVar) {
        }

        @Override // androidx.room.i0.a
        public void f(g gVar) {
            z0.c.a(gVar);
        }

        @Override // androidx.room.i0.a
        protected i0.b g(g gVar) {
            HashMap map = new HashMap(3);
            map.put("id", new g.a("id", "INTEGER", true, 1, null, 1));
            map.put("type", new g.a("type", "TEXT", false, 0, null, 1));
            map.put("images", new g.a("images", "TEXT", false, 0, null, 1));
            z0.g gVar2 = new z0.g("Slider", map, new HashSet(0), new HashSet(0));
            z0.g gVarA = z0.g.a(gVar, "Slider");
            if (gVar2.equals(gVarA)) {
                return new i0.b(true, null);
            }
            return new i0.b(false, "Slider(com.tebakgambar.model.Slider).\n Expected:\n" + gVar2 + "\n Found:\n" + gVarA);
        }
    }

    @Override // com.tebakgambar.database.SliderDatabase
    public c D() {
        c cVar;
        if (this.f26865p != null) {
            return this.f26865p;
        }
        synchronized (this) {
            if (this.f26865p == null) {
                this.f26865p = new d(this);
            }
            cVar = this.f26865p;
        }
        return cVar;
    }

    @Override // androidx.room.h0
    protected o g() {
        return new o(this, new HashMap(0), new HashMap(0), "Slider");
    }

    @Override // androidx.room.h0
    protected h h(i iVar) {
        return iVar.f4100a.a(h.b.a(iVar.f4101b).c(iVar.f4102c).b(new i0(iVar, new a(1), "217e912a1e9d501575970f4a85757ef4", "4584c6ee7a6500167a1f0d31932e72c4")).a());
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
        map.put(c.class, d.e());
        return map;
    }
}

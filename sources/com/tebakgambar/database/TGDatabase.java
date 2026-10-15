package com.tebakgambar.database;

import android.content.Context;
import androidx.room.g0;
import androidx.room.h0;
import b1.g;
import com.tebakgambar.TGApplication;

/* JADX INFO: loaded from: classes.dex */
public abstract class TGDatabase extends h0 {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static TGDatabase f26870o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static final y0.b f26871p = new a(1, 2);

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final y0.b f26872q = new b(2, 3);

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final y0.b f26873r = new c(3, 4);

    /* JADX INFO: loaded from: classes2.dex */
    class a extends y0.b {
        a(int i10, int i11) {
            super(i10, i11);
        }

        @Override // y0.b
        public void a(g gVar) {
            gVar.execSQL("ALTER TABLE Level ADD COLUMN comingSoon TEXT");
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    class b extends y0.b {
        b(int i10, int i11) {
            super(i10, i11);
        }

        @Override // y0.b
        public void a(g gVar) {
            gVar.execSQL("ALTER TABLE Level ADD COLUMN soalRecehIds TEXT");
            gVar.execSQL("ALTER TABLE Level ADD COLUMN sliderId INTEGER NOT NULL DEFAULT 0");
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    class c extends y0.b {
        c(int i10, int i11) {
            super(i10, i11);
        }

        @Override // y0.b
        public void a(g gVar) {
            gVar.execSQL("ALTER TABLE Level ADD COLUMN backgroundColor TEXT");
        }
    }

    public static TGDatabase C() {
        if (f26870o == null) {
            f26870o = (TGDatabase) g0.a(TGApplication.d(), TGDatabase.class, "tg-db").c().b(f26871p, f26872q, f26873r).d();
        }
        return f26870o;
    }

    public static boolean D(Context context) {
        return context.getSharedPreferences("tg.database.pref", 0).getBoolean("tg-db-initialized", false);
    }

    public static void F(Context context) {
        context.getSharedPreferences("tg.database.pref", 0).edit().putBoolean("tg-db-initialized", true).apply();
    }

    public abstract n8.a E();
}

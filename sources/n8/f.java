package n8;

import android.database.Cursor;
import androidx.room.h0;
import b1.k;
import com.tebakgambar.sticker.model.StickerPack;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: compiled from: StickerPackDao_Impl.java */
/* JADX INFO: loaded from: classes2.dex */
public final class f extends e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final h0 f32505a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final x0.g<StickerPack> f32506b;

    /* JADX INFO: compiled from: StickerPackDao_Impl.java */
    class a extends x0.g<StickerPack> {
        a(h0 h0Var) {
            super(h0Var);
        }

        @Override // x0.l
        public String d() {
            return "INSERT OR REPLACE INTO `StickerPack` (`identifier`,`licenseAgreementWebsite`,`name`,`privacyPolicyWebsite`,`publisher`,`publisherWebsite`,`stickers`,`trayImageUrl`,`trayImageName`,`androidPlayStoreLink`,`iosAppStoreLink`) VALUES (?,?,?,?,?,?,?,?,?,?,?)";
        }

        @Override // x0.g
        /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
        public void g(k kVar, StickerPack stickerPack) {
            String str = stickerPack.identifier;
            if (str == null) {
                kVar.z2(1);
            } else {
                kVar.k0(1, str);
            }
            String str2 = stickerPack.licenseAgreementWebsite;
            if (str2 == null) {
                kVar.z2(2);
            } else {
                kVar.k0(2, str2);
            }
            String str3 = stickerPack.name;
            if (str3 == null) {
                kVar.z2(3);
            } else {
                kVar.k0(3, str3);
            }
            String str4 = stickerPack.privacyPolicyWebsite;
            if (str4 == null) {
                kVar.z2(4);
            } else {
                kVar.k0(4, str4);
            }
            String str5 = stickerPack.publisher;
            if (str5 == null) {
                kVar.z2(5);
            } else {
                kVar.k0(5, str5);
            }
            String str6 = stickerPack.publisherWebsite;
            if (str6 == null) {
                kVar.z2(6);
            } else {
                kVar.k0(6, str6);
            }
            String strD = g.d(stickerPack.stickers);
            if (strD == null) {
                kVar.z2(7);
            } else {
                kVar.k0(7, strD);
            }
            String str7 = stickerPack.trayImageUrl;
            if (str7 == null) {
                kVar.z2(8);
            } else {
                kVar.k0(8, str7);
            }
            String str8 = stickerPack.trayImageName;
            if (str8 == null) {
                kVar.z2(9);
            } else {
                kVar.k0(9, str8);
            }
            String str9 = stickerPack.androidPlayStoreLink;
            if (str9 == null) {
                kVar.z2(10);
            } else {
                kVar.k0(10, str9);
            }
            String str10 = stickerPack.iosAppStoreLink;
            if (str10 == null) {
                kVar.z2(11);
            } else {
                kVar.k0(11, str10);
            }
        }
    }

    public f(h0 h0Var) {
        this.f32505a = h0Var;
        this.f32506b = new a(h0Var);
    }

    public static List<Class<?>> c() {
        return Collections.emptyList();
    }

    @Override // n8.e
    public List<StickerPack> a() {
        x0.k kVarD = x0.k.d("SELECT * FROM StickerPack", 0);
        this.f32505a.d();
        Cursor cursorB = z0.c.b(this.f32505a, kVarD, false, null);
        try {
            int iE = z0.b.e(cursorB, "identifier");
            int iE2 = z0.b.e(cursorB, "licenseAgreementWebsite");
            int iE3 = z0.b.e(cursorB, "name");
            int iE4 = z0.b.e(cursorB, "privacyPolicyWebsite");
            int iE5 = z0.b.e(cursorB, "publisher");
            int iE6 = z0.b.e(cursorB, "publisherWebsite");
            int iE7 = z0.b.e(cursorB, "stickers");
            int iE8 = z0.b.e(cursorB, "trayImageUrl");
            int iE9 = z0.b.e(cursorB, "trayImageName");
            int iE10 = z0.b.e(cursorB, "androidPlayStoreLink");
            int iE11 = z0.b.e(cursorB, "iosAppStoreLink");
            ArrayList arrayList = new ArrayList(cursorB.getCount());
            while (cursorB.moveToNext()) {
                StickerPack stickerPack = new StickerPack();
                if (cursorB.isNull(iE)) {
                    stickerPack.identifier = null;
                } else {
                    stickerPack.identifier = cursorB.getString(iE);
                }
                if (cursorB.isNull(iE2)) {
                    stickerPack.licenseAgreementWebsite = null;
                } else {
                    stickerPack.licenseAgreementWebsite = cursorB.getString(iE2);
                }
                if (cursorB.isNull(iE3)) {
                    stickerPack.name = null;
                } else {
                    stickerPack.name = cursorB.getString(iE3);
                }
                if (cursorB.isNull(iE4)) {
                    stickerPack.privacyPolicyWebsite = null;
                } else {
                    stickerPack.privacyPolicyWebsite = cursorB.getString(iE4);
                }
                if (cursorB.isNull(iE5)) {
                    stickerPack.publisher = null;
                } else {
                    stickerPack.publisher = cursorB.getString(iE5);
                }
                if (cursorB.isNull(iE6)) {
                    stickerPack.publisherWebsite = null;
                } else {
                    stickerPack.publisherWebsite = cursorB.getString(iE6);
                }
                stickerPack.stickers = g.h(cursorB.isNull(iE7) ? null : cursorB.getString(iE7));
                if (cursorB.isNull(iE8)) {
                    stickerPack.trayImageUrl = null;
                } else {
                    stickerPack.trayImageUrl = cursorB.getString(iE8);
                }
                if (cursorB.isNull(iE9)) {
                    stickerPack.trayImageName = null;
                } else {
                    stickerPack.trayImageName = cursorB.getString(iE9);
                }
                if (cursorB.isNull(iE10)) {
                    stickerPack.androidPlayStoreLink = null;
                } else {
                    stickerPack.androidPlayStoreLink = cursorB.getString(iE10);
                }
                if (cursorB.isNull(iE11)) {
                    stickerPack.iosAppStoreLink = null;
                } else {
                    stickerPack.iosAppStoreLink = cursorB.getString(iE11);
                }
                arrayList.add(stickerPack);
            }
            return arrayList;
        } finally {
            cursorB.close();
            kVarD.g();
        }
    }

    @Override // n8.e
    public void b(List<StickerPack> list) {
        this.f32505a.d();
        this.f32505a.e();
        try {
            this.f32506b.h(list);
            this.f32505a.A();
        } finally {
            this.f32505a.i();
        }
    }
}

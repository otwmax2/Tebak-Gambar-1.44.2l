package com.tebakgambar.sticker;

import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.widget.Toast;
import androidx.lifecycle.k0;
import androidx.lifecycle.u;
import com.tebakgambar.R;
import j8.c0;
import j8.t;
import java.io.IOException;
import y8.w;

/* JADX INFO: loaded from: classes2.dex */
public class StickerCampaignActivity extends t implements w.g {
    private w A;
    Integer campaignDetailId;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private o8.w f27194y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private n f27195z;

    private void Z0() {
        final String strM = this.f27195z.M();
        final String strN = this.f27195z.N();
        final c0 c0VarI0 = I0();
        this.f27195z.J().m(new t1.f() { // from class: com.tebakgambar.sticker.e
            @Override // t1.f
            public final Object a(t1.h hVar) {
                return this.f27205a.c1(c0VarI0, strM, strN, hVar);
            }
        }, t1.h.f35199k);
    }

    private Intent a1(String str, String str2) {
        Intent intent = new Intent();
        intent.setAction("com.whatsapp.intent.action.ENABLE_STICKER_PACK");
        intent.putExtra("sticker_pack_id", str);
        intent.putExtra("sticker_pack_authority", "com.tebakgambar.stickercontentprovider");
        intent.putExtra("sticker_pack_name", str2);
        return intent;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b1(Boolean bool) {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ t1.h c1(c0 c0Var, String str, String str2, t1.h hVar) throws Exception {
        try {
            c0Var.dismiss();
        } catch (Exception unused) {
            Toast.makeText(getApplication(), R.string.add_pack_fail_prompt_update_whatsapp, 1).show();
        }
        if (hVar.w()) {
            O0(getString(R.string.download_pack_failed));
            return null;
        }
        if (!o.d(getPackageManager()) && !o.e(getPackageManager())) {
            Toast.makeText(getApplication(), R.string.add_pack_fail_prompt_update_whatsapp, 1).show();
            return null;
        }
        boolean zB = o.b(getApplication(), str);
        boolean zC = o.c(getApplication(), str);
        if (!zB && !zC) {
            g1(str, str2);
        } else if (!zB) {
            h1(str, str2, "com.whatsapp");
        } else if (zC) {
            O0(getString(R.string.add_pack_fail_prompt_already_added));
        } else {
            h1(str, str2, "com.whatsapp.w4b");
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d1(View view) {
        this.f27195z.V();
        k1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e1(View view) {
        this.f27195z.T();
        Z0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void f1() {
        this.f27194y.Q.performClick();
    }

    private void g1(String str, String str2) {
        try {
            startActivityForResult(Intent.createChooser(a1(str, str2), getString(R.string.add_to_whatsapp)), 200);
        } catch (ActivityNotFoundException unused) {
            Toast.makeText(this, R.string.add_pack_fail_prompt_update_whatsapp, 1).show();
        }
    }

    private void h1(String str, String str2, String str3) {
        Intent intentA1 = a1(str, str2);
        intentA1.setPackage(str3);
        try {
            startActivityForResult(intentA1, 200);
        } catch (ActivityNotFoundException unused) {
            Toast.makeText(this, R.string.add_pack_fail_prompt_update_whatsapp, 1).show();
        }
    }

    private Bitmap i1(View view) {
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(view.getWidth(), view.getHeight(), Bitmap.Config.ARGB_8888);
        view.draw(new Canvas(bitmapCreateBitmap));
        return bitmapCreateBitmap;
    }

    private void j1() {
        this.f27194y.Q.setOnClickListener(new View.OnClickListener() { // from class: com.tebakgambar.sticker.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f27202o.d1(view);
            }
        });
        this.f27194y.O.setOnClickListener(new View.OnClickListener() { // from class: com.tebakgambar.sticker.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f27201o.e1(view);
            }
        });
    }

    private void k1() {
        this.A.v(this.f27195z.L());
        try {
            if (this.f27194y.U.getWidth() > 0 && this.f27194y.U.getHeight() > 0) {
                this.A.w(y8.h.t(this, i1(this.f27194y.U)));
            }
        } catch (IOException e10) {
            e10.printStackTrace();
            com.google.firebase.crashlytics.a.a().d(e10);
        } catch (y8.n e11) {
            e11.printStackTrace();
            B0(e11.a(), new Runnable() { // from class: com.tebakgambar.sticker.d
                @Override // java.lang.Runnable
                public final void run() {
                    this.f27204o.f1();
                }
            });
        }
    }

    @Override // y8.w.g
    public void d(String str, int i10, Uri uri) {
        O0(str);
    }

    @Override // j8.t, androidx.fragment.app.e, androidx.activity.ComponentActivity, android.app.Activity
    protected void onActivityResult(int i10, int i11, Intent intent) {
        super.onActivityResult(i10, i11, intent);
        this.A.o(i10, i11, intent);
        if (i10 == 200 && i11 == 0) {
            if (intent != null) {
                intent.getStringExtra("validation_error");
            } else {
                O0(getString(R.string.add_pack_fail_prompt_unknown));
            }
        }
    }

    @Override // androidx.fragment.app.e, androidx.activity.ComponentActivity, androidx.core.app.g, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f27195z = (n) k0.b(this).b("activityViewModel", n.class);
        o8.w wVar = (o8.w) androidx.databinding.g.j(this, R.layout.activity_sticker_campaign);
        this.f27194y = wVar;
        wVar.u0(this.f27195z);
        C0(this.f27195z);
        this.f27195z.Q.h(this, new u() { // from class: com.tebakgambar.sticker.c
            @Override // androidx.lifecycle.u
            public final void d(Object obj) {
                this.f27203a.b1((Boolean) obj);
            }
        });
        y2.a.b(this);
        w wVar2 = new w(this);
        this.A = wVar2;
        wVar2.u(this);
        w wVar3 = this.A;
        wVar3.f37078k = true;
        wVar3.f37077j = false;
        j1();
        this.f27195z.Y(this.campaignDetailId.intValue());
        this.f27195z.U();
    }

    @Override // y8.w.g
    public void y(int i10, Uri uri) {
        O0(getString(R.string.share_image_success));
    }
}

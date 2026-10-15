package com.tebakgambar.selfie;

import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.view.View;
import android.widget.RelativeLayout;
import androidx.lifecycle.k0;
import com.facebook.appevents.AppEventsConstants;
import com.tebakgambar.AdsActivity;
import com.tebakgambar.Henson;
import com.tebakgambar.R;
import com.tebakgambar.model.BaseEvent;
import com.tebakgambar.model.Level;
import com.tebakgambar.model.ResultEventClue;
import com.tebakgambar.model.ResultEvents;
import com.tebakgambar.question.EventQuestionActivity;
import com.tebakgambar.selfie.EditFrameActivity;
import com.theartofdev.edmodo.cropper.CropImageView;
import com.theartofdev.edmodo.cropper.d;
import com.vungle.mediation.BuildConfig;
import j8.c0;
import j8.t;
import j8.y;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.concurrent.Callable;
import v2.j;
import y8.n;
import y8.o;
import y8.w;

/* JADX INFO: loaded from: classes2.dex */
public class EditFrameActivity extends t implements View.OnClickListener, w.g {
    private w C;
    private Uri D;
    private Runnable E;
    private t1.i<Void> F;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private o8.c f27134y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private com.tebakgambar.selfie.g f27135z;
    private boolean A = false;
    private c0 B = null;
    private boolean G = false;

    class a implements t2.f<String, l2.b> {
        a() {
        }

        @Override // t2.f
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public boolean b(Exception exc, String str, j<l2.b> jVar, boolean z10) {
            return false;
        }

        @Override // t2.f
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public boolean a(l2.b bVar, String str, j<l2.b> jVar, boolean z10, boolean z11) {
            return false;
        }
    }

    class b implements t1.f<Level, t1.h<Void>> {

        class a extends v2.g<Bitmap> {
            a() {
            }

            @Override // v2.j
            /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
            public void c(Bitmap bitmap, u2.c<? super Bitmap> cVar) {
            }
        }

        /* JADX INFO: renamed from: com.tebakgambar.selfie.EditFrameActivity$b$b, reason: collision with other inner class name */
        class C0133b implements t2.f<Integer, Bitmap> {
            C0133b() {
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void d() {
                EditFrameActivity.this.f27134y.f33168h0.setVisibility(8);
                RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) EditFrameActivity.this.f27134y.X.getLayoutParams();
                layoutParams.width = EditFrameActivity.this.f27134y.f33167g0.getWidth();
                layoutParams.height = EditFrameActivity.this.f27134y.f33167g0.getWidth();
                EditFrameActivity.this.f27134y.X.setLayoutParams(layoutParams);
                EditFrameActivity.this.f27134y.f33169i0.setLayoutParams(layoutParams);
                EditFrameActivity.this.f27134y.f33169i0.setVisibility(0);
                EditFrameActivity.this.f27134y.X.setVisibility(0);
                EditFrameActivity.this.f27134y.f33168h0.setVisibility(8);
                EditFrameActivity.this.f27134y.Y.setVisibility(EditFrameActivity.this.A ? 8 : 0);
                EditFrameActivity.this.H1();
            }

            @Override // t2.f
            /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
            public boolean b(Exception exc, Integer num, j<Bitmap> jVar, boolean z10) {
                EditFrameActivity.this.E1();
                return true;
            }

            @Override // t2.f
            /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
            public boolean a(Bitmap bitmap, Integer num, j<Bitmap> jVar, boolean z10, boolean z11) {
                if (bitmap.getByteCount() > 16777216) {
                    EditFrameActivity.this.E1();
                    return false;
                }
                EditFrameActivity.this.f27134y.X.setMode(1);
                EditFrameActivity.this.f27134y.X.setFrameBitmap(bitmap);
                EditFrameActivity.this.f27134y.X.n(BitmapFactory.decodeResource(EditFrameActivity.this.getResources(), R.drawable.ic_transparent), 0.0f);
                EditFrameActivity.this.f27134y.X.setOuterColor(Color.parseColor("#00AAA1"));
                EditFrameActivity.this.f27134y.f33167g0.postDelayed(new Runnable() { // from class: com.tebakgambar.selfie.a
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f27151o.d();
                    }
                }, 200L);
                return false;
            }
        }

        class c extends v2.g<Bitmap> {
            c() {
            }

            @Override // v2.j
            /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
            public void c(Bitmap bitmap, u2.c<? super Bitmap> cVar) {
            }
        }

        class d implements t2.f<String, Bitmap> {
            d() {
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void d() {
                EditFrameActivity.this.f27134y.f33168h0.setVisibility(8);
                RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) EditFrameActivity.this.f27134y.X.getLayoutParams();
                layoutParams.width = EditFrameActivity.this.f27134y.f33167g0.getWidth();
                layoutParams.height = EditFrameActivity.this.f27134y.f33167g0.getWidth();
                EditFrameActivity.this.f27134y.X.setLayoutParams(layoutParams);
                EditFrameActivity.this.f27134y.f33169i0.setLayoutParams(layoutParams);
                EditFrameActivity.this.f27134y.f33169i0.setVisibility(0);
                EditFrameActivity.this.f27134y.X.setVisibility(0);
                EditFrameActivity.this.f27134y.f33168h0.setVisibility(8);
                EditFrameActivity.this.f27134y.Y.setVisibility(EditFrameActivity.this.A ? 8 : 0);
                EditFrameActivity.this.H1();
            }

            @Override // t2.f
            /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
            public boolean b(Exception exc, String str, j<Bitmap> jVar, boolean z10) {
                EditFrameActivity.this.E1();
                return true;
            }

            @Override // t2.f
            /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
            public boolean a(Bitmap bitmap, String str, j<Bitmap> jVar, boolean z10, boolean z11) {
                if (bitmap.getByteCount() > 16777216) {
                    EditFrameActivity.this.E1();
                    return false;
                }
                EditFrameActivity.this.f27134y.X.setMode(1);
                EditFrameActivity.this.f27134y.X.setFrameBitmap(bitmap);
                EditFrameActivity.this.f27134y.X.n(BitmapFactory.decodeResource(EditFrameActivity.this.getResources(), R.drawable.ic_transparent), 0.0f);
                EditFrameActivity.this.f27134y.X.setOuterColor(Color.parseColor("#00AAA1"));
                EditFrameActivity.this.f27134y.f33167g0.postDelayed(new Runnable() { // from class: com.tebakgambar.selfie.b
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f27152o.d();
                    }
                }, 200L);
                return false;
            }
        }

        b() {
        }

        @Override // t1.f
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public t1.h<Void> a(t1.h<Level> hVar) {
            Level levelS = hVar.s();
            if (levelS.id == 1) {
                v1.g.w(EditFrameActivity.this).w(Integer.valueOf(levelS.getFrameResource(EditFrameActivity.this))).W().J(new C0133b()).q(new a());
                return null;
            }
            v1.g.w(EditFrameActivity.this).x(levelS.frameUrl).W().j(b2.b.ALL).J(new d()).q(new c());
            return null;
        }
    }

    class c extends v2.g<Bitmap> {
        c() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void n() {
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) EditFrameActivity.this.f27134y.X.getLayoutParams();
            layoutParams.width = EditFrameActivity.this.f27134y.f33167g0.getWidth();
            layoutParams.height = EditFrameActivity.this.f27134y.f33167g0.getWidth();
            EditFrameActivity.this.f27134y.X.setLayoutParams(layoutParams);
            EditFrameActivity.this.f27134y.f33165e0.setLayoutParams(layoutParams);
            EditFrameActivity.this.f27134y.f33168h0.setVisibility(8);
            EditFrameActivity.this.f27134y.X.setVisibility(0);
            EditFrameActivity.this.f27134y.f33165e0.setVisibility(0);
            EditFrameActivity.this.f27134y.f33169i0.setVisibility(8);
            EditFrameActivity.this.f27134y.f33162b0.setVisibility(8);
            EditFrameActivity.this.f27134y.Y.setVisibility(EditFrameActivity.this.A ? 8 : 0);
            EditFrameActivity.this.H1();
        }

        @Override // v2.a, v2.j
        public void j(Drawable drawable) {
            super.j(drawable);
        }

        @Override // v2.j
        /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
        public void c(Bitmap bitmap, u2.c<? super Bitmap> cVar) {
            v1.g.w(EditFrameActivity.this).w(Integer.valueOf(R.drawable.frame_default)).p(EditFrameActivity.this.f27134y.Z);
            EditFrameActivity.this.f27134y.X.setFrameBitmap(bitmap);
            EditFrameActivity.this.f27134y.X.n(BitmapFactory.decodeResource(EditFrameActivity.this.getResources(), R.drawable.ic_transparent), 0.0f);
            EditFrameActivity.this.f27134y.X.setOuterColor(Color.parseColor("#00AAA1"));
            EditFrameActivity.this.f27134y.f33167g0.postDelayed(new Runnable() { // from class: com.tebakgambar.selfie.c
                @Override // java.lang.Runnable
                public final void run() {
                    this.f27153o.n();
                }
            }, 200L);
        }
    }

    class d extends v2.g<Bitmap> {
        d() {
        }

        @Override // v2.j
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void c(Bitmap bitmap, u2.c<? super Bitmap> cVar) {
        }
    }

    class e implements t2.f<String, Bitmap> {
        e() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void d() {
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) EditFrameActivity.this.f27134y.X.getLayoutParams();
            layoutParams.width = EditFrameActivity.this.f27134y.f33167g0.getWidth();
            layoutParams.height = EditFrameActivity.this.f27134y.f33167g0.getWidth();
            EditFrameActivity.this.f27134y.X.setLayoutParams(layoutParams);
            EditFrameActivity.this.f27134y.f33165e0.setLayoutParams(layoutParams);
            EditFrameActivity.this.f27134y.f33168h0.setVisibility(8);
            EditFrameActivity.this.f27134y.X.setVisibility(0);
            EditFrameActivity.this.f27134y.f33165e0.setVisibility(0);
            EditFrameActivity.this.f27134y.f33169i0.setVisibility(8);
            EditFrameActivity.this.f27134y.f33162b0.setVisibility(8);
            EditFrameActivity.this.f27134y.Y.setVisibility(EditFrameActivity.this.A ? 8 : 0);
            EditFrameActivity.this.H1();
        }

        @Override // t2.f
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public boolean b(Exception exc, String str, j<Bitmap> jVar, boolean z10) {
            EditFrameActivity.this.E1();
            return true;
        }

        @Override // t2.f
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public boolean a(Bitmap bitmap, String str, j<Bitmap> jVar, boolean z10, boolean z11) {
            EditFrameActivity.this.f27134y.Z.setImageBitmap(bitmap);
            EditFrameActivity.this.f27134y.X.setFrameBitmap(bitmap);
            EditFrameActivity.this.f27134y.X.n(BitmapFactory.decodeResource(EditFrameActivity.this.getResources(), R.drawable.ic_transparent), 0.0f);
            EditFrameActivity.this.f27134y.X.setOuterColor(Color.parseColor("#00AAA1"));
            EditFrameActivity.this.f27134y.f33167g0.postDelayed(new Runnable() { // from class: com.tebakgambar.selfie.d
                @Override // java.lang.Runnable
                public final void run() {
                    this.f27154o.d();
                }
            }, 200L);
            return false;
        }
    }

    class f extends androidx.activity.g {
        f(boolean z10) {
            super(z10);
        }

        @Override // androidx.activity.g
        public void b() {
            if (EditFrameActivity.this.G) {
                EditFrameActivity.this.finish();
                return;
            }
            if (EditFrameActivity.this.f27135z.f27159t != -1) {
                EditFrameActivity.this.finish();
                return;
            }
            if (EditFrameActivity.this.f27135z.f27157r == null) {
                EditFrameActivity.this.s1();
            } else if (EditFrameActivity.this.f27135z.f27157r instanceof ResultEvents) {
                EditFrameActivity.this.startActivity(new Intent(EditFrameActivity.this.getBaseContext(), (Class<?>) AdsActivity.class).putExtra("event_data", EditFrameActivity.this.f27135z.f27157r));
            } else if (EditFrameActivity.this.f27135z.f27157r instanceof ResultEventClue) {
                EditFrameActivity.this.startActivity(new Intent(EditFrameActivity.this.getBaseContext(), (Class<?>) AdsActivity.class).putExtra("event_clue", EditFrameActivity.this.f27135z.f27157r).putExtra("isMainLagi", false));
            }
            EditFrameActivity.this.finish();
        }
    }

    class g implements y.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ y f27146a;

        g(y yVar) {
            this.f27146a = yVar;
        }

        @Override // j8.y.a
        public void a() {
            EditFrameActivity.this.M1("camera");
            try {
                EditFrameActivity editFrameActivity = EditFrameActivity.this;
                editFrameActivity.D = y8.h.b(editFrameActivity, "tmp_tg.jpg");
                EditFrameActivity editFrameActivity2 = EditFrameActivity.this;
                y8.a.g(editFrameActivity2, 1, editFrameActivity2.D);
            } catch (IOException e10) {
                e10.printStackTrace();
            } catch (n e11) {
                e11.printStackTrace();
                EditFrameActivity.this.B0(e11.a(), new Runnable() { // from class: com.tebakgambar.selfie.e
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f27155o.a();
                    }
                });
            }
            this.f27146a.dismiss();
        }

        @Override // j8.y.a
        public void b() {
            EditFrameActivity.this.M1("file_manager");
            try {
                y8.a.h(EditFrameActivity.this, 2);
            } catch (n e10) {
                e10.printStackTrace();
                EditFrameActivity.this.B0(e10.a(), new Runnable() { // from class: com.tebakgambar.selfie.f
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f27156o.b();
                    }
                });
            }
            this.f27146a.dismiss();
        }

        @Override // j8.y.a
        public void c() {
        }
    }

    class h implements c0.i {
        h() {
        }

        @Override // j8.c0.i
        public void a() {
        }

        @Override // j8.c0.i
        public void b() {
            EditFrameActivity.this.B.dismiss();
            EditFrameActivity.this.B = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object A1(String str, Bitmap bitmap) throws Exception {
        File file = new File(Environment.getExternalStorageDirectory().getAbsolutePath() + "/tebak-gambar");
        if (!file.exists()) {
            file.mkdirs();
        }
        FileOutputStream fileOutputStream = new FileOutputStream(new File(file, str + "-" + new SimpleDateFormat("DD-MM-yyyy").format(new Date(System.currentTimeMillis())) + ".png"));
        y8.y.M(bitmap, 500, 500).compress(Bitmap.CompressFormat.PNG, 85, fileOutputStream);
        fileOutputStream.flush();
        fileOutputStream.close();
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ t1.h B1(t1.h hVar) throws Exception {
        O0(getString(R.string.image_saved_in_sdcard));
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ t1.h C1(t1.h hVar) throws Exception {
        if (hVar.r() == null) {
            return null;
        }
        com.google.firebase.crashlytics.a.a().d(hVar.r());
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ t1.h D1(Uri uri, t1.h hVar) throws Exception {
        this.f27134y.X.o(uri, true);
        this.f27134y.f33165e0.setVisibility(8);
        this.f27134y.f33169i0.setVisibility(8);
        this.f27134y.Y.setVisibility(8);
        this.A = true;
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void E1() {
        I1();
        v1.g.w(this).w(Integer.valueOf(R.drawable.frame_default)).W().q(new c());
    }

    private void F1(String str) {
        I1();
        v1.g.w(this).x(str).W().M(R.drawable.ic_transparent).j(b2.b.ALL).J(new e()).q(new d());
    }

    private void G1() {
        I1();
        t1.h.d(new Callable() { // from class: u8.d
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f35636a.v1();
            }
        }).A(new b(), t1.h.f35199k).l(new t1.f() { // from class: u8.i
            @Override // t1.f
            public final Object a(t1.h hVar) {
                return EditFrameActivity.w1(hVar);
            }
        });
        this.f27134y.Q.setVisibility(8);
        this.f27134y.O.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void H1() {
        this.f27134y.P.setEnabled(true);
        if (this.F.a().v()) {
            return;
        }
        this.F.d(null);
    }

    private void I1() {
        this.f27134y.f33168h0.setVisibility(0);
        this.f27134y.X.setVisibility(8);
        this.f27134y.f33169i0.setVisibility(8);
        this.f27134y.f33162b0.setVisibility(8);
        this.f27134y.Y.setVisibility(8);
        this.f27134y.P.setEnabled(false);
    }

    private void J1() {
        y yVar = new y(this, R.style.CustomDialog);
        yVar.b(new g(yVar));
        yVar.show();
    }

    private void K1() {
        final Bitmap pictureBitmap = this.f27134y.X.getPictureBitmap();
        final String str = "tebakgambar.com_frame_" + this.f27135z.f27158s;
        N1();
        t1.h.d(new Callable() { // from class: u8.e
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return EditFrameActivity.A1(str, pictureBitmap);
            }
        }).A(new t1.f() { // from class: u8.f
            @Override // t1.f
            public final Object a(t1.h hVar) {
                return this.f35639a.B1(hVar);
            }
        }, t1.h.f35199k).l(new t1.f() { // from class: u8.h
            @Override // t1.f
            public final Object a(t1.h hVar) {
                return EditFrameActivity.C1(hVar);
            }
        });
    }

    private void L1(final Uri uri) {
        this.F.a().A(new t1.f() { // from class: u8.g
            @Override // t1.f
            public final Object a(t1.h hVar) {
                return this.f35640a.D1(uri, hVar);
            }
        }, t1.h.f35199k);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void M1(String str) {
        m8.e.c("clickOnEditPhoto", "edit selfie frame", "click on edit photo", "regular_frame - " + this.f27135z.f27158s + " - " + str);
    }

    private void N1() {
        m8.e.c("clickOnSavePhoto", "edit selfie frame", "click on save photo", "regular_frame - " + this.f27135z.f27158s);
    }

    private void O1(String str) {
        m8.e.c("clickOnSharePhoto", "edit selfie frame", "click on share photo", "regular_frame - " + this.f27135z.f27158s + " - " + str);
    }

    private void r1(Uri uri) {
        int width = BitmapFactory.decodeResource(getResources(), R.drawable.frame_level_1).getWidth();
        com.theartofdev.edmodo.cropper.d.a(uri).e(CropImageView.c.RECTANGLE).c(1, 1).d(true).f(true).h(width, width, CropImageView.j.RESIZE_EXACT).g(CropImageView.d.ON).i(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s1() {
        Intent intentBuild = Henson.with(this).e().build();
        intentBuild.setFlags(603979776);
        startActivity(intentBuild);
    }

    private void u1() {
        getOnBackPressedDispatcher().b(new f(true));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Level v1() throws Exception {
        return Level.fromId(this.f27135z.f27158s);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ t1.h w1(t1.h hVar) throws Exception {
        if (hVar.r() == null) {
            return null;
        }
        com.google.firebase.crashlytics.a.a().d(hVar.r());
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void y1(View view) {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse(this.f27135z.f27157r.ads_url));
        startActivity(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void z1(String str) {
        if (this.B == null) {
            c0 c0Var = new c0(this, R.style.CustomDialog, false, BuildConfig.FLAVOR, BuildConfig.FLAVOR, BuildConfig.FLAVOR, getString(R.string.close));
            this.B = c0Var;
            c0Var.e(str);
            this.B.r(false);
            this.B.o(new h());
            this.B.show();
        }
    }

    @Override // y8.w.g
    public void d(final String str, int i10, Uri uri) {
        runOnUiThread(new Runnable() { // from class: u8.c
            @Override // java.lang.Runnable
            public final void run() {
                this.f35634o.z1(str);
            }
        });
    }

    @Override // j8.t, androidx.fragment.app.e, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i10, int i11, Intent intent) {
        super.onActivityResult(i10, i11, intent);
        this.C.o(i10, i11, intent);
        if (i10 == 1) {
            if (i11 != -1) {
                return;
            }
            try {
                Uri uriK = y8.h.k(this, "tmp_tg.jpg");
                if (this.f27134y.X.getMode() == 2) {
                    r1(uriK);
                    return;
                } else {
                    if (uriK != null) {
                        L1(uriK);
                        return;
                    }
                    return;
                }
            } catch (n e10) {
                e10.printStackTrace();
                return;
            }
        }
        if (i10 != 2) {
            if (i10 == 203 && i11 == -1) {
                d.c cVarB = com.theartofdev.edmodo.cropper.d.b(intent);
                if (cVarB.z() != null) {
                    L1(cVarB.z());
                    return;
                }
                return;
            }
            return;
        }
        if (i11 != -1) {
            return;
        }
        Uri data = intent.getData();
        if (this.f27134y.X.getMode() == 2) {
            r1(data);
        } else if (data != null) {
            L1(data);
        }
    }

    @Override // android.view.View.OnClickListener
    /* JADX INFO: renamed from: onClick, reason: merged with bridge method [inline-methods] */
    public void x1(final View view) {
        o8.c cVar = this.f27134y;
        if (view == cVar.U) {
            new c0(this, R.style.CustomDialog, true).show();
            return;
        }
        if (view == cVar.P || view == cVar.f33169i0 || view == cVar.f33165e0) {
            J1();
            return;
        }
        if (view == cVar.Q) {
            BaseEvent baseEvent = this.f27135z.f27157r;
            if (baseEvent != null && (baseEvent instanceof ResultEvents)) {
                y8.y.x0(this, baseEvent.id, AppEventsConstants.EVENT_PARAM_VALUE_NO);
                if (this.f27135z.f27157r.isAdBannerAvailable()) {
                    startActivity(new Intent(getBaseContext(), (Class<?>) AdsActivity.class).putExtra("event_data", this.f27135z.f27157r).putExtra("isMainLagi", true));
                } else {
                    startActivity(new Intent(getBaseContext(), (Class<?>) EventQuestionActivity.class).putExtra("event_data", this.f27135z.f27157r));
                }
            } else if (baseEvent != null && (baseEvent instanceof ResultEventClue)) {
                y8.y.e0(this, baseEvent.id);
                if (this.f27135z.f27157r.isAdBannerAvailable()) {
                    startActivity(new Intent(getBaseContext(), (Class<?>) AdsActivity.class).putExtra("event_clue", this.f27135z.f27157r).putExtra("isMainLagi", true));
                } else {
                    startActivity(new Intent(getBaseContext(), (Class<?>) EventQuestionActivity.class).putExtra("event_clue", this.f27135z.f27157r));
                }
            }
            finish();
            return;
        }
        if (view == cVar.O) {
            return;
        }
        if (!this.A) {
            O0(getString(R.string.share_image_message));
            return;
        }
        try {
            o.a(this, new String[]{"android.permission.READ_EXTERNAL_STORAGE", "android.permission.WRITE_EXTERNAL_STORAGE"});
            o8.c cVar2 = this.f27134y;
            if (view == cVar2.S) {
                K1();
                return;
            }
            if (view == cVar2.R) {
                this.C.v(this.f27135z.j());
                try {
                    this.C.w(y8.h.t(this, this.f27134y.X.getPictureBitmap()));
                } catch (IOException | n e10) {
                    e10.printStackTrace();
                    com.google.firebase.crashlytics.a.a().d(e10);
                }
            }
        } catch (n e11) {
            e11.printStackTrace();
            this.E = new Runnable() { // from class: u8.b
                @Override // java.lang.Runnable
                public final void run() {
                    this.f35632o.x1(view);
                }
            };
            if (Build.VERSION.SDK_INT >= 23) {
                requestPermissions(e11.a(), 3);
            }
        }
    }

    @Override // androidx.fragment.app.e, androidx.activity.ComponentActivity, androidx.core.app.g, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f27135z = (com.tebakgambar.selfie.g) k0.b(this).a(com.tebakgambar.selfie.g.class);
        this.f27134y = (o8.c) androidx.databinding.g.j(this, R.layout.activity_edit_frame);
        this.F = new t1.i<>();
        w wVar = new w(this);
        this.C = wVar;
        wVar.u(this);
        D0(R.id.frameAds);
        ResultEventClue resultEventClue = (ResultEventClue) getIntent().getParcelableExtra("event_clue");
        ResultEvents resultEvents = (ResultEvents) getIntent().getParcelableExtra("event_data");
        if (resultEventClue != null) {
            this.f27135z.f27157r = resultEventClue;
        } else if (resultEvents != null) {
            this.f27135z.f27157r = resultEvents;
        }
        this.f27135z.f27159t = getIntent().getIntExtra("questionGlobalIndex", 0);
        this.f27135z.f27158s = getIntent().getIntExtra("frameLevel", 0);
        this.f27134y.f33162b0.setVisibility(8);
        this.f27134y.f33168h0.setVisibility(8);
        this.f27134y.f33165e0.setOnClickListener(this);
        this.f27134y.Q.setOnClickListener(this);
        this.f27134y.O.setOnClickListener(this);
        this.f27134y.f33169i0.setOnClickListener(this);
        this.f27134y.U.setOnClickListener(this);
        this.f27134y.P.setOnClickListener(this);
        this.f27134y.S.setOnClickListener(this);
        this.f27134y.R.setOnClickListener(this);
        com.tebakgambar.selfie.g gVar = this.f27135z;
        if (gVar.f27158s != 0) {
            G1();
        } else if (gVar.f27157r != null) {
            this.f27134y.X.setMode(2);
            this.f27134y.U.setVisibility(8);
            this.f27134y.Q.setVisibility(0);
            this.f27134y.O.setVisibility(8);
            this.f27134y.Q.setOnClickListener(this);
            this.f27134y.O.setOnClickListener(this);
            F1(this.f27135z.f27157r.mascot_image_url);
            if (this.f27135z.f27157r.isAdBannerAvailable()) {
                h0().U(this.f27135z.f27157r.ads_banner, new a(), new View.OnClickListener() { // from class: u8.a
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f35631o.y1(view);
                    }
                });
            }
        } else {
            finish();
        }
        u1();
    }

    @Override // j8.t, androidx.appcompat.app.c, androidx.fragment.app.e, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        this.C.p();
    }

    @Override // j8.t, androidx.fragment.app.e, androidx.activity.ComponentActivity, android.app.Activity
    public void onRequestPermissionsResult(int i10, String[] strArr, int[] iArr) {
        Runnable runnable;
        super.onRequestPermissionsResult(i10, strArr, iArr);
        if (o.b(iArr) && (runnable = this.E) != null) {
            runnable.run();
        }
        this.E = null;
    }

    @Override // j8.t, androidx.fragment.app.e, android.app.Activity
    protected void onResume() {
        super.onResume();
        this.f27134y.X.invalidate();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z10) {
        super.onWindowFocusChanged(z10);
        this.f27134y.X.invalidate();
    }

    @Override // y8.w.g
    public void y(int i10, Uri uri) {
        O1(this.C.n());
        if (i10 == 2) {
            O0(getString(R.string.share_image_success));
            setResult(-1);
            this.G = true;
        } else {
            O0(getString(R.string.share_image_success));
            setResult(-1);
            finish();
        }
    }
}

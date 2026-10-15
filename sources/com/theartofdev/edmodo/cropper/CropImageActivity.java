package com.theartofdev.edmodo.cropper;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.Toast;
import com.tebakgambar.model.response.ApiResponse;
import com.theartofdev.edmodo.cropper.CropImageView;
import com.theartofdev.edmodo.cropper.d;
import java.io.File;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public class CropImageActivity extends androidx.appcompat.app.c implements CropImageView.i, CropImageView.e {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private CropImageView f27248q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private Uri f27249r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private f f27250s;

    private void U(Menu menu, int i10, int i11) {
        Drawable icon;
        MenuItem menuItemFindItem = menu.findItem(i10);
        if (menuItemFindItem == null || (icon = menuItemFindItem.getIcon()) == null) {
            return;
        }
        try {
            icon.mutate();
            icon.setColorFilter(i11, PorterDuff.Mode.SRC_ATOP);
            menuItemFindItem.setIcon(icon);
        } catch (Exception e10) {
            Log.w("AIC", "Failed to update menu item color", e10);
        }
    }

    protected void O() {
        if (this.f27250s.Z) {
            S(null, null, 1);
            return;
        }
        Uri uriP = P();
        CropImageView cropImageView = this.f27248q;
        f fVar = this.f27250s;
        cropImageView.p(uriP, fVar.U, fVar.V, fVar.W, fVar.X, fVar.Y);
    }

    protected Uri P() {
        Uri uri = this.f27250s.T;
        if (uri != null && !uri.equals(Uri.EMPTY)) {
            return uri;
        }
        try {
            Bitmap.CompressFormat compressFormat = this.f27250s.U;
            return Uri.fromFile(File.createTempFile("cropped", compressFormat == Bitmap.CompressFormat.JPEG ? ".jpg" : compressFormat == Bitmap.CompressFormat.PNG ? ".png" : ".webp", getCacheDir()));
        } catch (IOException e10) {
            throw new RuntimeException("Failed to create temp file for output image", e10);
        }
    }

    protected Intent Q(Uri uri, Exception exc, int i10) {
        d.c cVar = new d.c(this.f27248q.getImageUri(), uri, exc, this.f27248q.getCropPoints(), this.f27248q.getCropRect(), this.f27248q.getRotatedDegrees(), this.f27248q.getWholeImageRect(), i10);
        Intent intent = new Intent();
        intent.putExtras(getIntent());
        intent.putExtra("CROP_IMAGE_EXTRA_RESULT", cVar);
        return intent;
    }

    protected void R(int i10) {
        this.f27248q.o(i10);
    }

    protected void S(Uri uri, Exception exc, int i10) {
        setResult(exc == null ? -1 : ApiResponse.STATUS_LINK_SUCCESS, Q(uri, exc, i10));
        finish();
    }

    protected void T() {
        setResult(0);
        finish();
    }

    @Override // androidx.fragment.app.e, androidx.activity.ComponentActivity, android.app.Activity
    @SuppressLint({"NewApi"})
    protected void onActivityResult(int i10, int i11, Intent intent) {
        if (i10 == 200) {
            if (i11 == 0) {
                T();
            }
            if (i11 == -1) {
                Uri uriH = d.h(this, intent);
                this.f27249r = uriH;
                if (d.k(this, uriH)) {
                    requestPermissions(new String[]{"android.permission.READ_EXTERNAL_STORAGE"}, 201);
                } else {
                    this.f27248q.setImageUriAsync(this.f27249r);
                }
            }
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        super.onBackPressed();
        T();
    }

    @Override // androidx.fragment.app.e, androidx.activity.ComponentActivity, androidx.core.app.g, android.app.Activity
    @SuppressLint({"NewApi"})
    public void onCreate(Bundle bundle) {
        CharSequence charSequence;
        super.onCreate(bundle);
        setContentView(z8.b.f37302a);
        this.f27248q = (CropImageView) findViewById(z8.a.f37295d);
        Bundle bundleExtra = getIntent().getBundleExtra("CROP_IMAGE_EXTRA_BUNDLE");
        this.f27249r = (Uri) bundleExtra.getParcelable("CROP_IMAGE_EXTRA_SOURCE");
        this.f27250s = (f) bundleExtra.getParcelable("CROP_IMAGE_EXTRA_OPTIONS");
        if (bundle == null) {
            Uri uri = this.f27249r;
            if (uri == null || uri.equals(Uri.EMPTY)) {
                if (d.j(this)) {
                    requestPermissions(new String[]{"android.permission.CAMERA"}, 2011);
                } else {
                    d.m(this);
                }
            } else if (d.k(this, this.f27249r)) {
                requestPermissions(new String[]{"android.permission.READ_EXTERNAL_STORAGE"}, 201);
            } else {
                this.f27248q.setImageUriAsync(this.f27249r);
            }
        }
        androidx.appcompat.app.a aVarD = D();
        if (aVarD != null) {
            f fVar = this.f27250s;
            aVarD.t((fVar == null || (charSequence = fVar.R) == null || charSequence.length() <= 0) ? getResources().getString(z8.d.f37306b) : this.f27250s.R);
            aVarD.r(true);
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(z8.c.f37304a, menu);
        f fVar = this.f27250s;
        if (!fVar.f27368c0) {
            menu.removeItem(z8.a.f37300i);
            menu.removeItem(z8.a.f37301j);
        } else if (fVar.f27370e0) {
            menu.findItem(z8.a.f37300i).setVisible(true);
        }
        if (!this.f27250s.f27369d0) {
            menu.removeItem(z8.a.f37297f);
        }
        if (this.f27250s.f27374i0 != null) {
            menu.findItem(z8.a.f37296e).setTitle(this.f27250s.f27374i0);
        }
        Drawable drawableF = null;
        try {
            int i10 = this.f27250s.f27375j0;
            if (i10 != 0) {
                drawableF = androidx.core.content.a.f(this, i10);
                menu.findItem(z8.a.f37296e).setIcon(drawableF);
            }
        } catch (Exception e10) {
            Log.w("AIC", "Failed to read menu crop drawable", e10);
        }
        int i11 = this.f27250s.S;
        if (i11 != 0) {
            U(menu, z8.a.f37300i, i11);
            U(menu, z8.a.f37301j, this.f27250s.S);
            U(menu, z8.a.f37297f, this.f27250s.S);
            if (drawableF != null) {
                U(menu, z8.a.f37296e, this.f27250s.S);
            }
        }
        return true;
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == z8.a.f37296e) {
            O();
            return true;
        }
        if (menuItem.getItemId() == z8.a.f37300i) {
            R(-this.f27250s.f27371f0);
            return true;
        }
        if (menuItem.getItemId() == z8.a.f37301j) {
            R(this.f27250s.f27371f0);
            return true;
        }
        if (menuItem.getItemId() == z8.a.f37298g) {
            this.f27248q.f();
            return true;
        }
        if (menuItem.getItemId() == z8.a.f37299h) {
            this.f27248q.g();
            return true;
        }
        if (menuItem.getItemId() != 16908332) {
            return super.onOptionsItemSelected(menuItem);
        }
        T();
        return true;
    }

    @Override // androidx.fragment.app.e, androidx.activity.ComponentActivity, android.app.Activity
    public void onRequestPermissionsResult(int i10, String[] strArr, int[] iArr) {
        if (i10 == 201) {
            Uri uri = this.f27249r;
            if (uri == null || iArr.length <= 0 || iArr[0] != 0) {
                Toast.makeText(this, z8.d.f37305a, 1).show();
                T();
            } else {
                this.f27248q.setImageUriAsync(uri);
            }
        }
        if (i10 == 2011) {
            d.m(this);
        }
    }

    @Override // androidx.appcompat.app.c, androidx.fragment.app.e, android.app.Activity
    protected void onStart() {
        super.onStart();
        this.f27248q.setOnSetImageUriCompleteListener(this);
        this.f27248q.setOnCropImageCompleteListener(this);
    }

    @Override // androidx.appcompat.app.c, androidx.fragment.app.e, android.app.Activity
    protected void onStop() {
        super.onStop();
        this.f27248q.setOnSetImageUriCompleteListener(null);
        this.f27248q.setOnCropImageCompleteListener(null);
    }

    @Override // com.theartofdev.edmodo.cropper.CropImageView.i
    public void w(CropImageView cropImageView, Uri uri, Exception exc) {
        if (exc != null) {
            S(null, exc, 1);
            return;
        }
        Rect rect = this.f27250s.f27366a0;
        if (rect != null) {
            this.f27248q.setCropRect(rect);
        }
        int i10 = this.f27250s.f27367b0;
        if (i10 > -1) {
            this.f27248q.setRotatedDegrees(i10);
        }
    }

    @Override // com.theartofdev.edmodo.cropper.CropImageView.e
    public void x(CropImageView cropImageView, CropImageView.b bVar) {
        S(bVar.z(), bVar.v(), bVar.y());
    }
}

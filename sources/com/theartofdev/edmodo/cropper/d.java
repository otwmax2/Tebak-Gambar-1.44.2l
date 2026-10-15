package com.theartofdev.edmodo.cropper;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.provider.MediaStore;
import com.theartofdev.edmodo.cropper.CropImageView;
import java.io.File;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: CropImage.java */
/* JADX INFO: loaded from: classes2.dex */
public final class d {

    /* JADX INFO: compiled from: CropImage.java */
    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Uri f27353a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final f f27354b;

        public Intent a(Context context) {
            return b(context, CropImageActivity.class);
        }

        public Intent b(Context context, Class<?> cls) {
            this.f27354b.h();
            Intent intent = new Intent();
            intent.setClass(context, cls);
            Bundle bundle = new Bundle();
            bundle.putParcelable("CROP_IMAGE_EXTRA_SOURCE", this.f27353a);
            bundle.putParcelable("CROP_IMAGE_EXTRA_OPTIONS", this.f27354b);
            intent.putExtra("CROP_IMAGE_EXTRA_BUNDLE", bundle);
            return intent;
        }

        public b c(int i10, int i11) {
            f fVar = this.f27354b;
            fVar.A = i10;
            fVar.B = i11;
            fVar.f27387z = true;
            return this;
        }

        public b d(boolean z10) {
            this.f27354b.f27383v = z10;
            return this;
        }

        public b e(CropImageView.c cVar) {
            this.f27354b.f27376o = cVar;
            return this;
        }

        public b f(boolean z10) {
            this.f27354b.f27387z = z10;
            return this;
        }

        public b g(CropImageView.d dVar) {
            this.f27354b.f27379r = dVar;
            return this;
        }

        public b h(int i10, int i11, CropImageView.j jVar) {
            f fVar = this.f27354b;
            fVar.W = i10;
            fVar.X = i11;
            fVar.Y = jVar;
            return this;
        }

        public void i(Activity activity) {
            this.f27354b.h();
            activity.startActivityForResult(a(activity), 203);
        }

        private b(Uri uri) {
            this.f27353a = uri;
            this.f27354b = new f();
        }
    }

    /* JADX INFO: compiled from: CropImage.java */
    public static final class c extends CropImageView.b implements Parcelable {
        public static final Parcelable.Creator<c> CREATOR = new a();

        /* JADX INFO: compiled from: CropImage.java */
        static class a implements Parcelable.Creator<c> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public c createFromParcel(Parcel parcel) {
                return new c(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public c[] newArray(int i10) {
                return new c[i10];
            }
        }

        public c(Uri uri, Uri uri2, Exception exc, float[] fArr, Rect rect, int i10, Rect rect2, int i11) {
            super(null, uri, null, uri2, exc, fArr, rect, rect2, i10, i11);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            parcel.writeParcelable(w(), i10);
            parcel.writeParcelable(z(), i10);
            parcel.writeSerializable(v());
            parcel.writeFloatArray(h());
            parcel.writeParcelable(t(), i10);
            parcel.writeParcelable(A(), i10);
            parcel.writeInt(x());
            parcel.writeInt(y());
        }

        protected c(Parcel parcel) {
            super(null, (Uri) parcel.readParcelable(Uri.class.getClassLoader()), null, (Uri) parcel.readParcelable(Uri.class.getClassLoader()), (Exception) parcel.readSerializable(), parcel.createFloatArray(), (Rect) parcel.readParcelable(Rect.class.getClassLoader()), (Rect) parcel.readParcelable(Rect.class.getClassLoader()), parcel.readInt(), parcel.readInt());
        }
    }

    public static b a(Uri uri) {
        return new b(uri);
    }

    public static c b(Intent intent) {
        if (intent != null) {
            return (c) intent.getParcelableExtra("CROP_IMAGE_EXTRA_RESULT");
        }
        return null;
    }

    public static List<Intent> c(Context context, PackageManager packageManager) {
        ArrayList arrayList = new ArrayList();
        Uri uriD = d(context);
        Intent intent = new Intent("android.media.action.IMAGE_CAPTURE");
        for (ResolveInfo resolveInfo : packageManager.queryIntentActivities(intent, 0)) {
            Intent intent2 = new Intent(intent);
            ActivityInfo activityInfo = resolveInfo.activityInfo;
            intent2.setComponent(new ComponentName(activityInfo.packageName, activityInfo.name));
            intent2.setPackage(resolveInfo.activityInfo.packageName);
            if (uriD != null) {
                intent2.putExtra("output", uriD);
            }
            arrayList.add(intent2);
        }
        return arrayList;
    }

    public static Uri d(Context context) {
        File externalCacheDir = context.getExternalCacheDir();
        if (externalCacheDir != null) {
            return Uri.fromFile(new File(externalCacheDir.getPath(), "pickImageResult.jpeg"));
        }
        return null;
    }

    public static List<Intent> e(PackageManager packageManager, String str, boolean z10) {
        ArrayList arrayList = new ArrayList();
        Intent intent = str == "android.intent.action.GET_CONTENT" ? new Intent(str) : new Intent(str, MediaStore.Images.Media.EXTERNAL_CONTENT_URI);
        intent.setType("image/*");
        for (ResolveInfo resolveInfo : packageManager.queryIntentActivities(intent, 0)) {
            Intent intent2 = new Intent(intent);
            ActivityInfo activityInfo = resolveInfo.activityInfo;
            intent2.setComponent(new ComponentName(activityInfo.packageName, activityInfo.name));
            intent2.setPackage(resolveInfo.activityInfo.packageName);
            arrayList.add(intent2);
        }
        if (!z10) {
            Iterator it = arrayList.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Intent intent3 = (Intent) it.next();
                if (intent3.getComponent().getClassName().equals("com.android.documentsui.DocumentsActivity")) {
                    arrayList.remove(intent3);
                    break;
                }
            }
        }
        return arrayList;
    }

    public static Intent f(Context context) {
        return g(context, context.getString(z8.d.f37307c), false, true);
    }

    public static Intent g(Context context, CharSequence charSequence, boolean z10, boolean z11) {
        Intent intent;
        ArrayList arrayList = new ArrayList();
        PackageManager packageManager = context.getPackageManager();
        if (!j(context) && z11) {
            arrayList.addAll(c(context, packageManager));
        }
        List<Intent> listE = e(packageManager, "android.intent.action.GET_CONTENT", z10);
        if (listE.size() == 0) {
            listE = e(packageManager, "android.intent.action.PICK", z10);
        }
        arrayList.addAll(listE);
        if (arrayList.isEmpty()) {
            intent = new Intent();
        } else {
            intent = (Intent) arrayList.get(arrayList.size() - 1);
            arrayList.remove(arrayList.size() - 1);
        }
        Intent intentCreateChooser = Intent.createChooser(intent, charSequence);
        intentCreateChooser.putExtra("android.intent.extra.INITIAL_INTENTS", (Parcelable[]) arrayList.toArray(new Parcelable[arrayList.size()]));
        return intentCreateChooser;
    }

    public static Uri h(Context context, Intent intent) {
        String action;
        boolean z10 = true;
        if (intent != null && intent.getData() != null && ((action = intent.getAction()) == null || !action.equals("android.media.action.IMAGE_CAPTURE"))) {
            z10 = false;
        }
        return (z10 || intent.getData() == null) ? d(context) : intent.getData();
    }

    public static boolean i(Context context, String str) {
        try {
            String[] strArr = context.getPackageManager().getPackageInfo(context.getPackageName(), 4096).requestedPermissions;
            if (strArr != null && strArr.length > 0) {
                for (String str2 : strArr) {
                    if (str2.equalsIgnoreCase(str)) {
                        return true;
                    }
                }
            }
        } catch (PackageManager.NameNotFoundException unused) {
        }
        return false;
    }

    public static boolean j(Context context) {
        return Build.VERSION.SDK_INT >= 23 && i(context, "android.permission.CAMERA") && context.checkSelfPermission("android.permission.CAMERA") != 0;
    }

    public static boolean k(Context context, Uri uri) {
        return Build.VERSION.SDK_INT >= 23 && context.checkSelfPermission("android.permission.READ_EXTERNAL_STORAGE") != 0 && l(context, uri);
    }

    public static boolean l(Context context, Uri uri) {
        try {
            InputStream inputStreamOpenInputStream = context.getContentResolver().openInputStream(uri);
            if (inputStreamOpenInputStream == null) {
                return false;
            }
            inputStreamOpenInputStream.close();
            return false;
        } catch (Exception unused) {
            return true;
        }
    }

    public static void m(Activity activity) {
        activity.startActivityForResult(f(activity), 200);
    }
}

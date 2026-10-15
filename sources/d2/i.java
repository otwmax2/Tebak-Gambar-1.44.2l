package d2;

import android.annotation.TargetApi;
import android.app.ActivityManager;
import android.content.Context;
import android.os.Build;
import android.text.format.Formatter;
import android.util.DisplayMetrics;
import android.util.Log;

/* JADX INFO: compiled from: MemorySizeCalculator.java */
/* JADX INFO: loaded from: classes.dex */
public class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f28620a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f28621b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Context f28622c;

    /* JADX INFO: compiled from: MemorySizeCalculator.java */
    private static class a implements b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final DisplayMetrics f28623a;

        public a(DisplayMetrics displayMetrics) {
            this.f28623a = displayMetrics;
        }

        @Override // d2.i.b
        public int a() {
            return this.f28623a.heightPixels;
        }

        @Override // d2.i.b
        public int b() {
            return this.f28623a.widthPixels;
        }
    }

    /* JADX INFO: compiled from: MemorySizeCalculator.java */
    interface b {
        int a();

        int b();
    }

    public i(Context context) {
        this(context, (ActivityManager) context.getSystemService("activity"), new a(context.getResources().getDisplayMetrics()));
    }

    private static int b(ActivityManager activityManager) {
        return Math.round(activityManager.getMemoryClass() * 1024 * 1024 * (d(activityManager) ? 0.33f : 0.4f));
    }

    @TargetApi(19)
    private static boolean d(ActivityManager activityManager) {
        int i10 = Build.VERSION.SDK_INT;
        return i10 >= 19 ? activityManager.isLowRamDevice() : i10 < 11;
    }

    private String e(int i10) {
        return Formatter.formatFileSize(this.f28622c, i10);
    }

    public int a() {
        return this.f28620a;
    }

    public int c() {
        return this.f28621b;
    }

    i(Context context, ActivityManager activityManager, b bVar) {
        this.f28622c = context;
        int iB = b(activityManager);
        int iB2 = bVar.b() * bVar.a() * 4;
        int i10 = iB2 * 4;
        int i11 = iB2 * 2;
        int i12 = i11 + i10;
        if (i12 <= iB) {
            this.f28621b = i11;
            this.f28620a = i10;
        } else {
            int iRound = Math.round(iB / 6.0f);
            this.f28621b = iRound * 2;
            this.f28620a = iRound * 4;
        }
        if (Log.isLoggable("MemorySizeCalculator", 3)) {
            StringBuilder sb = new StringBuilder();
            sb.append("Calculated memory cache size: ");
            sb.append(e(this.f28621b));
            sb.append(" pool size: ");
            sb.append(e(this.f28620a));
            sb.append(" memory class limited? ");
            sb.append(i12 > iB);
            sb.append(" max size: ");
            sb.append(e(iB));
            sb.append(" memoryClass: ");
            sb.append(activityManager.getMemoryClass());
            sb.append(" isLowMemoryDevice: ");
            sb.append(d(activityManager));
            Log.d("MemorySizeCalculator", sb.toString());
        }
    }
}

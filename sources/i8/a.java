package i8;

import android.content.Intent;
import android.content.IntentFilter;
import com.facebook.GraphResponse;
import com.tebakgambar.model.Level;

/* JADX INFO: compiled from: LevelDownloadBroadcast.java */
/* JADX INFO: loaded from: classes2.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Level f30530a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f30531b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f30532c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f30533d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f30534e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float f30535f;

    public a(Level level) {
        this.f30535f = -1.0f;
        this.f30530a = level;
    }

    public static IntentFilter c(int i10) {
        return new IntentFilter("levelDownload_" + i10);
    }

    private float f() {
        if (this.f30532c <= 0) {
            return 100.0f;
        }
        return Math.min((this.f30531b / r0) * 100, 100L);
    }

    public Level a() {
        return this.f30530a;
    }

    public float b() {
        float f10 = this.f30535f;
        return f10 != -1.0f ? f10 : f();
    }

    public boolean d() {
        return this.f30533d;
    }

    public boolean e() {
        return this.f30534e;
    }

    public void g(boolean z10) {
        this.f30533d = true;
        this.f30534e = z10;
    }

    public Intent h() {
        Intent intent = new Intent();
        intent.setAction("levelDownload_" + this.f30530a.id);
        intent.putExtra("percentage", f());
        intent.putExtra(GraphResponse.SUCCESS_KEY, e());
        intent.putExtra("finished", d());
        return intent;
    }

    public void i(long j10, long j11) {
        this.f30531b = j10;
        this.f30532c = j11;
    }

    public a(Level level, Intent intent) {
        this.f30535f = -1.0f;
        this.f30534e = intent.getBooleanExtra(GraphResponse.SUCCESS_KEY, false);
        this.f30533d = intent.getBooleanExtra("finished", false);
        this.f30535f = intent.getFloatExtra("percentage", -1.0f);
        this.f30530a = level;
    }
}

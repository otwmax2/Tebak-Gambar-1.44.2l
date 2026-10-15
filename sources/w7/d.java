package w7;

import android.content.Context;
import android.database.ContentObserver;
import android.media.AudioManager;
import android.os.Handler;
import android.provider.Settings;

/* JADX INFO: loaded from: classes2.dex */
public final class d extends ContentObserver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f36020a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final AudioManager f36021b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final a f36022c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final c f36023d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f36024e;

    public d(Handler handler, Context context, a aVar, c cVar) {
        super(handler);
        this.f36020a = context;
        this.f36021b = (AudioManager) context.getSystemService("audio");
        this.f36022c = aVar;
        this.f36023d = cVar;
    }

    private boolean b(float f10) {
        return f10 != this.f36024e;
    }

    private float d() {
        return this.f36022c.a(this.f36021b.getStreamVolume(3), this.f36021b.getStreamMaxVolume(3));
    }

    private void e() {
        this.f36023d.a(this.f36024e);
    }

    public void a() {
        this.f36024e = d();
        e();
        this.f36020a.getContentResolver().registerContentObserver(Settings.System.CONTENT_URI, true, this);
    }

    public void c() {
        this.f36020a.getContentResolver().unregisterContentObserver(this);
    }

    @Override // android.database.ContentObserver
    public void onChange(boolean z10) {
        super.onChange(z10);
        float fD = d();
        if (b(fD)) {
            this.f36024e = fD;
            e();
        }
    }
}

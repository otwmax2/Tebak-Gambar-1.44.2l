package f8;

import java.io.PrintWriter;

/* JADX INFO: compiled from: StatsSnapshot.java */
/* JADX INFO: loaded from: classes2.dex */
public class b0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f29314a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f29315b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f29316c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final long f29317d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f29318e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long f29319f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final long f29320g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final long f29321h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final long f29322i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final long f29323j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f29324k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final int f29325l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final int f29326m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final long f29327n;

    public b0(int i10, int i11, long j10, long j11, long j12, long j13, long j14, long j15, long j16, long j17, int i12, int i13, int i14, long j18) {
        this.f29314a = i10;
        this.f29315b = i11;
        this.f29316c = j10;
        this.f29317d = j11;
        this.f29318e = j12;
        this.f29319f = j13;
        this.f29320g = j14;
        this.f29321h = j15;
        this.f29322i = j16;
        this.f29323j = j17;
        this.f29324k = i12;
        this.f29325l = i13;
        this.f29326m = i14;
        this.f29327n = j18;
    }

    public void a(PrintWriter printWriter) {
        printWriter.println("===============BEGIN PICASSO STATS ===============");
        printWriter.println("Memory Cache Stats");
        printWriter.print("  Max Cache Size: ");
        printWriter.println(this.f29314a);
        printWriter.print("  Cache Size: ");
        printWriter.println(this.f29315b);
        printWriter.print("  Cache % Full: ");
        printWriter.println((int) Math.ceil((this.f29315b / this.f29314a) * 100.0f));
        printWriter.print("  Cache Hits: ");
        printWriter.println(this.f29316c);
        printWriter.print("  Cache Misses: ");
        printWriter.println(this.f29317d);
        printWriter.println("Network Stats");
        printWriter.print("  Download Count: ");
        printWriter.println(this.f29324k);
        printWriter.print("  Total Download Size: ");
        printWriter.println(this.f29318e);
        printWriter.print("  Average Download Size: ");
        printWriter.println(this.f29321h);
        printWriter.println("Bitmap Stats");
        printWriter.print("  Total Bitmaps Decoded: ");
        printWriter.println(this.f29325l);
        printWriter.print("  Total Bitmap Size: ");
        printWriter.println(this.f29319f);
        printWriter.print("  Total Transformed Bitmaps: ");
        printWriter.println(this.f29326m);
        printWriter.print("  Total Transformed Bitmap Size: ");
        printWriter.println(this.f29320g);
        printWriter.print("  Average Bitmap Size: ");
        printWriter.println(this.f29322i);
        printWriter.print("  Average Transformed Bitmap Size: ");
        printWriter.println(this.f29323j);
        printWriter.println("===============END PICASSO STATS ===============");
        printWriter.flush();
    }

    public String toString() {
        return "StatsSnapshot{maxSize=" + this.f29314a + ", size=" + this.f29315b + ", cacheHits=" + this.f29316c + ", cacheMisses=" + this.f29317d + ", downloadCount=" + this.f29324k + ", totalDownloadSize=" + this.f29318e + ", averageDownloadSize=" + this.f29321h + ", totalOriginalBitmapSize=" + this.f29319f + ", totalTransformedBitmapSize=" + this.f29320g + ", averageOriginalBitmapSize=" + this.f29322i + ", averageTransformedBitmapSize=" + this.f29323j + ", originalBitmapCount=" + this.f29325l + ", transformedBitmapCount=" + this.f29326m + ", timeStamp=" + this.f29327n + '}';
    }
}

###### Class com.google.android.gms.measurement.internal.zzkr (com.google.android.gms.measurement.internal.zzkr)
.class public final Lcom/google/android/gms/measurement/internal/zzkr;
.super Lcom/google/android/gms/measurement/internal/r;
.source "com.google.android.gms:play-services-measurement-impl@@20.1.2"


# instance fields
.field private c:Landroid/os/Handler;

.field protected final d:Lcom/google/android/gms/measurement/internal/n3;

.field protected final e:Lcom/google/android/gms/measurement/internal/m3;

.field protected final f:Lcom/google/android/gms/measurement/internal/k3;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzgi;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/r;-><init>(Lcom/google/android/gms/measurement/internal/zzgi;)V

    new-instance p1, Lcom/google/android/gms/measurement/internal/n3;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/n3;-><init>(Lcom/google/android/gms/measurement/internal/zzkr;)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkr;->d:Lcom/google/android/gms/measurement/internal/n3;

    new-instance p1, Lcom/google/android/gms/measurement/internal/m3;

    .line 2
    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/m3;-><init>(Lcom/google/android/gms/measurement/internal/zzkr;)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkr;->e:Lcom/google/android/gms/measurement/internal/m3;

    new-instance p1, Lcom/google/android/gms/measurement/internal/k3;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/k3;-><init>(Lcom/google/android/gms/measurement/internal/zzkr;)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkr;->f:Lcom/google/android/gms/measurement/internal/k3;

    return-void
.end method

.method static bridge synthetic j(Lcom/google/android/gms/measurement/internal/zzkr;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzkr;->c:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic k(Lcom/google/android/gms/measurement/internal/zzkr;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkr;->n()V

    return-void
.end method

.method static bridge synthetic l(Lcom/google/android/gms/measurement/internal/zzkr;J)V
    .registers 6

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/y0;->c()V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkr;->n()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzey;->q()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "Activity paused, time"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzew;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkr;->f:Lcom/google/android/gms/measurement/internal/k3;

    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/k3;->a(J)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->v()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaf;->A()Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzkr;->e:Lcom/google/android/gms/measurement/internal/m3;

    .line 8
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/m3;->b(J)V

    :cond_2f
    return-void
.end method

.method static bridge synthetic m(Lcom/google/android/gms/measurement/internal/zzkr;J)V
    .registers 6

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/y0;->c()V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkr;->n()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzey;->q()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "Activity resumed, time"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzew;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->v()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaf;->A()Z

    move-result v0

    if-nez v0, :cond_33

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->D()Lcom/google/android/gms/measurement/internal/x;

    move-result-object v0

    .line 8
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/x;->q:Lcom/google/android/gms/measurement/internal/zzfh;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfh;->b()Z

    move-result v0

    if-eqz v0, :cond_38

    :cond_33
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkr;->e:Lcom/google/android/gms/measurement/internal/m3;

    .line 9
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/m3;->c(J)V

    :cond_38
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkr;->f:Lcom/google/android/gms/measurement/internal/k3;

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/k3;->b()V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzkr;->d:Lcom/google/android/gms/measurement/internal/n3;

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/n3;->a:Lcom/google/android/gms/measurement/internal/zzkr;

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/y0;->c()V

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/n3;->a:Lcom/google/android/gms/measurement/internal/zzkr;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgi;->j()Z

    move-result p1

    if-nez p1, :cond_4f

    return-void

    :cond_4f
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/n3;->a:Lcom/google/android/gms/measurement/internal/zzkr;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgi;->x()Lcom/google/android/gms/common/util/Clock;

    move-result-object p1

    .line 14
    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->a()J

    move-result-wide p1

    const/4 v0, 0x0

    .line 15
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/measurement/internal/n3;->b(JZ)V

    return-void
.end method

.method private final n()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/y0;->c()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkr;->c:Landroid/os/Handler;

    if-nez v0, :cond_12

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzby;

    .line 2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzby;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkr;->c:Landroid/os/Handler;

    :cond_12
    return-void
.end method


# virtual methods
.method protected final i()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

###### Class com.google.android.gms.measurement.internal.k3 (com.google.android.gms.measurement.internal.k3)
.class final Lcom/google/android/gms/measurement/internal/k3;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@20.1.2"


# instance fields
.field private a:Lcom/google/android/gms/measurement/internal/j3;

.field final synthetic b:Lcom/google/android/gms/measurement/internal/zzkr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzkr;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/k3;->b:Lcom/google/android/gms/measurement/internal/zzkr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final a(J)V
    .registers 10

    .line 1
    new-instance v6, Lcom/google/android/gms/measurement/internal/j3;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/k3;->b:Lcom/google/android/gms/measurement/internal/zzkr;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->x()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->a()J

    move-result-wide v2

    move-object v0, v6

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/j3;-><init>(Lcom/google/android/gms/measurement/internal/k3;JJ)V

    iput-object v6, p0, Lcom/google/android/gms/measurement/internal/k3;->a:Lcom/google/android/gms/measurement/internal/j3;

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/k3;->b:Lcom/google/android/gms/measurement/internal/zzkr;

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzkr;->j(Lcom/google/android/gms/measurement/internal/zzkr;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/k3;->a:Lcom/google/android/gms/measurement/internal/j3;

    const-wide/16 v0, 0x7d0

    .line 3
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method final b()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/k3;->b:Lcom/google/android/gms/measurement/internal/zzkr;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/y0;->c()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/k3;->a:Lcom/google/android/gms/measurement/internal/j3;

    if-eqz v0, :cond_12

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/k3;->b:Lcom/google/android/gms/measurement/internal/zzkr;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzkr;->j(Lcom/google/android/gms/measurement/internal/zzkr;)Landroid/os/Handler;

    move-result-object v1

    .line 2
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_12
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/k3;->b:Lcom/google/android/gms/measurement/internal/zzkr;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->D()Lcom/google/android/gms/measurement/internal/x;

    move-result-object v0

    .line 4
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/x;->q:Lcom/google/android/gms/measurement/internal/zzfh;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzfh;->a(Z)V

    return-void
.end method

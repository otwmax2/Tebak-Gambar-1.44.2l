###### Class com.google.android.gms.measurement.internal.z2 (com.google.android.gms.measurement.internal.z2)
.class final Lcom/google/android/gms/measurement/internal/z2;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@20.1.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic o:Lcom/google/android/gms/measurement/internal/zzeo;

.field final synthetic p:Lcom/google/android/gms/measurement/internal/zzka;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzka;Lcom/google/android/gms/measurement/internal/zzeo;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/z2;->p:Lcom/google/android/gms/measurement/internal/zzka;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/z2;->o:Lcom/google/android/gms/measurement/internal/zzeo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/z2;->p:Lcom/google/android/gms/measurement/internal/zzka;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/z2;->p:Lcom/google/android/gms/measurement/internal/zzka;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/gms/measurement/internal/zzka;->a(Lcom/google/android/gms/measurement/internal/zzka;Z)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/z2;->p:Lcom/google/android/gms/measurement/internal/zzka;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzka;->q:Lcom/google/android/gms/measurement/internal/zzkb;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzkb;->v()Z

    move-result v1

    if-nez v1, :cond_2f

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/z2;->p:Lcom/google/android/gms/measurement/internal/zzka;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzka;->q:Lcom/google/android/gms/measurement/internal/zzkb;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzey;->q()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v1

    const-string v2, "Connected to service"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzew;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/z2;->p:Lcom/google/android/gms/measurement/internal/zzka;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzka;->q:Lcom/google/android/gms/measurement/internal/zzkb;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/z2;->o:Lcom/google/android/gms/measurement/internal/zzeo;

    .line 5
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzkb;->s(Lcom/google/android/gms/measurement/internal/zzeo;)V

    .line 6
    :cond_2f
    monitor-exit v0

    return-void

    :catchall_31
    move-exception v1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_31

    throw v1
.end method

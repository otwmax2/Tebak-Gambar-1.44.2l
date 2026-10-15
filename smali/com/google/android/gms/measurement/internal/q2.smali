###### Class com.google.android.gms.measurement.internal.q2 (com.google.android.gms.measurement.internal.q2)
.class final Lcom/google/android/gms/measurement/internal/q2;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@20.1.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic o:Lcom/google/android/gms/measurement/internal/zzav;

.field final synthetic p:Ljava/lang/String;

.field final synthetic q:Lcom/google/android/gms/internal/measurement/zzcf;

.field final synthetic r:Lcom/google/android/gms/measurement/internal/zzkb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzkb;Lcom/google/android/gms/measurement/internal/zzav;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzcf;)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/q2;->r:Lcom/google/android/gms/measurement/internal/zzkb;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/q2;->o:Lcom/google/android/gms/measurement/internal/zzav;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/q2;->p:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/q2;->q:Lcom/google/android/gms/internal/measurement/zzcf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    const/4 v0, 0x0

    .line 1
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/q2;->r:Lcom/google/android/gms/measurement/internal/zzkb;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzkb;->F(Lcom/google/android/gms/measurement/internal/zzkb;)Lcom/google/android/gms/measurement/internal/zzeo;

    move-result-object v2

    if-nez v2, :cond_26

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzey;->m()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v1

    const-string v2, "Discarding data. Failed to send event to service to bundle"

    .line 3
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzew;->a(Ljava/lang/String;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_18} :catch_3a
    .catchall {:try_start_1 .. :try_end_18} :catchall_38

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/q2;->r:Lcom/google/android/gms/measurement/internal/zzkb;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 4
    :goto_1c
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgi;->L()Lcom/google/android/gms/measurement/internal/zzlp;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/q2;->q:Lcom/google/android/gms/internal/measurement/zzcf;

    .line 5
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzlp;->E(Lcom/google/android/gms/internal/measurement/zzcf;[B)V

    return-void

    :cond_26
    :try_start_26
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/q2;->o:Lcom/google/android/gms/measurement/internal/zzav;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/q2;->p:Ljava/lang/String;

    .line 6
    invoke-interface {v2, v1, v3}, Lcom/google/android/gms/measurement/internal/zzeo;->q6(Lcom/google/android/gms/measurement/internal/zzav;Ljava/lang/String;)[B

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/q2;->r:Lcom/google/android/gms/measurement/internal/zzkb;

    .line 7
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzkb;->L(Lcom/google/android/gms/measurement/internal/zzkb;)V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_33} :catch_3a
    .catchall {:try_start_26 .. :try_end_33} :catchall_38

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/q2;->r:Lcom/google/android/gms/measurement/internal/zzkb;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    goto :goto_1c

    :catchall_38
    move-exception v1

    goto :goto_51

    :catch_3a
    move-exception v1

    .line 8
    :try_start_3b
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/q2;->r:Lcom/google/android/gms/measurement/internal/zzkb;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 9
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v2

    .line 10
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzey;->m()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v2

    const-string v3, "Failed to send event to the service to bundle"

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzew;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4c
    .catchall {:try_start_3b .. :try_end_4c} :catchall_38

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/q2;->r:Lcom/google/android/gms/measurement/internal/zzkb;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    goto :goto_1c

    .line 11
    :goto_51
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/q2;->r:Lcom/google/android/gms/measurement/internal/zzkb;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 12
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgi;->L()Lcom/google/android/gms/measurement/internal/zzlp;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/q2;->q:Lcom/google/android/gms/internal/measurement/zzcf;

    .line 13
    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/measurement/internal/zzlp;->E(Lcom/google/android/gms/internal/measurement/zzcf;[B)V

    .line 14
    goto :goto_60

    :goto_5f
    throw v1

    :goto_60
    goto :goto_5f
.end method

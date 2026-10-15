###### Class com.google.android.gms.measurement.internal.l2 (com.google.android.gms.measurement.internal.l2)
.class final Lcom/google/android/gms/measurement/internal/l2;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@20.1.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic o:Lcom/google/android/gms/measurement/internal/zzp;

.field final synthetic p:Lcom/google/android/gms/internal/measurement/zzcf;

.field final synthetic q:Lcom/google/android/gms/measurement/internal/zzkb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzkb;Lcom/google/android/gms/measurement/internal/zzp;Lcom/google/android/gms/internal/measurement/zzcf;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/l2;->q:Lcom/google/android/gms/measurement/internal/zzkb;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/l2;->o:Lcom/google/android/gms/measurement/internal/zzp;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/l2;->p:Lcom/google/android/gms/internal/measurement/zzcf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    const-string v0, "Failed to get app instance id"

    const/4 v1, 0x0

    .line 1
    :try_start_3
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/l2;->q:Lcom/google/android/gms/measurement/internal/zzkb;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgi;->D()Lcom/google/android/gms/measurement/internal/x;

    move-result-object v2

    .line 2
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/x;->l()Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v2

    .line 3
    sget-object v3, Lcom/google/android/gms/measurement/internal/zzag;->q:Lcom/google/android/gms/measurement/internal/zzag;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzah;->i(Lcom/google/android/gms/measurement/internal/zzag;)Z

    move-result v2

    if-nez v2, :cond_4e

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/l2;->q:Lcom/google/android/gms/measurement/internal/zzkb;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 4
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v2

    .line 5
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzey;->s()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v2

    const-string v3, "Analytics storage consent denied; will not get app instance id"

    .line 6
    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzew;->a(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/l2;->q:Lcom/google/android/gms/measurement/internal/zzkb;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 7
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgi;->G()Lcom/google/android/gms/measurement/internal/zzin;

    move-result-object v2

    .line 8
    invoke-virtual {v2, v1}, Lcom/google/android/gms/measurement/internal/zzin;->A(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/l2;->q:Lcom/google/android/gms/measurement/internal/zzkb;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 9
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgi;->D()Lcom/google/android/gms/measurement/internal/x;

    move-result-object v2

    .line 10
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/x;->g:Lcom/google/android/gms/measurement/internal/zzfm;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/measurement/internal/zzfm;->b(Ljava/lang/String;)V
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_40} :catch_99
    .catchall {:try_start_3 .. :try_end_40} :catchall_97

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/l2;->q:Lcom/google/android/gms/measurement/internal/zzkb;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 11
    :goto_44
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->L()Lcom/google/android/gms/measurement/internal/zzlp;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/l2;->p:Lcom/google/android/gms/internal/measurement/zzcf;

    .line 12
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzlp;->H(Lcom/google/android/gms/internal/measurement/zzcf;Ljava/lang/String;)V

    return-void

    :cond_4e
    :try_start_4e
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/l2;->q:Lcom/google/android/gms/measurement/internal/zzkb;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzkb;->F(Lcom/google/android/gms/measurement/internal/zzkb;)Lcom/google/android/gms/measurement/internal/zzeo;

    move-result-object v3

    if-nez v3, :cond_68

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 13
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v2

    .line 14
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzey;->m()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/measurement/internal/zzew;->a(Ljava/lang/String;)V
    :try_end_63
    .catch Landroid/os/RemoteException; {:try_start_4e .. :try_end_63} :catch_99
    .catchall {:try_start_4e .. :try_end_63} :catchall_97

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/l2;->q:Lcom/google/android/gms/measurement/internal/zzkb;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    goto :goto_44

    .line 15
    :cond_68
    :try_start_68
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/l2;->o:Lcom/google/android/gms/measurement/internal/zzp;

    .line 16
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/l2;->o:Lcom/google/android/gms/measurement/internal/zzp;

    .line 17
    invoke-interface {v3, v2}, Lcom/google/android/gms/measurement/internal/zzeo;->i3(Lcom/google/android/gms/measurement/internal/zzp;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8d

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/l2;->q:Lcom/google/android/gms/measurement/internal/zzkb;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 18
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgi;->G()Lcom/google/android/gms/measurement/internal/zzin;

    move-result-object v2

    .line 19
    invoke-virtual {v2, v1}, Lcom/google/android/gms/measurement/internal/zzin;->A(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/l2;->q:Lcom/google/android/gms/measurement/internal/zzkb;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 20
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgi;->D()Lcom/google/android/gms/measurement/internal/x;

    move-result-object v2

    .line 21
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/x;->g:Lcom/google/android/gms/measurement/internal/zzfm;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/measurement/internal/zzfm;->b(Ljava/lang/String;)V

    :cond_8d
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/l2;->q:Lcom/google/android/gms/measurement/internal/zzkb;

    .line 22
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzkb;->L(Lcom/google/android/gms/measurement/internal/zzkb;)V
    :try_end_92
    .catch Landroid/os/RemoteException; {:try_start_68 .. :try_end_92} :catch_99
    .catchall {:try_start_68 .. :try_end_92} :catchall_97

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/l2;->q:Lcom/google/android/gms/measurement/internal/zzkb;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    goto :goto_44

    :catchall_97
    move-exception v0

    goto :goto_ae

    :catch_99
    move-exception v2

    .line 23
    :try_start_9a
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/l2;->q:Lcom/google/android/gms/measurement/internal/zzkb;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 24
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v3

    .line 25
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzey;->m()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Lcom/google/android/gms/measurement/internal/zzew;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_a9
    .catchall {:try_start_9a .. :try_end_a9} :catchall_97

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/l2;->q:Lcom/google/android/gms/measurement/internal/zzkb;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    goto :goto_44

    .line 26
    :goto_ae
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/l2;->q:Lcom/google/android/gms/measurement/internal/zzkb;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 27
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgi;->L()Lcom/google/android/gms/measurement/internal/zzlp;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/l2;->p:Lcom/google/android/gms/internal/measurement/zzcf;

    .line 28
    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzlp;->H(Lcom/google/android/gms/internal/measurement/zzcf;Ljava/lang/String;)V

    .line 29
    goto :goto_bd

    :goto_bc
    throw v0

    :goto_bd
    goto :goto_bc
.end method

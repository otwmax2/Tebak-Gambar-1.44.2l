###### Class com.google.android.gms.internal.ads.zzflt (com.google.android.gms.internal.ads.zzflt)
.class final Lcom/google/android/gms/internal/ads/zzflt;
.super Lcom/google/android/gms/internal/ads/zzfml;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field final synthetic p:Lcom/google/android/gms/internal/ads/zzflz;

.field final synthetic q:Lcom/google/android/gms/internal/ads/zzfmc;

.field final synthetic r:Lcom/google/android/gms/tasks/TaskCompletionSource;

.field final synthetic s:Lcom/google/android/gms/internal/ads/zzflx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzflx;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/internal/ads/zzflz;Lcom/google/android/gms/internal/ads/zzfmc;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .registers 6

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzflt;->s:Lcom/google/android/gms/internal/ads/zzflx;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzflt;->p:Lcom/google/android/gms/internal/ads/zzflz;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzflt;->q:Lcom/google/android/gms/internal/ads/zzfmc;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzflt;->r:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzfml;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .registers 9

    const/4 v0, 0x0

    .line 1
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzflt;->s:Lcom/google/android/gms/internal/ads/zzflx;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzflx;->a:Lcom/google/android/gms/internal/ads/zzfmv;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfmv;->e()Landroid/os/IInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzflt;->s:Lcom/google/android/gms/internal/ads/zzflx;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzflx;->b(Lcom/google/android/gms/internal/ads/zzflx;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzflt;->p:Lcom/google/android/gms/internal/ads/zzflz;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzflx;->b(Lcom/google/android/gms/internal/ads/zzflx;)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Landroid/os/Bundle;

    .line 2
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v6, "windowToken"

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzflz;->e()Landroid/os/IBinder;

    move-result-object v7

    .line 3
    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v6, "adFieldEnifd"

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzflz;->f()Ljava/lang/String;

    move-result-object v7

    .line 4
    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "layoutGravity"

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzflz;->c()I

    move-result v7

    .line 5
    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v6, "layoutVerticalMargin"

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzflz;->a()F

    move-result v7

    .line 6
    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v6, "displayMode"

    .line 7
    invoke-virtual {v5, v6, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v6, "windowWidthPx"

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzflz;->d()I

    move-result v7

    .line 8
    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v6, "stableSessionToken"

    .line 9
    invoke-virtual {v5, v6, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v6, "callerPackage"

    .line 10
    invoke-virtual {v5, v6, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzflz;->g()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_65

    const-string v2, "appId"

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzflz;->g()Ljava/lang/String;

    move-result-object v4

    .line 11
    invoke-virtual {v5, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_65
    new-instance v2, Lcom/google/android/gms/internal/ads/zzflw;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzflt;->s:Lcom/google/android/gms/internal/ads/zzflx;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzflt;->q:Lcom/google/android/gms/internal/ads/zzfmc;

    .line 12
    invoke-direct {v2, v4, v6}, Lcom/google/android/gms/internal/ads/zzflw;-><init>(Lcom/google/android/gms/internal/ads/zzflx;Lcom/google/android/gms/internal/ads/zzfmc;)V

    .line 13
    invoke-interface {v1, v3, v5, v2}, Lcom/google/android/gms/internal/ads/zzfmh;->M9(Ljava/lang/String;Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/zzfmj;)V
    :try_end_71
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_71} :catch_72

    return-void

    :catch_72
    move-exception v1

    .line 14
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzflx;->a()Lcom/google/android/gms/internal/ads/zzfmk;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzflt;->s:Lcom/google/android/gms/internal/ads/zzflx;

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzflx;->b(Lcom/google/android/gms/internal/ads/zzflx;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const-string v0, "show overlay display from: %s"

    invoke-virtual {v2, v1, v0, v3}, Lcom/google/android/gms/internal/ads/zzfmk;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzflt;->r:Lcom/google/android/gms/tasks/TaskCompletionSource;

    new-instance v2, Ljava/lang/RuntimeException;

    .line 15
    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->d(Ljava/lang/Exception;)Z

    return-void
.end method

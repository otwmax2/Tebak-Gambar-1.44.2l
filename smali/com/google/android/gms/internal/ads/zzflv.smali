###### Class com.google.android.gms.internal.ads.zzflv (com.google.android.gms.internal.ads.zzflv)
.class final Lcom/google/android/gms/internal/ads/zzflv;
.super Lcom/google/android/gms/internal/ads/zzfml;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field final synthetic p:Lcom/google/android/gms/internal/ads/zzfme;

.field final synthetic q:I

.field final synthetic r:Lcom/google/android/gms/internal/ads/zzfmc;

.field final synthetic s:Lcom/google/android/gms/tasks/TaskCompletionSource;

.field final synthetic t:Lcom/google/android/gms/internal/ads/zzflx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzflx;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/internal/ads/zzfme;ILcom/google/android/gms/internal/ads/zzfmc;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .registers 7

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzflv;->t:Lcom/google/android/gms/internal/ads/zzflx;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzflv;->p:Lcom/google/android/gms/internal/ads/zzfme;

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzflv;->q:I

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzflv;->r:Lcom/google/android/gms/internal/ads/zzfmc;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzflv;->s:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzfml;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .registers 8

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzflv;->t:Lcom/google/android/gms/internal/ads/zzflx;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzflx;->a:Lcom/google/android/gms/internal/ads/zzfmv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfmv;->e()Landroid/os/IInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzflv;->p:Lcom/google/android/gms/internal/ads/zzfme;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzflv;->t:Lcom/google/android/gms/internal/ads/zzflx;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzflx;->b(Lcom/google/android/gms/internal/ads/zzflx;)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzflv;->q:I

    new-instance v4, Landroid/os/Bundle;

    .line 2
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "sessionToken"

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfme;->b()Ljava/lang/String;

    move-result-object v6

    .line 3
    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "displayMode"

    .line 4
    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "callerPackage"

    .line 5
    invoke-virtual {v4, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "appId"

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfme;->a()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-virtual {v4, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzflw;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzflv;->t:Lcom/google/android/gms/internal/ads/zzflx;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzflv;->r:Lcom/google/android/gms/internal/ads/zzfmc;

    .line 7
    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzflw;-><init>(Lcom/google/android/gms/internal/ads/zzflx;Lcom/google/android/gms/internal/ads/zzfmc;)V

    .line 8
    invoke-interface {v0, v4, v1}, Lcom/google/android/gms/internal/ads/zzfmh;->z5(Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/zzfmj;)V
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3f} :catch_40

    return-void

    :catch_40
    move-exception v0

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzflx;->a()Lcom/google/android/gms/internal/ads/zzfmk;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzflv;->q:I

    .line 10
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzflv;->t:Lcom/google/android/gms/internal/ads/zzflx;

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzflx;->b(Lcom/google/android/gms/internal/ads/zzflx;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "switchDisplayMode overlay display to %d from: %s"

    .line 11
    invoke-virtual {v1, v0, v3, v2}, Lcom/google/android/gms/internal/ads/zzfmk;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzflv;->s:Lcom/google/android/gms/tasks/TaskCompletionSource;

    new-instance v2, Ljava/lang/RuntimeException;

    .line 12
    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->d(Ljava/lang/Exception;)Z

    return-void
.end method

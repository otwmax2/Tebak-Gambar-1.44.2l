###### Class com.google.android.gms.internal.ads.zzaqv (com.google.android.gms.internal.ads.zzaqv)
.class final Lcom/google/android/gms/internal/ads/zzaqv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic o:I

.field final synthetic p:Lcom/google/android/gms/internal/ads/zzaqx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzaqx;IZ)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqv;->p:Lcom/google/android/gms/internal/ads/zzaqx;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzaqv;->o:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqv;->p:Lcom/google/android/gms/internal/ads/zzaqx;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaqv;->o:I

    if-lez v1, :cond_c

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    :try_start_9
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_c} :catch_c

    :catch_c
    :cond_c
    :try_start_c
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaqx;->a:Landroid/content/Context;

    .line 2
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaqx;->a:Landroid/content/Context;

    .line 3
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 4
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzaqx;->a:Landroid/content/Context;

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzfhx;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzans;

    move-result-object v0
    :try_end_2d
    .catchall {:try_start_c .. :try_end_2d} :catchall_2e

    goto :goto_2f

    :catchall_2e
    const/4 v0, 0x0

    :goto_2f
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaqv;->p:Lcom/google/android/gms/internal/ads/zzaqx;

    .line 7
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzaqx;->m(Lcom/google/android/gms/internal/ads/zzaqx;Lcom/google/android/gms/internal/ads/zzans;)V

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaqv;->o:I

    const/4 v2, 0x4

    if-ge v1, v2, :cond_76

    if-nez v0, :cond_3c

    goto :goto_6d

    .line 8
    :cond_3c
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzans;->t0()Z

    move-result v1

    if-eqz v1, :cond_6d

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzans;->I0()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0000000000000000000000000000000000000000000000000000000000000000"

    .line 9
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6d

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzans;->u0()Z

    move-result v1

    if-eqz v1, :cond_6d

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzans;->G0()Lcom/google/android/gms/internal/ads/zzaob;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaob;->L()Z

    move-result v1

    if-eqz v1, :cond_6d

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzans;->G0()Lcom/google/android/gms/internal/ads/zzaob;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaob;->I()J

    move-result-wide v0

    const-wide/16 v2, -0x2

    cmp-long v4, v0, v2

    if-eqz v4, :cond_6d

    goto :goto_76

    .line 12
    :cond_6d
    :goto_6d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqv;->p:Lcom/google/android/gms/internal/ads/zzaqx;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaqv;->o:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzaqx;->o(IZ)V

    :cond_76
    :goto_76
    return-void
.end method

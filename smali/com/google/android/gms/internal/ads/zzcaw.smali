###### Class com.google.android.gms.internal.ads.zzcaw (com.google.android.gms.internal.ads.zzcaw)
.class final Lcom/google/android/gms/internal/ads/zzcaw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic o:Z

.field final synthetic p:Lcom/google/android/gms/internal/ads/zzcax;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcax;Z)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcaw;->p:Lcom/google/android/gms/internal/ads/zzcax;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzcaw;->o:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcaw;->p:Lcom/google/android/gms/internal/ads/zzcax;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "isVisible"

    aput-object v3, v1, v2

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzcaw;->o:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "windowVisibilityChanged"

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzcax;->w(Lcom/google/android/gms/internal/ads/zzcax;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

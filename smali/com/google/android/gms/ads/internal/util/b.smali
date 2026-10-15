###### Class com.google.android.gms.ads.internal.util.b (com.google.android.gms.ads.internal.util.b)
.class final Lcom/google/android/gms/ads/internal/util/b;
.super Lcom/google/android/gms/ads/internal/client/zzcz;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field final synthetic o:Landroid/content/Context;

.field final synthetic p:Lcom/google/android/gms/ads/internal/util/zzaw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/util/zzaw;Landroid/content/Context;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/util/b;->p:Lcom/google/android/gms/ads/internal/util/zzaw;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/util/b;->o:Landroid/content/Context;

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/client/zzcz;-><init>()V

    return-void
.end method


# virtual methods
.method public final Q5(Lcom/google/android/gms/ads/internal/client/zze;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    .line 1
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/b;->p:Lcom/google/android/gms/ads/internal/util/zzaw;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/b;->o:Landroid/content/Context;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/client/zze;->p:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2, v2}, Lcom/google/android/gms/ads/internal/util/zzaw;->i(Landroid/content/Context;Ljava/lang/String;ZZ)V

    return-void
.end method

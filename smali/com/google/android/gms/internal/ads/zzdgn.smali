###### Class com.google.android.gms.internal.ads.zzdgn (com.google.android.gms.internal.ads.zzdgn)
.class public Lcom/google/android/gms/internal/ads/zzdgn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field protected final a:Lcom/google/android/gms/internal/ads/zzeyc;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzeyc;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdgn;->a:Lcom/google/android/gms/internal/ads/zzeyc;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/gms/internal/ads/zzeza;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgn;->a:Lcom/google/android/gms/internal/ads/zzeyc;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzeyc;->W:Lcom/google/android/gms/internal/ads/zzeza;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    const-string v0, ""

    return-object v0
.end method

.method public c()Lorg/json/JSONObject;
    .registers 2

    const/4 v0, 0x0

    throw v0
.end method

.method public d()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgn;->a:Lcom/google/android/gms/internal/ads/zzeyc;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzeyc;->U:Z

    return v0
.end method

.method public e()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgn;->a:Lcom/google/android/gms/internal/ads/zzeyc;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzeyc;->L:Z

    return v0
.end method

.method public f()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgn;->a:Lcom/google/android/gms/internal/ads/zzeyc;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzeyc;->K:Z

    return v0
.end method

.method public g()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

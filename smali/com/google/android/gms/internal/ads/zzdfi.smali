###### Class com.google.android.gms.internal.ads.zzdfi (com.google.android.gms.internal.ads.zzdfi)
.class public final Lcom/google/android/gms/internal/ads/zzdfi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgwy;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzdfh;

.field private final b:Lcom/google/android/gms/internal/ads/zzgxl;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdfh;Lcom/google/android/gms/internal/ads/zzgxl;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdfi;->a:Lcom/google/android/gms/internal/ads/zzdfh;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdfi;->b:Lcom/google/android/gms/internal/ads/zzgxl;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdfi;->b:Lcom/google/android/gms/internal/ads/zzgxl;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdfk;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdfk;->a()Lcom/google/android/gms/internal/ads/zzdgn;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdgn;->c()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

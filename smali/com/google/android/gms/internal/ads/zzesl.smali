###### Class com.google.android.gms.internal.ads.zzesl (com.google.android.gms.internal.ads.zzesl)
.class public final Lcom/google/android/gms/internal/ads/zzesl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgwy;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzesh;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzesh;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzesl;->a:Lcom/google/android/gms/internal/ads/zzesh;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Boolean;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzesl;->a:Lcom/google/android/gms/internal/ads/zzesh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzesh;->h()Z

    move-result v0

    .line 2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzesl;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

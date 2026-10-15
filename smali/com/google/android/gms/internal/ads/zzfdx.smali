###### Class com.google.android.gms.internal.ads.zzfdx (com.google.android.gms.internal.ads.zzfdx)
.class public final Lcom/google/android/gms/internal/ads/zzfdx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfdk;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzfdu;

.field private final b:Lcom/google/android/gms/internal/ads/zzfds;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfdu;Lcom/google/android/gms/internal/ads/zzfds;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfdx;->a:Lcom/google/android/gms/internal/ads/zzfdu;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfdx;->b:Lcom/google/android/gms/internal/ads/zzfds;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/zzfdj;)V
    .registers 2

    return-void
.end method

.method public final b(Lcom/google/android/gms/internal/ads/zzfdj;)Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfdx;->a:Lcom/google/android/gms/internal/ads/zzfdu;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfdj;->j()Ljava/util/Map;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfdx;->b:Lcom/google/android/gms/internal/ads/zzfds;

    .line 2
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzfds;->a(Ljava/util/Map;)V

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfdu;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

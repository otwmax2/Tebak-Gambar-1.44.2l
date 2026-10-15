###### Class com.google.android.gms.internal.ads.zzbkt (com.google.android.gms.internal.ads.zzbkt)
.class final Lcom/google/android/gms/internal/ads/zzbkt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbhp;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzbhp;

.field final synthetic b:Lcom/google/android/gms/internal/ads/zzbku;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbku;Lcom/google/android/gms/internal/ads/zzbhp;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbkt;->b:Lcom/google/android/gms/internal/ads/zzbku;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbkt;->a:Lcom/google/android/gms/internal/ads/zzbhp;

    return-void
.end method

.method static bridge synthetic b(Lcom/google/android/gms/internal/ads/zzbkt;)Lcom/google/android/gms/internal/ads/zzbhp;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbkt;->a:Lcom/google/android/gms/internal/ads/zzbhp;

    return-object p0
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/util/Map;)V
    .registers 4

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzcei;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbkt;->a:Lcom/google/android/gms/internal/ads/zzbhp;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbkt;->b:Lcom/google/android/gms/internal/ads/zzbku;

    .line 2
    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzbhp;->a(Ljava/lang/Object;Ljava/util/Map;)V

    return-void
.end method

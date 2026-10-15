###### Class com.google.android.gms.internal.ads.zzbry (com.google.android.gms.internal.ads.zzbry)
.class public final Lcom/google/android/gms/internal/ads/zzbry;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@22.0.0"


# instance fields
.field private final a:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbry;->a:Ljava/util/Map;

    return-void
.end method

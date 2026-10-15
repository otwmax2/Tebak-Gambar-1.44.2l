###### Class com.google.android.gms.internal.ads.zzfax (com.google.android.gms.internal.ads.zzfax)
.class public final Lcom/google/android/gms/internal/ads/zzfax;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final a:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfax;->a:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/zzfan;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzfaf;Lcom/google/android/gms/internal/ads/zzfbd;)Lcom/google/android/gms/internal/ads/zzfaw;
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfax;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfaw;

    if-nez v0, :cond_23

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfak;

    .line 2
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzfaq;->V3(Lcom/google/android/gms/internal/ads/zzfan;Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzfaq;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/zzfak;-><init>(Lcom/google/android/gms/internal/ads/zzfaq;)V

    new-instance p2, Lcom/google/android/gms/internal/ads/zzfbf;

    .line 3
    invoke-direct {p2, v0, p3, p4}, Lcom/google/android/gms/internal/ads/zzfbf;-><init>(Lcom/google/android/gms/internal/ads/zzfaj;Lcom/google/android/gms/internal/ads/zzfaf;Lcom/google/android/gms/internal/ads/zzfbd;)V

    new-instance p3, Lcom/google/android/gms/internal/ads/zzfaw;

    invoke-direct {p3, v0, p2}, Lcom/google/android/gms/internal/ads/zzfaw;-><init>(Lcom/google/android/gms/internal/ads/zzfaj;Lcom/google/android/gms/internal/ads/zzfbf;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzfax;->a:Ljava/util/HashMap;

    .line 4
    invoke-virtual {p2, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p3

    :cond_23
    return-object v0
.end method

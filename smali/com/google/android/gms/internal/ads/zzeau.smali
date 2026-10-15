###### Class com.google.android.gms.internal.ads.zzeau (com.google.android.gms.internal.ads.zzeau)
.class public final Lcom/google/android/gms/internal/ads/zzeau;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeat;


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/zzeat;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field private final b:Lcom/google/android/gms/internal/ads/zzfnj;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzeat;Lcom/google/android/gms/internal/ads/zzfnj;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeau;->a:Lcom/google/android/gms/internal/ads/zzeat;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeau;->b:Lcom/google/android/gms/internal/ads/zzfnj;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/zzeyo;Lcom/google/android/gms/internal/ads/zzeyc;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeau;->a:Lcom/google/android/gms/internal/ads/zzeat;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzeat;->a(Lcom/google/android/gms/internal/ads/zzeyo;Lcom/google/android/gms/internal/ads/zzeyc;)Z

    move-result p1

    return p1
.end method

.method public final b(Lcom/google/android/gms/internal/ads/zzeyo;Lcom/google/android/gms/internal/ads/zzeyc;)Lcom/google/android/gms/internal/ads/zzfut;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeau;->a:Lcom/google/android/gms/internal/ads/zzeat;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzeat;->b(Lcom/google/android/gms/internal/ads/zzeyo;Lcom/google/android/gms/internal/ads/zzeyc;)Lcom/google/android/gms/internal/ads/zzfut;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzeau;->b:Lcom/google/android/gms/internal/ads/zzfnj;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbzn;->a:Lcom/google/android/gms/internal/ads/zzfuu;

    .line 2
    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzfuj;->l(Lcom/google/android/gms/internal/ads/zzfut;Lcom/google/android/gms/internal/ads/zzfnj;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzfut;

    move-result-object p1

    return-object p1
.end method

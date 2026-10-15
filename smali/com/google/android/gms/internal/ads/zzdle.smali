###### Class com.google.android.gms.internal.ads.zzdle (com.google.android.gms.internal.ads.zzdle)
.class final Lcom/google/android/gms/internal/ads/zzdle;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbhp;


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/google/android/gms/internal/ads/zzbhp;

.field final synthetic d:Lcom/google/android/gms/internal/ads/zzdlf;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdlf;Ljava/lang/ref/WeakReference;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbhp;Lcom/google/android/gms/internal/ads/zzdld;)V
    .registers 6

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdle;->d:Lcom/google/android/gms/internal/ads/zzdlf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdle;->a:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdle;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdle;->c:Lcom/google/android/gms/internal/ads/zzbhp;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/util/Map;)V
    .registers 4

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdle;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_10

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdle;->d:Lcom/google/android/gms/internal/ads/zzdlf;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdle;->b:Ljava/lang/String;

    .line 2
    invoke-virtual {p1, p2, p0}, Lcom/google/android/gms/internal/ads/zzdlf;->k(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbhp;)V

    return-void

    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdle;->c:Lcom/google/android/gms/internal/ads/zzbhp;

    .line 3
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbhp;->a(Ljava/lang/Object;Ljava/util/Map;)V

    return-void
.end method

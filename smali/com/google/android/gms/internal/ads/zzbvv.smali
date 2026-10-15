###### Class com.google.android.gms.internal.ads.zzbvv (com.google.android.gms.internal.ads.zzbvv)
.class final Lcom/google/android/gms/internal/ads/zzbvv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfuf;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/zzfut;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbvw;Lcom/google/android/gms/internal/ads/zzfut;)V
    .registers 3

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbvv;->a:Lcom/google/android/gms/internal/ads/zzfut;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .registers 3

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbvw;->e()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbvv;->a:Lcom/google/android/gms/internal/ads/zzfut;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final bridge synthetic c(Ljava/lang/Object;)V
    .registers 3

    .line 1
    check-cast p1, Ljava/lang/Void;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbvw;->e()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbvv;->a:Lcom/google/android/gms/internal/ads/zzfut;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
